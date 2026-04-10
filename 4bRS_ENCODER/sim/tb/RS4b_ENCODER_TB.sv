`timescale 1ns/1ps

module tb_RS4b_ENCODER;
    localparam logic [7:0] EXP_RID0 = 8'd126;
    localparam logic [7:0] EXP_ERR  = 8'd128;

    logic        aclk;
    logic        areset_n;
    logic [7:0]  data_i;
    logic        write_enable_i;
    logic [31:0] addr_i;
    logic [15:0] weight_i [15:0];
    logic [3:0]  p_o [3:0];

    logic [7:0] model_th [2:0];

    RS4b_ENCODER uut (
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

    function [1:0] classify_exp(input [7:0] exp);
        begin
            if      (exp < model_th[0]) classify_exp = 2'd0;
            else if (exp < model_th[1]) classify_exp = 2'd1;
            else if (exp < model_th[2]) classify_exp = 2'd2;
            else                        classify_exp = 2'd3;
        end
    endfunction

    function [3:0] gfmult4(input [3:0] a, input [3:0] b);
        reg [6:0] p;
        begin
            p = 7'd0;
            for (int i = 0; i < 4; i = i + 1) begin
                if (b[i]) p = p ^ (a << i);
            end

            if (p[6]) p = p ^ 7'b1001100;
            if (p[5]) p = p ^ 7'b0100110;
            if (p[4]) p = p ^ 7'b0010011;

            gfmult4 = p[3:0];
        end
    endfunction

    task init_threshold_model;
        begin
            model_th[0] = 8'd127;
            model_th[1] = 8'd128;
            model_th[2] = 8'd129;
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

    task update_threshold(input [1:0] index, input [7:0] value);
        begin
            @(posedge aclk);
            write_enable_i = 1'b1;
            addr_i = {24'h0, 6'h00, index};
            data_i = value;
            @(posedge aclk);
            write_enable_i = 1'b0;
            data_i = 8'h00;
            addr_i = 32'h0000_0000;
            model_th[index] = value;
            wait_cycles(1);
        end
    endtask

    task compute_expected_parity(
        output [3:0] expected_p0,
        output [3:0] expected_p1,
        output [3:0] expected_p2,
        output [3:0] expected_p3
    );
        reg [1:0] rid2 [15:0];
        reg [3:0] symbol [7:0];
        reg [3:0] pp_ac_0 [7:0];
        reg [3:0] pp_ac_1 [7:0];
        reg [3:0] pp_ac_2 [7:0];
        reg [3:0] pp_ac_3 [7:0];
        begin
            for (int i = 0; i < 16; i = i + 1) begin
                rid2[i] = classify_exp(weight_i[i][14:7]);
            end

            for (int k = 0; k < 8; k = k + 1) begin
                symbol[k] = {rid2[2*k+1], rid2[2*k]};
            end

            pp_ac_3[7] = gfmult4(symbol[0], 4'd6);
            pp_ac_3[6] = gfmult4(symbol[1], 4'd5);
            pp_ac_3[5] = gfmult4(symbol[2], 4'd13);
            pp_ac_3[4] = gfmult4(symbol[3], 4'd6);
            pp_ac_3[3] = gfmult4(symbol[4], 4'd14);
            pp_ac_3[2] = gfmult4(symbol[5], 4'd14);
            pp_ac_3[1] = gfmult4(symbol[6], 4'd5);
            pp_ac_3[0] = gfmult4(symbol[7], 4'd7);

            pp_ac_2[7] = gfmult4(symbol[0], 4'd8);
            pp_ac_2[6] = gfmult4(symbol[1], 4'd15);
            pp_ac_2[5] = gfmult4(symbol[2], 4'd10);
            pp_ac_2[4] = gfmult4(symbol[3], 4'd3);
            pp_ac_2[3] = gfmult4(symbol[4], 4'd13);
            pp_ac_2[2] = gfmult4(symbol[5], 4'd6);
            pp_ac_2[1] = gfmult4(symbol[6], 4'd5);
            pp_ac_2[0] = gfmult4(symbol[7], 4'd8);

            pp_ac_1[7] = gfmult4(symbol[0], 4'd13);
            pp_ac_1[6] = gfmult4(symbol[1], 4'd9);
            pp_ac_1[5] = gfmult4(symbol[2], 4'd9);
            pp_ac_1[4] = gfmult4(symbol[3], 4'd15);
            pp_ac_1[3] = gfmult4(symbol[4], 4'd13);
            pp_ac_1[2] = gfmult4(symbol[5], 4'd14);
            pp_ac_1[1] = gfmult4(symbol[6], 4'd11);
            pp_ac_1[0] = gfmult4(symbol[7], 4'd12);

            pp_ac_0[7] = gfmult4(symbol[0], 4'd12);
            pp_ac_0[6] = gfmult4(symbol[1], 4'd7);
            pp_ac_0[5] = gfmult4(symbol[2], 4'd13);
            pp_ac_0[4] = gfmult4(symbol[3], 4'd8);
            pp_ac_0[3] = gfmult4(symbol[4], 4'd7);
            pp_ac_0[2] = gfmult4(symbol[5], 4'd2);
            pp_ac_0[1] = gfmult4(symbol[6], 4'd2);
            pp_ac_0[0] = gfmult4(symbol[7], 4'd13);

            expected_p0 = pp_ac_0[7] ^ pp_ac_0[6] ^ pp_ac_0[5] ^ pp_ac_0[4] ^
                          pp_ac_0[3] ^ pp_ac_0[2] ^ pp_ac_0[1] ^ pp_ac_0[0];
            expected_p1 = pp_ac_1[7] ^ pp_ac_1[6] ^ pp_ac_1[5] ^ pp_ac_1[4] ^
                          pp_ac_1[3] ^ pp_ac_1[2] ^ pp_ac_1[1] ^ pp_ac_1[0];
            expected_p2 = pp_ac_2[7] ^ pp_ac_2[6] ^ pp_ac_2[5] ^ pp_ac_2[4] ^
                          pp_ac_2[3] ^ pp_ac_2[2] ^ pp_ac_2[1] ^ pp_ac_2[0];
            expected_p3 = pp_ac_3[7] ^ pp_ac_3[6] ^ pp_ac_3[5] ^ pp_ac_3[4] ^
                          pp_ac_3[3] ^ pp_ac_3[2] ^ pp_ac_3[1] ^ pp_ac_3[0];
        end
    endtask

    task expect_parity(input integer case_id);
        reg [3:0] expected_p0;
        reg [3:0] expected_p1;
        reg [3:0] expected_p2;
        reg [3:0] expected_p3;
        begin
            compute_expected_parity(expected_p0, expected_p1, expected_p2, expected_p3);

            if ($isunknown(p_o[0]) || $isunknown(p_o[1]) || $isunknown(p_o[2]) || $isunknown(p_o[3])) begin
                $display(
                    "Case %0d FAILED: parity output contains unknowns. p0=%h p1=%h p2=%h p3=%h",
                    case_id, p_o[0], p_o[1], p_o[2], p_o[3]
                );
                $finish;
            end

            if (p_o[0] !== expected_p0 || p_o[1] !== expected_p1 ||
                p_o[2] !== expected_p2 || p_o[3] !== expected_p3) begin
                $display(
                    "Case %0d FAILED: expected p=(%h,%h,%h,%h), got p=(%h,%h,%h,%h)",
                    case_id,
                    expected_p0, expected_p1, expected_p2, expected_p3,
                    p_o[0], p_o[1], p_o[2], p_o[3]
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
            if (p_o[0] !== 4'h0 || p_o[1] !== 4'h0 || p_o[2] !== 4'h0 || p_o[3] !== 4'h0) begin
                $display(
                    "Case 1 FAILED: expected zero parity, got p=(%h,%h,%h,%h)",
                    p_o[0], p_o[1], p_o[2], p_o[3]
                );
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
            initialize_weights(8'd127);
            wait_cycles(2);
            expect_parity(3);
            $display("[Case 3] before CSR update parity check passed");

            update_threshold(2'd0, 8'd100);
            initialize_weights(8'd127);
            wait_cycles(2);
            expect_parity(4);
            $display("[Case 4] after CSR update parity check passed");
        end
    endtask

    initial begin
        areset_n       = 1'b0;
        data_i         = 8'd0;
        write_enable_i = 1'b0;
        addr_i         = 32'd0;
        init_threshold_model();
        initialize_weights(EXP_RID0);

        wait_cycles(2);
        areset_n = 1'b1;
        wait_cycles(2);

        run_case_zero_codeword();
        run_case_single_weight_sweep();
        run_case_threshold_update();

        $display("RS4b_ENCODER_TB: all checks passed.");
        #10;
        $finish;
    end

endmodule
