`timescale 1ns / 1ps

module tb_RS8b_ENCODER;

    // 시뮬레이션 클럭 및 리셋 신호
    logic        aclk;
    logic        areset_n;

    // CSR(임계값 설정) 인터페이스
    logic [7:0]  data_i;
    logic        write_enable_i;
    logic [31:0] addr_i;

    // 입력 데이터 (16개의 BF16 가중치)
    logic [15:0] weight_i [15:0];

    // 출력 데이터 (2바이트 Parity)
    logic [7:0]  p_o [1:0];

    // ---------------------------------------------------------
    // DUT (Device Under Test) 인스턴스화
    // ---------------------------------------------------------
    RS8b_ENCODER u_dut (
        .aclk           (aclk),
        .areset_n       (areset_n),
        .data_i         (data_i),
        .write_enable_i (write_enable_i),
        .addr_i         (addr_i),
        .weight_i       (weight_i),
        .p_o            (p_o)
    );

    // ---------------------------------------------------------
    // 클럭 생성 (100MHz)
    // ---------------------------------------------------------
    initial begin
        aclk = 0;
        forever #5 aclk = ~aclk;
    end

    // ---------------------------------------------------------
    // 테스트 시나리오
    // ---------------------------------------------------------
    initial begin
        // 초기화
        areset_n       = 0;
        data_i         = 0;
        write_enable_i = 0;
        addr_i         = 0;
        initialize_weights();

        // 1. 리셋 해제 [cite: 3]
        #20;
        areset_n = 1;
        #10;

        $display("--- Test Start: Default Threshold Classification ---");
        // 2. 기본 임계값(117~131) 환경에서 동작 확인 [cite: 3, 6]
        // weight_i의 지수부(bit 14:7)가 분류의 기준이 됨 
        apply_weight_pattern(8'h7F); // 127 (1.0 in BF16) -> th[10] 근처로 분류 예상 [cite: 5, 15]
        #20;
        display_results();

        // 3. CSR을 통한 임계값(Threshold) 변경 테스트 
        $display("--- Test: Updating Threshold via CSR ---");
        update_threshold(4'd0, 8'd100); // th[0]을 117에서 100으로 변경 [cite: 3, 7]
        #10;
        
        // 4. 변경된 임계값에서의 동작 확인
        apply_weight_pattern(8'h65); // 101 (th[0]보다 큼)
        #20;
        display_results();

        $display("--- Simulation Finished ---");
        $finish;
    end

    // ---------------------------------------------------------
    // 헬퍼 태스크 (Tasks)
    // ---------------------------------------------------------

    // 가중치 배열 초기화
    task initialize_weights();
        for (int i = 0; i < 16; i++) begin
            weight_i[i] = 16'h0000;
        end
    endtask

    // 특정 지수 값을 가진 BF16 패턴 입력
    task apply_weight_pattern(logic [7:0] exp);
        for (int i = 0; i < 16; i++) begin
            // BF16: Sign(1) + Exponent(8) + Mantissa(7) 
            weight_i[i] = {1'b0, exp, 7'h00}; 
        end
        $display("[Input] All BF16 exponents set to: %d", exp);
    endtask

    // CSR 쓰기 동작 
    task update_threshold(logic [3:0] index, logic [7:0] value);
        @(posedge aclk);
        write_enable_i = 1;
        addr_i = {24'h0, 4'h0, index}; // TH_BASE(0) + index 
        data_i = value;
        @(posedge aclk);
        write_enable_i = 0;
        $display("[CSR] Updated th[%0d] to %d", index, value);
    endtask

    // 결과 출력
    task display_results();
        $display("[Output] RS Parity P0: 8'h%h, P1: 8'h%h", p_o[0], p_o[1]);
        $display("---------------------------------------------------------");
    endtask

endmodule