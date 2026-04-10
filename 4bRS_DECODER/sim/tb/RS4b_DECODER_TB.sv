`timescale 1ns/1ps

module tb_RS4b_DECODER;
    localparam integer PIPELINE_SETTLE_CYCLES = 4;
    localparam logic [7:0] EXP_RID0 = 8'd126;
    localparam logic [7:0] EXP_ERR  = 8'd128;

    logic        aclk;
    logic        areset_n;
    logic [7:0]  data_i;
    logic        write_enable_i;
    logic [31:0] addr_i;
    logic [15:0] weight_i [15:0];
    logic [3:0]  pp [3:0];
    logic [15:0] weight_o [15:0];

    RS4b_DECODER dut (.*);

    initial begin
        aclk = 1'b0;
        forever #5 aclk = ~aclk;
    end

    task reset_inputs_to_rid0;
        begin
            for (int i = 0; i < 16; i = i + 1) begin
                weight_i[i] = {1'b0, EXP_RID0, 7'h00};
            end
            for (int i = 0; i < 4; i = i + 1) begin
                pp[i] = 4'h0;
            end
            data_i = 8'h00;
            write_enable_i = 1'b0;
            addr_i = 32'h0000_0000;
        end
    endtask

    task wait_cycles(input integer cycles);
        begin
            repeat (cycles) @(posedge aclk);
            #1;
        end
    endtask

    task expect_no_unknowns(input integer case_id);
        begin
            for (int i = 0; i < 16; i = i + 1) begin
                if ($isunknown(weight_o[i])) begin
                    $display("Case %0d FAILED: weight_o[%0d] is unknown: %h", case_id, i, weight_o[i]);
                    $finish;
                end
            end
        end
    endtask

    task expect_all_output_exp(
        input integer case_id,
        input logic [7:0] expected_exp
    );
        begin
            for (int i = 0; i < 16; i = i + 1) begin
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
        end
    endtask

    task display_summary(input integer case_id);
        begin
            $display("-------------------------------------------------------");
            case (case_id)
                1: $display("[Case 1] all-zero codeword baseline");
                2: $display("[Case 2] single-weight error should be corrected");
                3: $display("[Case 3] one symbol corrupted, should be corrected");
                4: $display("[Case 4] two symbols corrupted, should be corrected");
                default: $display("[Case %0d]", case_id);
            endcase
            $write("output exp : ");
            for (int i = 0; i < 16; i = i + 1) begin
                $write("%3d ", weight_o[i][14:7]);
            end
            $display("");
            $display("-------------------------------------------------------");
        end
    endtask

    task run_case_no_error;
        begin
            reset_inputs_to_rid0();
            wait_cycles(PIPELINE_SETTLE_CYCLES);
            expect_no_unknowns(1);
            expect_all_output_exp(1, EXP_RID0);
            display_summary(1);
        end
    endtask

    task run_case_single_weight_error;
        begin
            for (int idx = 0; idx < 16; idx = idx + 1) begin
                reset_inputs_to_rid0();
                weight_i[idx] = {1'b0, EXP_ERR, 7'h00};
                wait_cycles(PIPELINE_SETTLE_CYCLES);
                expect_no_unknowns(2);
                expect_all_output_exp(2, EXP_RID0);
                $display("[Case 2] weight_i[%0d] single-weight correction passed", idx);
            end
        end
    endtask

    task run_case_single_symbol_error;
        begin
            for (int symbol_idx = 0; symbol_idx < 8; symbol_idx = symbol_idx + 1) begin
                reset_inputs_to_rid0();
                weight_i[2*symbol_idx]     = {1'b0, EXP_ERR, 7'h00};
                weight_i[2*symbol_idx + 1] = {1'b0, EXP_ERR, 7'h00};
                wait_cycles(PIPELINE_SETTLE_CYCLES);
                expect_no_unknowns(3);
                expect_all_output_exp(3, EXP_RID0);
                $display("[Case 3] symbol %0d double-weight correction passed", symbol_idx);
            end
        end
    endtask

    task run_case_double_symbol_error;
        begin
            for (int symbol_a = 0; symbol_a < 8; symbol_a = symbol_a + 1) begin
                for (int symbol_b = symbol_a + 1; symbol_b < 8; symbol_b = symbol_b + 1) begin
                    reset_inputs_to_rid0();
                    weight_i[2*symbol_a] = {1'b0, EXP_ERR, 7'h00};
                    weight_i[2*symbol_b] = {1'b0, EXP_ERR, 7'h00};
                    wait_cycles(PIPELINE_SETTLE_CYCLES);
                    expect_no_unknowns(4);
                    expect_all_output_exp(4, EXP_RID0);
                    $display(
                        "[Case 4] symbols (%0d,%0d) double-symbol correction passed",
                        symbol_a,
                        symbol_b
                    );
                end
            end
        end
    endtask

    initial begin
        areset_n = 1'b0;
        reset_inputs_to_rid0();

        wait_cycles(2);
        areset_n = 1'b1;
        wait_cycles(2);

        run_case_no_error();
        run_case_single_weight_error();
        run_case_single_symbol_error();
        run_case_double_symbol_error();

        $display("RS4b_DECODER_TB: single- and double-symbol correction checks passed.");
        #20;
        $finish;
    end
endmodule
