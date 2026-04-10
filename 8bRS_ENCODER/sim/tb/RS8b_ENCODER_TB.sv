`timescale 1ns / 1ps

module tb_RS8b_ENCODER;
    localparam logic [7:0] EXP_RID0 = 8'd115;
    localparam logic [7:0] EXP_ERR  = 8'd118;

    logic        aclk;
    logic        areset_n;
    logic [7:0]  data_i;
    logic        write_enable_i;
    logic [31:0] addr_i;
    logic [15:0] weight_i [15:0];
    logic [7:0]  p_o [1:0];

    logic [7:0]  model_th [14:0];

    RS8b_ENCODER u_dut (
        .aclk           (aclk),
        .areset_n       (areset_n),
        .data_i         (data_i),
        .write_enable_i (write_enable_i),
        .addr_i         (addr_i),
        .weight_i       (weight_i),
        .p_o            (p_o)
    );

    initial begin
        aclk = 1'b0;
        forever #5 aclk = ~aclk;
    end

    function [3:0] classify16(input [7:0] exp);
        begin
            if      (exp < model_th[0])  classify16 = 4'd0;
            else if (exp < model_th[1])  classify16 = 4'd1;
            else if (exp < model_th[2])  classify16 = 4'd2;
            else if (exp < model_th[3])  classify16 = 4'd3;
            else if (exp < model_th[4])  classify16 = 4'd4;
            else if (exp < model_th[5])  classify16 = 4'd5;
            else if (exp < model_th[6])  classify16 = 4'd6;
            else if (exp < model_th[7])  classify16 = 4'd7;
            else if (exp < model_th[8])  classify16 = 4'd8;
            else if (exp < model_th[9])  classify16 = 4'd9;
            else if (exp < model_th[10]) classify16 = 4'd10;
            else if (exp < model_th[11]) classify16 = 4'd11;
            else if (exp < model_th[12]) classify16 = 4'd12;
            else if (exp < model_th[13]) classify16 = 4'd13;
            else if (exp < model_th[14]) classify16 = 4'd14;
            else                         classify16 = 4'd15;
        end
    endfunction

    function [7:0] gfmult(input [7:0] a, input [7:0] b);
        begin
            gfmult =
                ({8{b[0]}} & (a << 0)) ^
                ({8{b[1]}} & ((a << 1) ^ ({8{a[7]}} & 8'b0101_1111))) ^
                ({8{b[2]}} & ((a << 2) ^ ({8{a[7]}} & 8'b1011_1110) ^ ({8{a[6]}} & 8'b0101_1111))) ^
                ({8{b[3]}} & ((a << 3) ^ ({8{a[7]}} & 8'b0010_0011) ^ ({8{a[6]}} & 8'b1011_1110) ^ ({8{a[5]}} & 8'b0101_1111))) ^
                ({8{b[4]}} & ((a << 4) ^ ({8{a[7]}} & 8'b0100_0110) ^ ({8{a[6]}} & 8'b0010_0011) ^ ({8{a[5]}} & 8'b1011_1110) ^ ({8{a[4]}} & 8'b0101_1111))) ^
                ({8{b[5]}} & ((a << 5) ^ ({8{a[7]}} & 8'b1000_1100) ^ ({8{a[6]}} & 8'b0100_0110) ^ ({8{a[5]}} & 8'b0010_0011) ^ ({8{a[4]}} & 8'b1011_1110) ^ ({8{a[3]}} & 8'b0101_1111))) ^
                ({8{b[6]}} & ((a << 6) ^ ({8{a[7]}} & 8'b0100_0111) ^ ({8{a[6]}} & 8'b1000_1100) ^ ({8{a[5]}} & 8'b0100_0110) ^ ({8{a[4]}} & 8'b0010_0011) ^ ({8{a[3]}} & 8'b1011_1110) ^ ({8{a[2]}} & 8'b0101_1111))) ^
                ({8{b[7]}} & ((a << 7) ^ ({8{a[7]}} & 8'b1000_1110) ^ ({8{a[6]}} & 8'b0100_0111) ^ ({8{a[5]}} & 8'b1000_1100) ^ ({8{a[4]}} & 8'b0100_0110) ^ ({8{a[3]}} & 8'b0010_0011) ^ ({8{a[2]}} & 8'b1011_1110) ^ ({8{a[1]}} & 8'b0101_1111)));
        end
    endfunction

    task init_threshold_model;
        begin
            model_th[0]  = 8'd117; model_th[1]  = 8'd118; model_th[2]  = 8'd119;
            model_th[3]  = 8'd120; model_th[4]  = 8'd121; model_th[5]  = 8'd122;
            model_th[6]  = 8'd123; model_th[7]  = 8'd124; model_th[8]  = 8'd125;
            model_th[9]  = 8'd126; model_th[10] = 8'd127; model_th[11] = 8'd128;
            model_th[12] = 8'd129; model_th[13] = 8'd130; model_th[14] = 8'd131;
        end
    endtask

    task initialize_weights(input [7:0] exp);
        begin
            for (int i = 0; i < 16; i = i + 1) begin
                weight_i[i] = {1'b0, exp, 7'h00};
            end
        end
    endtask

    task wait_cycles(input integer cycles);
        begin
            repeat (cycles) @(posedge aclk);
            #1;
        end
    endtask

    task update_threshold(input [3:0] index, input [7:0] value);
        begin
            @(posedge aclk);
            write_enable_i = 1'b1;
            addr_i = {24'h0, 4'h0, index};
            data_i = value;
            @(posedge aclk);
            write_enable_i = 1'b0;
            data_i = 8'h00;
            addr_i = 32'h0000_0000;
            model_th[index] = value;
            wait_cycles(1);
        end
    endtask

    task compute_expected_parity(output [7:0] expected_p0, output [7:0] expected_p1);
        reg [3:0] rid4 [15:0];
        reg [7:0] symbol [7:0];
        reg [7:0] parity [7:0];
        begin
            for (int i = 0; i < 16; i = i + 1) begin
                rid4[i] = classify16(weight_i[i][14:7]);
            end

            for (int k = 0; k < 8; k = k + 1) begin
                symbol[k] = {rid4[2*k + 1], rid4[2*k]};
            end

            parity[7] = gfmult(symbol[0], 8'b0000_0001);
            parity[6] = gfmult(symbol[1], 8'b0000_0010);
            parity[5] = gfmult(symbol[2], 8'b0000_0100);
            parity[4] = gfmult(symbol[3], 8'b0000_1000);
            parity[3] = gfmult(symbol[4], 8'b0001_0000);
            parity[2] = gfmult(symbol[5], 8'b0010_0000);
            parity[1] = gfmult(symbol[6], 8'b0100_0000);
            parity[0] = gfmult(symbol[7], 8'b1000_0000);

            expected_p1 = symbol[0] ^ symbol[1] ^ symbol[2] ^ symbol[3] ^
                          symbol[4] ^ symbol[5] ^ symbol[6] ^ symbol[7];
            expected_p0 = parity[7] ^ parity[6] ^ parity[5] ^ parity[4] ^
                          parity[3] ^ parity[2] ^ parity[1] ^ parity[0];
        end
    endtask

    task expect_parity(input integer case_id);
        reg [7:0] expected_p0;
        reg [7:0] expected_p1;
        begin
            compute_expected_parity(expected_p0, expected_p1);

            if ($isunknown(p_o[0]) || $isunknown(p_o[1])) begin
                $display("Case %0d FAILED: parity output contains unknowns. p0=%h p1=%h", case_id, p_o[0], p_o[1]);
                $finish;
            end

            if (p_o[0] !== expected_p0 || p_o[1] !== expected_p1) begin
                $display(
                    "Case %0d FAILED: expected parity p0=%h p1=%h, got p0=%h p1=%h",
                    case_id,
                    expected_p0,
                    expected_p1,
                    p_o[0],
                    p_o[1]
                );
                $finish;
            end
        end
    endtask

    task run_case_zero_codeword;
        begin
            initialize_weights(EXP_RID0);
            wait_cycles(2);
            expect_parity(1);
            if (p_o[0] !== 8'h00 || p_o[1] !== 8'h00) begin
                $display("Case 1 FAILED: all-zero codeword expected zero parity, got p0=%h p1=%h", p_o[0], p_o[1]);
                $finish;
            end
            $display("[Case 1] all weights mapped to RID0 -> parity is zero");
        end
    endtask

    task run_case_single_weight_sweep;
        begin
            for (int idx = 0; idx < 16; idx = idx + 1) begin
                initialize_weights(EXP_RID0);
                weight_i[idx] = {1'b0, EXP_ERR, 7'h00};
                wait_cycles(2);
                expect_parity(2);
                $display("[Case 2] weight_i[%0d] single-weight parity check passed", idx);
            end
        end
    endtask

    task run_case_threshold_update;
        begin
            initialize_weights(8'd101);
            wait_cycles(2);
            expect_parity(3);
            $display("[Case 3] before CSR update parity check passed");

            update_threshold(4'd0, 8'd100);
            initialize_weights(8'd101);
            wait_cycles(2);
            expect_parity(4);
            $display("[Case 4] after CSR update parity check passed");
        end
    endtask

    initial begin
        areset_n       = 1'b0;
        data_i         = 8'h00;
        write_enable_i = 1'b0;
        addr_i         = 32'h0000_0000;
        init_threshold_model();
        initialize_weights(EXP_RID0);

        wait_cycles(2);
        areset_n = 1'b1;
        wait_cycles(2);

        run_case_zero_codeword();
        run_case_single_weight_sweep();
        run_case_threshold_update();

        $display("RS8b_ENCODER_TB: all checks passed.");
        #20;
        $finish;
    end

endmodule
