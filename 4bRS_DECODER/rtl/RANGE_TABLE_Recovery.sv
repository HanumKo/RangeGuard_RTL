module RANGE_TABLE_Recovery #(
    parameter RE_BASE = 8'h20   // rep_table[0..3] 쓰기 주소: RE_BASE + 0..3
)(
    input  logic        aclk,
    input  logic        areset_n,

    input  logic [15:0] weight_i   [15:0],
    input  logic [3:0]  symbol_i   [7:0],
    input  logic [3:0]  recovered  [7:0],

    input  logic [7:0]  data_i,
    input  logic        write_enable_i,
    input  logic [31:0] addr_i,

    output logic [15:0] weight_o   [15:0]
);

    logic [7:0] rep_table [3:0];

    always_ff @(posedge aclk or negedge areset_n) begin
        if (!areset_n) begin
            rep_table[0] <= 8'd126; // bin0
            rep_table[1] <= 8'd128; // bin1
            rep_table[2] <= 8'd129; // bin2
            rep_table[3] <= 8'd130; // bin3
        end else if (write_enable_i) begin
            if (addr_i[7:0] >= RE_BASE && addr_i[7:0] <= (RE_BASE + 8'h03))
                rep_table[addr_i[1:0]] <= data_i;
        end
    end

    // 2) 원본/복구 RID 각각 언팩 (조합)
    logic [1:0] rid2_orig [15:0];
    logic [1:0] rid2_rec  [15:0];

    genvar u;
    generate
        for (u = 0; u < 8; u++) begin : UNPACK_RID_ORIG_REC
            // 니블 배치: {odd, even}
            assign rid2_orig[2*u]     = symbol_i[u][1:0]; // even
            assign rid2_orig[2*u + 1] = symbol_i[u][3:2]; // odd

            assign rid2_rec [2*u]     = recovered[u][1:0]; // even
            assign rid2_rec [2*u + 1] = recovered[u][3:2]; // odd
        end
    endgenerate

    // 3) 서로 다를 때만 대표 exponent로 치환, 같으면 원래 exponent 유지 (조합)
    genvar k;
    generate
        for (k = 0; k < 16; k++) begin : REBUILD_BF16
            wire [7:0] exp_orig = weight_i[k][14:7];
            wire [7:0] exp_new  = rep_table[rid2_rec[k]];
            wire       diff     = (rid2_rec[k] != rid2_orig[k]);
            wire [7:0] exp_sel  = diff ? exp_new : exp_orig;

            assign weight_o[k] = { weight_i[k][15], exp_sel, weight_i[k][6:0] };
        end
    endgenerate

endmodule
