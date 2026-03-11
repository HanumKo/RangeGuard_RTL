module RANGE_TABLE_BF16_RID4 #(
    parameter TH_BASE = 8'h00
)(
    input  logic        aclk,
    input  logic        areset_n,

    input  logic [15:0] weight_i [15:0],
    output logic [3:0]  symbol_o [7:0],

    input  logic [7:0]  data_i,
    input  logic        write_enable_i,
    input  logic [31:0] addr_i
);

    // ----------------------------
    // 1) CSR Write (3개의 Threshold만 관리)
    // ----------------------------
    // th[0]: Range 0과 1 사이 경계
    // th[1]: Range 1과 2 사이 경계
    // th[2]: Range 2과 3 사이 경계
    logic [7:0] th [2:0];

    always_ff @(posedge aclk or negedge areset_n) begin
        if (!areset_n) begin
            th[0] <= 8'd127;
            th[1] <= 8'd128;
            th[2] <= 8'd129;
        end else if (write_enable_i) begin
            if ((addr_i[7:0] >= TH_BASE) && (addr_i[7:0] <= (TH_BASE + 8'h02))) begin
                th[addr_i[1:0]] <= data_i;
            end
        end
    end

    // ----------------------------
    // 2) Exponent 추출 및 분류
    // ----------------------------
    logic [7:0] exp_val [15:0];
    logic [1:0] rid2    [15:0];

    function automatic logic [1:0] classify_exp (
        input logic [7:0] e,
        input logic [7:0] t0, t1, t2
    );
        if      (e < t0) return 2'd0;
        else if (e < t1) return 2'd1;
        else if (e < t2) return 2'd2;
        else             return 2'd3;
    endfunction

    genvar i;
    generate
        for (i = 0; i < 16; i++) begin : PROC_BLOCK
            assign exp_val[i] = weight_i[i][14:7];

            always_comb begin
                rid2[i] = classify_exp(exp_val[i], th[0], th[1], th[2]);
            end
        end
    endgenerate

    // ----------------------------
    // 3) Symbol 패킹 (2-bit ID * 2 = 4-bit Nibble)
    // ----------------------------
    genvar k;
    generate
        for (k = 0; k < 8; k++) begin : PACKING
            assign symbol_o[k] = {rid2[2*k+1], rid2[2*k]};
        end
    endgenerate

endmodule