`timescale 1ns/1ps

module tb_RS8b_DECODER;
    localparam int PIPELINE_SETTLE_CYCLES = 4;
    localparam logic [7:0] EXP_RID0 = 8'd115;
    localparam logic [7:0] EXP_ERR  = 8'd118;

    logic        aclk;
    logic        areset_n;
    logic [7:0]  data_i;
    logic        write_enable_i;
    logic [31:0] addr_i;

    logic [15:0] weight_i [15:0];
    logic [7:0]  pp [1:0];
    logic [3:0]  error_loc_o;
    logic [1:0]  decode_res_o;
    logic [15:0] weight_o [15:0];

    RS8b_DECODER dut (.*);

    initial begin
        aclk = 1'b0;
        forever #5 aclk = ~aclk;
    end

    task reset_inputs;
        for (int i = 0; i < 16; i++) begin
            weight_i[i] = {1'b0, EXP_RID0, 7'h00};
        end
        pp[0] = 8'h00;
        pp[1] = 8'h00;
        data_i = 8'h00;
        write_enable_i = 1'b0;
        addr_i = 32'h0000_0000;
    endtask

    task wait_cycles(input integer cycles);
        repeat (cycles) @(posedge aclk);
        #1;
    endtask

    task expect_no_unknowns(input integer case_id);
        if ($isunknown(decode_res_o)) begin
            $display("Case %0d FAILED: decode_res_o is unknown: %b", case_id, decode_res_o);
            $finish;
        end
        if ($isunknown(error_loc_o)) begin
            $display("Case %0d FAILED: error_loc_o is unknown: %b", case_id, error_loc_o);
            $finish;
        end
        for (int i = 0; i < 16; i++) begin
            if ($isunknown(weight_o[i])) begin
                $display("Case %0d FAILED: weight_o[%0d] is unknown: %h", case_id, i, weight_o[i]);
                $finish;
            end
        end
    endtask

    task expect_all_output_exp(
        input integer case_id,
        input logic [7:0] expected_exp
    );
        for (int i = 0; i < 16; i++) begin
            if (weight_o[i][14:7] !== expected_exp) begin
                $display(
                    "Case %0d FAILED: weight_o[%0d] exp mismatch. expected=%0d actual=%0d",
                    case_id,
                    i,
                    expected_exp,
                    weight_o[i][14:7]
                );
                $finish;
            end
        end
    endtask

    task report_case(input integer case_id);
        $display("-------------------------------------------------------");
        case (case_id)
            1: $display("[Case 1] all-zero codeword baseline");
            2: $display("[Case 2] single-weight error should be corrected");
            3: $display("[Case 3] one symbol corrupted, should be corrected");
            default: $display("[Case %0d]", case_id);
        endcase
        $display("decode_res_o=%b error_loc_o=%0d", decode_res_o, error_loc_o);
        $write("output exp : ");
        for (int i = 0; i < 16; i++) begin
            $write("%3d ", weight_o[i][14:7]);
        end
        $display("");
        $display("-------------------------------------------------------");
    endtask

    task run_case_no_error;
        reset_inputs();
        wait_cycles(PIPELINE_SETTLE_CYCLES);
        expect_no_unknowns(1);
        if (decode_res_o !== 2'b00) begin
            $display("Case 1 FAILED: expected NE(00), got %b", decode_res_o);
            $finish;
        end
        expect_all_output_exp(1, EXP_RID0);
        report_case(1);
    endtask

    task run_case_single_weight_error;
        integer idx;
        integer symbol_idx;
        for (idx = 0; idx < 16; idx = idx + 1) begin
            symbol_idx = idx / 2;
            reset_inputs();
            weight_i[idx] = {1'b0, EXP_ERR, 7'h00};
            wait_cycles(PIPELINE_SETTLE_CYCLES);
            expect_no_unknowns(2);
            if (decode_res_o !== 2'b01) begin
                $display("Case 2 FAILED at weight_i[%0d]: expected CE(01), got %b", idx, decode_res_o);
                $finish;
            end
            if (error_loc_o !== symbol_idx[3:0]) begin
                $display(
                    "Case 2 FAILED at weight_i[%0d]: expected error_loc_o=%0d, got %0d",
                    idx,
                    symbol_idx,
                    error_loc_o
                );
                $finish;
            end
            expect_all_output_exp(2, EXP_RID0);
            $display("[Case 2] weight_i[%0d] single-weight error corrected", idx);
        end
    endtask

    task run_case_single_symbol_error;
        integer symbol_idx;
        for (symbol_idx = 0; symbol_idx < 8; symbol_idx = symbol_idx + 1) begin
            reset_inputs();
            weight_i[2*symbol_idx]     = {1'b0, EXP_ERR, 7'h00};
            weight_i[2*symbol_idx + 1] = {1'b0, EXP_ERR, 7'h00};
            wait_cycles(PIPELINE_SETTLE_CYCLES);
            expect_no_unknowns(3);
            if (decode_res_o !== 2'b01) begin
                $display("Case 3 FAILED at symbol %0d: expected CE(01), got %b", symbol_idx, decode_res_o);
                $finish;
            end
            if (error_loc_o !== symbol_idx[3:0]) begin
                $display(
                    "Case 3 FAILED at symbol %0d: expected error_loc_o=%0d, got %0d",
                    symbol_idx,
                    symbol_idx,
                    error_loc_o
                );
                $finish;
            end
            expect_all_output_exp(3, EXP_RID0);
            $display("[Case 3] symbol %0d double-weight error corrected", symbol_idx);
        end
    endtask

    initial begin
        areset_n = 1'b0;
        reset_inputs();

        wait_cycles(2);
        areset_n = 1'b1;
        wait_cycles(2);

        run_case_no_error();
        run_case_single_weight_error();
        run_case_single_symbol_error();

        $display("RS8b_DECODER_TB: correction checks passed.");
        #20;
        $finish;
    end

endmodule
