`timescale 1ns/1ps

module tb_RS4b_ENCODER();

    // ----------------------------
    // 1) 입력 및 출력 신호 선언
    // ----------------------------
    logic        aclk;
    logic        areset_n;
    logic [7:0]  data_i;
    logic        write_enable_i;
    logic [31:0] addr_i;
    logic [15:0] weight_i [15:0];

    logic [3:0]  p_o [3:0];

    // ----------------------------
    // 2) Unit Under Test (UUT) 인스턴스화
    // ----------------------------
    RS4b_ENCODER uut (
        .aclk           (aclk),
        .areset_n       (areset_n),
        .data_i         (data_i),
        .write_enable_i (write_enable_i),
        .addr_i         (addr_i),
        .weight_i       (weight_i),
        .p_o            (p_o)
    );

    // ----------------------------
    // 3) 클럭 생성 (100MHz 기준)
    // ----------------------------
    initial begin
        aclk = 1'b0;
        forever #5 aclk = ~aclk; 
    end

    // ----------------------------
    // 4) 테스트 시퀀스 및 결과 검증
    // ----------------------------
    initial begin
        // 신호 초기화 (모두 0으로 설정)
        areset_n       = 1'b0;
        data_i         = 8'd0;
        write_enable_i = 1'b0;
        addr_i         = 32'd0;
        
        for (int i = 0; i < 16; i++) begin
            weight_i[i] = 16'd0;
        end

        #20;
        areset_n = 1'b1;

        #20;

        if (p_o[0] == 4'd0 && p_o[1] == 4'd0 && p_o[2] == 4'd0 && p_o[3] == 4'd0) begin
            $display("==================================================");
            $display("[PASS]");
            $display("==================================================");
        end else begin
            $display("==================================================");
            $display("[FAIL]");
            $display("p_o[0]=%0h, p_o[1]=%0h, p_o[2]=%0h, p_o[3]=%0h", p_o[0], p_o[1], p_o[2], p_o[3]);
            $display("==================================================");
        end

        // 시뮬레이션 종료
        #10;
        $finish;
    end

endmodule