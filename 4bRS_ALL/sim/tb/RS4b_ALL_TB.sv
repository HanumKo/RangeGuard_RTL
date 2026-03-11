`timescale 1ns/1ps

module tb_RS4b_ALL();

    // ----------------------------
    // 1) System Signals
    // ----------------------------
    logic        aclk;
    logic        areset_n;

    logic [7:0]  data_i;
    logic        write_enable_i;
    logic [31:0] addr_i;

    logic [15:0] weight_orig [15:0]; 
    logic [3:0]  parity_gen  [3:0];  

    logic [15:0] weight_rx   [15:0]; 
    logic [3:0]  parity_rx   [3:0];  

    logic [15:0] weight_rec  [15:0]; 

    // ----------------------------
    // 2) Module Instantiation
    // ----------------------------
    RS4b_ENCODER u_encoder (
        .aclk           (aclk),
        .areset_n       (areset_n),
        .data_i         (data_i),
        .write_enable_i (write_enable_i),
        .addr_i         (addr_i),
        .weight_i       (weight_orig),
        .p_o            (parity_gen)
    );

    RS4b_DECODER u_decoder (
        .aclk           (aclk),
        .areset_n       (areset_n),
        .data_i         (data_i),
        .write_enable_i (write_enable_i),
        .addr_i         (addr_i),
        .weight_i       (weight_rx),
        .pp             (parity_rx),
        .weight_o       (weight_rec)
    );

    // ----------------------------
    // 3) Clock Generation
    // ----------------------------
    initial begin
        aclk = 1'b0;
        forever #5 aclk = ~aclk; // 100MHz (10ns period)
    end

    // ----------------------------
    // 4) Helper Tasks
    // ----------------------------
    task automatic write_csr(input [31:0] addr, input [7:0] data);
        begin
            @(posedge aclk);
            write_enable_i <= 1'b1;
            addr_i         <= addr;
            data_i         <= data;
            @(posedge aclk);
            write_enable_i <= 1'b0;
        end
    endtask

    // 에러 주입 및 검증 태스크
    task automatic test_injection(
        input string test_name,
        input int err_idx1,
        input int err_idx2,
        input bit is_double
    );
        int err_cnt = 0;
        begin
            // 1. 수신 데이터 초기화 (원본과 동일하게)
            weight_rx = weight_orig;
            parity_rx = parity_gen;

            // 2. 에러 주입
            // 원래 16'h4000 (RID 2) 인 데이터를 16'h3F00 (RID 0) 또는 16'h4100 (RID 3)로 변조
            if (err_idx1 >= 0) weight_rx[err_idx1] = 16'h3F00; 
            if (is_double && err_idx2 >= 0) weight_rx[err_idx2] = 16'h4100;

            // 3. 파이프라인 레이턴시 대기
            #50;

            // 4. 결과 검증
            for (int i = 0; i < 16; i++) begin
                if (weight_rec[i] !== weight_orig[i]) begin
                    err_cnt++;
                    $display("      -> Mismatch at index %0d: expected %4h, got %4h", i, weight_orig[i], weight_rec[i]);
                end
            end

            if (err_cnt == 0)
                $display("  [PASS] %s", test_name);
            else
                $display("  [FAIL] %s (Total Mismatches: %0d)", test_name, err_cnt);
        end
    endtask

    // ----------------------------
    // 5) Test Sequence
    // ----------------------------
    initial begin
        // 초기화
        areset_n       = 1'b0;
        write_enable_i = 1'b0;
        data_i         = 8'h0;
        addr_i         = 32'h0;

        for (int i = 0; i < 16; i++) begin
            weight_orig[i] = 16'h0000;
            weight_rx[i]   = 16'h0000;
        end
        for (int i = 0; i < 4; i++) parity_rx[i] = 4'h0;

        #20 areset_n = 1'b1;
        #10;

        // CSR 설정
        write_csr(32'h00, 8'd127);
        write_csr(32'h01, 8'd128);
        write_csr(32'h02, 8'd129);

        write_csr(32'h20, 8'd126);
        write_csr(32'h21, 8'd127);
        write_csr(32'h22, 8'd128);
        write_csr(32'h23, 8'd130);
        #20;

        // 모든 베이스 데이터를 16'h4000 (Exponent 128 -> RID 2)로 고정
        for (int i = 0; i < 16; i++) weight_orig[i] = 16'h4000;
        #10;

        $display("\n==================================================");
        $display("[STAGE 1] All Single Symbol Errors (16 Cases)");
        $display("==================================================");
        for (int i = 0; i < 16; i++) begin
            test_injection($sformatf("Single Error at index %0d", i), i, -1, 0);
        end

        $display("\n==================================================");
        $display("[STAGE 2] All Double Symbol Errors (120 Cases)");
        $display("==================================================");
        for (int i = 0; i < 15; i++) begin
            for (int j = i + 1; j < 16; j++) begin
                test_injection($sformatf("Double Error at index %0d & %0d", i, j), i, j, 1);
            end
        end

        $display("==================================================\n");
        #20 $finish;
    end

endmodule