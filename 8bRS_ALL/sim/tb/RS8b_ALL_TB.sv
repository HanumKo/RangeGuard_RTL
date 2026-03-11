`timescale 1ns/1ps

module tb_RS8b_INTEGRATED;
    logic        aclk;
    logic        areset_n;

    logic [7:0]  csr_data;
    logic        csr_we;
    logic [31:0] csr_addr;

    logic [15:0] weight_in  [15:0];
    logic [15:0] weight_to_dec [15:0];
    logic [7:0]  parity_gen [1:0];
    
    logic [3:0]  error_loc_o;
    logic [1:0]  decode_res_o;
    logic [15:0] weight_out [15:0];

    RS8b_ENCODER encoder_inst (
        .aclk           (aclk),
        .areset_n       (areset_n),
        .data_i         (csr_data),
        .write_enable_i (csr_we),
        .addr_i         (csr_addr),
        .weight_i       (weight_in),
        .p_o            (parity_gen)
    );

    RS8b_DECODER decoder_inst (
        .aclk           (aclk),
        .areset_n       (areset_n),
        .data_i         (csr_data),
        .write_enable_i (csr_we),
        .addr_i         (csr_addr),
        .weight_i       (weight_to_dec),
        .pp             (parity_gen), 
        .error_loc_o    (error_loc_o),
        .decode_res_o   (decode_res_o),
        .weight_o       (weight_out)
    );

    initial begin
        aclk = 0;
        forever #5 aclk = ~aclk;
    end

    integer pass_count = 0;
    integer fail_count = 0;

    task check_pass_fail(input string case_name, input logic [1:0] expected_res);
        logic data_match;
        data_match = 1;

        for (int i=0; i<16; i++) begin
            if (weight_in[i][14:7] !== weight_out[i][14:7]) begin
                data_match = 0;
            end
        end

        if ((decode_res_o === expected_res) && data_match) begin
            $display("[RESULT] %s : [PASS]", case_name);
            pass_count++;
        end else begin
            $display("[RESULT] %s : [FAIL]", case_name);
            if (decode_res_o !== expected_res) 
                $display("  -> Error: Status mismatch (Exp: %b, Got: %b)", expected_res, decode_res_o);
            if (!data_match) 
                $display("  -> Error: Data mismatch between IN and OUT");
            fail_count++;
        end
    endtask

    task sync_weights();
        for (int i=0; i<16; i++) weight_to_dec[i] = weight_in[i];
    endtask

    initial begin
        areset_n = 0; csr_we = 0;
        for (int i=0; i<16; i++) weight_in[i] = {1'b0, 8'd115, 7'h00}; 
        sync_weights();
        #20 areset_n = 1; #20;

        $display("\n=======================================================");
        $display("RS8b ENCODER + DECODER INTEGRATED EXHAUSTIVE TEST");
        $display("=======================================================");

        // 베이스 데이터 설정
        for (int i=0; i<16; i++) weight_in[i] = {1'b0, 8'd122, 7'h00};
        sync_weights();
        #100;
        
        display_status("[Case 0] No Error Injection");
        check_pass_fail("Case 0 (No Error)", 2'b00); // NE 확인

        $display("\n=======================================================");
        $display("[Test Stage 1] All Single Weight Errors (1 weight per symbol)");
        $display("=======================================================");
        for (int i = 0; i < 16; i++) begin
            sync_weights(); // 원본 복구
            weight_to_dec[i] = {1'b0, 8'd135, 7'h00}; // 특정 Weight에 에러 주입
            #100;
            check_pass_fail($sformatf("Single Weight Error at Index %0d", i), 2'b01); // CE 확인
        end

        $display("\n=======================================================");
        $display("[Test Stage 2] All Single Symbol Errors (2 weights in same symbol)");
        $display("=======================================================");
        for (int sym = 0; sym < 8; sym++) begin
            sync_weights(); // 원본 복구
            weight_to_dec[2*sym]   = {1'b0, 8'd135, 7'h00}; // 짝수 인덱스 에러
            weight_to_dec[2*sym+1] = {1'b0, 8'd135, 7'h00}; // 홀수 인덱스 에러
            #100;
            check_pass_fail($sformatf("Single Symbol Error at Symbol %0d (Idx %0d & %0d)", sym, 2*sym, 2*sym+1), 2'b01);
        end

        $display("\n=======================================================");
        $display("FINAL TEST SUMMARY");
        $display("  TOTAL PASS: %0d", pass_count);
        $display("  TOTAL FAIL: %0d", fail_count);
        if (fail_count == 0) $display("  OVERALL STATUS: SUCCESS");
        else                 $display("  OVERALL STATUS: FAILED");
        $display("=======================================================");
        #50 $finish;
    end

    task display_status(input string msg);
        string res_str;
        case (decode_res_o)
            2'b00: res_str = "NE (No Error)";
            2'b01: res_str = "CE (Correctable)";
            2'b10: res_str = "DUE (Uncorrectable)";
            default: res_str = "UNKNOWN";
        endcase

        $display("\n--- %s ---", msg);
        $display("DECODER STATUS: %s | ERROR LOC: %0d", res_str, error_loc_o);
        $write("ENCODER IN (ORG): ");
        for (int i=0; i<16; i++) $write("%3d ", weight_in[i][14:7]);
        $display("");
        $write("DECODER IN (ERR): ");
        for (int i=0; i<16; i++) $write("%3d ", weight_to_dec[i][14:7]);
        $display("");
        $write("DECODER OUT(REC): ");
        for (int i=0; i<16; i++) $write("%3d ", weight_out[i][14:7]);
        $display("");
    endtask

endmodule