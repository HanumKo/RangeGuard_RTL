`timescale 1ns/1ps

module tb_RS8b_DECODER;
    // --- Signals ---
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

    // --- Instantiate DUT ---
    RS8b_DECODER dut (.*);

    // --- Clock generation ---
    initial begin
        aclk = 0;
        forever #5 aclk = ~aclk; // 100MHz
    end

    // --- Helper Task: Reset to Baseline (Exp 115) ---
    task reset_inputs();
        for (int i = 0; i < 16; i++) begin
            weight_i[i] = {1'b0, 8'd115, 7'h00}; // Exp 115 = RID 0
        end
        pp[0] = 8'h00;
        pp[1] = 8'h00;
    endtask

    // --- Helper Task: Display Results with Decoder Status ---
    task display_results(input string msg);
        string res_str;
        case (decode_res_o)
            2'b00: res_str = "NE (No Error)";
            2'b01: res_str = "CE (Correctable Error)";
            2'b10: res_str = "DUE (Uncorrectable)";
            default: res_str = "UNKNOWN";
        endcase

        $display("\n=======================================================");
        $display("%s", msg);
        $display("DECODER STATUS: %s | ERROR LOC: %0d", res_str, error_loc_o);
        $write("INPUT EXP  : ");
        for (int i = 0; i < 16; i++) $write("%3d ", weight_i[i][14:7]);
        $display("");
        $write("OUTPUT EXP : ");
        for (int i = 0; i < 16; i++) $write("%3d ", weight_o[i][14:7]);
        $display("\n=======================================================");
    endtask

    // --- Test Scenarios ---
    initial begin
        // 1. Initialization
        areset_n = 0;
        write_enable_i = 0;
        data_i = 0;
        addr_i = 0;
        reset_inputs();
        #20;
        areset_n = 1;
        #20;

        // Case 1: No Error
        reset_inputs();
        #100;
        display_results("[Case 1] All weights = 115 (No Error Scenario)");

        // Case 2: Single Weight Error (Symbol 0)
        reset_inputs();
        weight_i[0] = {1'b0, 8'd118, 7'h00}; // Exp 118 = RID 2 (Error)
        #100;
        display_results("[Case 2] weight_i[0] = 118 (1-Symbol Error at Loc 0)");

        // Case 3: Two Weights Error in One Symbol (Symbol 0)
        reset_inputs();
        weight_i[0] = {1'b0, 8'd118, 7'h00};
        weight_i[1] = {1'b0, 8'd118, 7'h00}; // Both belong to Symbol 0
        #100;
        display_results("[Case 3] weight_i[0,1] = 118 (1-Symbol Error at Loc 0)");

        // Case 4: Errors in Multiple Symbols (Symbol 0 and 1)
        reset_inputs();
        weight_i[0] = {1'b0, 8'd118, 7'h00}; // Symbol 0
        weight_i[2] = {1'b0, 8'd118, 7'h00}; // Symbol 1
        #100;
        display_results("[Case 4] weight_i[0,2] = 118 (2-Symbol Errors - Uncorrectable)");

        #50 $finish;
    end

endmodule