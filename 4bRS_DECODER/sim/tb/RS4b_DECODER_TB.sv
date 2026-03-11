`timescale 1ns/1ps

module tb_RS4b_DECODER;
    logic        aclk;
    logic        areset_n;
    logic [7:0]  data_i;
    logic        write_enable_i;
    logic [31:0] addr_i;
    logic [15:0] weight_i [15:0];
    logic [3:0]  pp [3:0];
    logic [15:0] weight_o [15:0];

    // DUT 인스턴스화
    RS4b_DECODER dut (.*);

    // Clock 생성 (10ns period)
    initial begin
        aclk = 0;
        forever #5 aclk = ~aclk;
    end

    // 모든 weight를 126으로, 패리티를 0으로 리셋하는 Task
    task reset_inputs_to_126();
        for (int i = 0; i < 16; i++) begin
            // Sign=0, Exponent=126 (8'h7E), Mantissa=0
            weight_i[i] = {1'b0, 8'd126, 7'h00};
        end
        for (int i = 0; i < 4; i++) begin
            pp[i] = 4'h0;
        end
    endtask

    task display_all_weights();
        $write("weight_i Exp: ");
        for (int i = 0; i < 16; i++) $write("%3d ", weight_i[i][14:7]);
        $display(""); // 줄바꿈
        
        $write("weight_o Exp: ");
        for (int i = 0; i < 16; i++) $write("%3d ", weight_o[i][14:7]);
        $display(""); // 줄바꿈
    endtask

    initial begin
        // Reset
        areset_n = 0;
        write_enable_i = 0;
        data_i = 0;
        addr_i = 0;
        reset_inputs_to_126();
        #20;
        areset_n = 1;
        #20;

// =========================================================
        $display("\n=======================================================");
        $display("[Case 1] all weight_i = 126, pp = 0 (no error)");
        reset_inputs_to_126();
        #100;
        $display("Result => weight_o[0] Exp: %d", weight_o[0][14:7]);
        display_all_weights();

        // =========================================================
        $display("\n=======================================================");
        $display("[Case 2] only one weight_i = 128 (1 symbol error: symbol 0)");
        reset_inputs_to_126();
        weight_i[0] = {1'b0, 8'd128, 7'h00};
        #100;
        $display("Result => weight_o[0] Exp: %d (It should be 126)", weight_o[0][14:7]);
        display_all_weights();

        // =========================================================
        $display("\n=======================================================");
        $display("[Case 3] two adjacent weight_i = 128 (1 symbol error: symbol 0)");
        reset_inputs_to_126();
        weight_i[0] = {1'b0, 8'd128, 7'h00};
        weight_i[1] = {1'b0, 8'd128, 7'h00};
        #100;
        $display("Result => weight_o[0] Exp: %d, weight_o[1] Exp: %d (Both should be 126)", 
                 weight_o[0][14:7], weight_o[1][14:7]);
        display_all_weights();

        // =========================================================
        $display("\n=======================================================");
        $display("[Case 4] two weight_i = 128 (2 symbol error: symbol 0, symbol 2)");
        reset_inputs_to_126();
        weight_i[0] = {1'b0, 8'd128, 7'h00};
        weight_i[2] = {1'b0, 8'd128, 7'h00};
        #100;
        $display("Result => weight_o[0] Exp: %d, weight_o[4] Exp: %d (Both should be 126)", 
                 weight_o[0][14:7], weight_o[4][14:7]);
        display_all_weights();

        // =========================================================
        $display("\n=======================================================");
        $display("[Case 5] three weight_i = 128 (3 symbol error: symbol 0, 1, 2)");
        reset_inputs_to_126();
        weight_i[0] = {1'b0, 8'd128, 7'h00};
        weight_i[2] = {1'b0, 8'd128, 7'h00};
        weight_i[4] = {1'b0, 8'd128, 7'h00};
        #100;
        $display("Result => weight_o[0] Exp: %d, weight_o[2] Exp: %d, weight_o[4] Exp: %d (Uncorrectable)", 
                 weight_o[0][14:7], weight_o[2][14:7], weight_o[4][14:7]);
        display_all_weights();
        $display("=======================================================\n");

        $finish;
    end
endmodule