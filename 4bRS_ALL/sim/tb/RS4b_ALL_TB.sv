`timescale 1ns/1ps

module tb_RS4b_ALL;
    localparam integer PIPELINE_SETTLE_CYCLES = 6;
    localparam logic [7:0] EXP_BASE = 8'd126;
    localparam logic [7:0] EXP_ERR_A = 8'd128;
    localparam logic [7:0] EXP_ERR_B = 8'd130;

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

    task automatic write_csr(input [31:0] wr_addr, input [7:0] wr_data);
        begin
            @(posedge aclk);
            write_enable_i <= 1'b1;
            addr_i         <= wr_addr;
            data_i         <= wr_data;
            @(posedge aclk);
            write_enable_i <= 1'b0;
            addr_i         <= 32'h0;
            data_i         <= 8'h0;
        end
    endtask

    task reset_to_base_pattern;
        begin
            for (int i = 0; i < 16; i = i + 1) begin
                weight_orig[i] = {1'b0, EXP_BASE, 7'h00};
                weight_rx[i]   = {1'b0, EXP_BASE, 7'h00};
            end
            for (int i = 0; i < 4; i = i + 1) begin
                parity_rx[i] = 4'h0;
            end
        end
    endtask

    task sync_channel_from_encoder;
        begin
            for (int i = 0; i < 16; i = i + 1) begin
                weight_rx[i] = weight_orig[i];
            end
            for (int i = 0; i < 4; i = i + 1) begin
                parity_rx[i] = parity_gen[i];
            end
        end
    endtask

    task expect_recovered_matches_original(input integer case_id);
        begin
            for (int i = 0; i < 16; i = i + 1) begin
                if ($isunknown(weight_rec[i])) begin
                    $display("Case %0d FAILED: weight_rec[%0d] is unknown: %h", case_id, i, weight_rec[i]);
                    $finish;
                end
                if (weight_rec[i] !== weight_orig[i]) begin
                    $display(
                        "Case %0d FAILED: mismatch at index %0d. expected=%h got=%h",
                        case_id,
                        i,
                        weight_orig[i],
                        weight_rec[i]
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
            sync_channel_from_encoder();
            wait_cycles(PIPELINE_SETTLE_CYCLES);
            expect_recovered_matches_original(1);
            $display("[Case 1] no error path passed");
        end
    endtask

    task run_case_single_weight_error;
        begin
            for (int idx = 0; idx < 16; idx = idx + 1) begin
                reset_to_base_pattern();
                wait_cycles(2);
                sync_channel_from_encoder();
                weight_rx[idx] = {1'b0, EXP_ERR_A, 7'h00};
                wait_cycles(PIPELINE_SETTLE_CYCLES);
                expect_recovered_matches_original(2);
                $display("[Case 2] single-weight error corrected at index %0d", idx);
            end
        end
    endtask

    task run_case_single_symbol_error;
        begin
            for (int symbol_idx = 0; symbol_idx < 8; symbol_idx = symbol_idx + 1) begin
                reset_to_base_pattern();
                wait_cycles(2);
                sync_channel_from_encoder();
                weight_rx[2*symbol_idx]     = {1'b0, EXP_ERR_A, 7'h00};
                weight_rx[2*symbol_idx + 1] = {1'b0, EXP_ERR_A, 7'h00};
                wait_cycles(PIPELINE_SETTLE_CYCLES);
                expect_recovered_matches_original(3);
                $display("[Case 3] single-symbol error corrected at symbol %0d", symbol_idx);
            end
        end
    endtask

    task run_case_double_symbol_error;
        begin
            for (int symbol_a = 0; symbol_a < 8; symbol_a = symbol_a + 1) begin
                for (int symbol_b = symbol_a + 1; symbol_b < 8; symbol_b = symbol_b + 1) begin
                    reset_to_base_pattern();
                    wait_cycles(2);
                    sync_channel_from_encoder();
                    weight_rx[2*symbol_a] = {1'b0, EXP_ERR_A, 7'h00};
                    weight_rx[2*symbol_b] = {1'b0, EXP_ERR_B, 7'h00};
                    wait_cycles(PIPELINE_SETTLE_CYCLES);
                    expect_recovered_matches_original(4);
                    $display(
                        "[Case 4] double-symbol error corrected at symbols (%0d,%0d)",
                        symbol_a,
                        symbol_b
                    );
                end
            end
        end
    endtask

    initial begin
        areset_n       = 1'b0;
        write_enable_i = 1'b0;
        data_i         = 8'h0;
        addr_i         = 32'h0;
        reset_to_base_pattern();

        wait_cycles(2);
        areset_n = 1'b1;
        wait_cycles(1);

        write_csr(32'h00, 8'd127);
        write_csr(32'h01, 8'd128);
        write_csr(32'h02, 8'd129);
        write_csr(32'h20, 8'd126);
        write_csr(32'h21, 8'd127);
        write_csr(32'h22, 8'd128);
        write_csr(32'h23, 8'd130);
        wait_cycles(2);

        run_case_no_error();
        run_case_single_weight_error();
        run_case_single_symbol_error();
        run_case_double_symbol_error();

        $display("RS4b_ALL_TB: all integrated correction checks passed.");
        #20;
        $finish;
    end

endmodule
