`timescale 1ns/1ps

module tb_RS8b_ALL;
    localparam integer PIPELINE_SETTLE_CYCLES = 6;
    localparam logic [7:0] EXP_BASE = 8'd115;
    localparam logic [7:0] EXP_ERR  = 8'd118;

    logic        aclk;
    logic        areset_n;

    logic [7:0]  csr_data;
    logic        csr_we;
    logic [31:0] csr_addr;

    logic [15:0] weight_in     [15:0];
    logic [15:0] weight_to_dec [15:0];
    logic [7:0]  parity_gen    [1:0];

    logic [3:0]  error_loc_o;
    logic [1:0]  decode_res_o;
    logic [15:0] weight_out    [15:0];

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
        aclk = 1'b0;
        forever #5 aclk = ~aclk;
    end

    task wait_cycles(input integer cycles);
        begin
            repeat (cycles) @(posedge aclk);
            #1;
        end
    endtask

    task reset_to_base_pattern;
        begin
            for (int i = 0; i < 16; i = i + 1) begin
                weight_in[i]     = {1'b0, EXP_BASE, 7'h00};
                weight_to_dec[i] = {1'b0, EXP_BASE, 7'h00};
            end
        end
    endtask

    task sync_weights;
        begin
            for (int i = 0; i < 16; i = i + 1) begin
                weight_to_dec[i] = weight_in[i];
            end
        end
    endtask

    task expect_recovered_matches_original(
        input integer case_id,
        input logic [1:0] expected_res
    );
        begin
            if ($isunknown(decode_res_o)) begin
                $display("Case %0d FAILED: decode_res_o is unknown: %b", case_id, decode_res_o);
                $finish;
            end
            if ($isunknown(error_loc_o)) begin
                $display("Case %0d FAILED: error_loc_o is unknown: %b", case_id, error_loc_o);
                $finish;
            end
            if (decode_res_o !== expected_res) begin
                $display(
                    "Case %0d FAILED: expected decode_res_o=%b, got %b",
                    case_id,
                    expected_res,
                    decode_res_o
                );
                $finish;
            end
            for (int i = 0; i < 16; i = i + 1) begin
                if ($isunknown(weight_out[i])) begin
                    $display("Case %0d FAILED: weight_out[%0d] is unknown: %h", case_id, i, weight_out[i]);
                    $finish;
                end
                if (weight_out[i] !== weight_in[i]) begin
                    $display(
                        "Case %0d FAILED: mismatch at index %0d. expected=%h got=%h",
                        case_id,
                        i,
                        weight_in[i],
                        weight_out[i]
                    );
                    $finish;
                end
            end
        end
    endtask

    task run_case_no_error;
        begin
            reset_to_base_pattern();
            wait_cycles(2);
            sync_weights();
            wait_cycles(PIPELINE_SETTLE_CYCLES);
            expect_recovered_matches_original(1, 2'b00);
            $display("[Case 1] no error path passed");
        end
    endtask

    task run_case_single_weight_error;
        begin
            for (int idx = 0; idx < 16; idx = idx + 1) begin
                reset_to_base_pattern();
                wait_cycles(2);
                sync_weights();
                weight_to_dec[idx] = {1'b0, EXP_ERR, 7'h00};
                wait_cycles(PIPELINE_SETTLE_CYCLES);
                expect_recovered_matches_original(2, 2'b01);
                $display("[Case 2] single-weight error corrected at index %0d", idx);
            end
        end
    endtask

    task run_case_single_symbol_error;
        begin
            for (int sym = 0; sym < 8; sym = sym + 1) begin
                reset_to_base_pattern();
                wait_cycles(2);
                sync_weights();
                weight_to_dec[2*sym]   = {1'b0, EXP_ERR, 7'h00};
                weight_to_dec[2*sym+1] = {1'b0, EXP_ERR, 7'h00};
                wait_cycles(PIPELINE_SETTLE_CYCLES);
                expect_recovered_matches_original(3, 2'b01);
                $display("[Case 3] single-symbol error corrected at symbol %0d", sym);
            end
        end
    endtask

    initial begin
        areset_n = 1'b0;
        csr_we   = 1'b0;
        csr_data = 8'h00;
        csr_addr = 32'h0000_0000;
        reset_to_base_pattern();

        wait_cycles(2);
        areset_n = 1'b1;
        wait_cycles(2);

        run_case_no_error();
        run_case_single_weight_error();
        run_case_single_symbol_error();

        $display("RS8b_ALL_TB: all integrated correction checks passed.");
        #20;
        $finish;
    end

endmodule
