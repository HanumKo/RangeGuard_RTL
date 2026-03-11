module RANGE_TABLE_Recovery #(
    parameter RE_BASE = 8'h20   // rep_table[0..15] 쓰기 주소: RE_BASE + 0..15
)(
    input  logic        aclk,
    input  logic        areset_n,

    // 원본 BF16 16개
    input  logic [15:0] weight_i   [15:0],
    // 원본에서 얻은 심벌 8바이트: 각 바이트 = {RID(odd)[3:0], RID(even)[3:0]}
    input  logic [7:0]  symbol_i   [7:0],
    // 복구된 심벌 8바이트: {RID(odd)[3:0], RID(even)[3:0]}
    input  logic [7:0]  recovered  [7:0],

    // CSR write: rep_table[RID(0..15)] = 대표 exponent(8비트)
    input  logic [7:0]  data_i,
    input  logic        write_enable_i,
    input  logic [31:0] addr_i,

    // 복구 결과 출력: exponent만 대표값으로 교체된 BF16 16개
    output logic [15:0] weight_o   [15:0]
);

    // 1) 대표 exponent 테이블 (동기식 CSR)
    logic [7:0] rep_table [15:0];

    always_ff @(posedge aclk or negedge areset_n) begin
        if (!areset_n) begin
            // 기본 대표값: [115,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131]
            rep_table[ 0] <= 8'd115;
            rep_table[ 1] <= 8'd117;
            rep_table[ 2] <= 8'd118;
            rep_table[ 3] <= 8'd119;
            rep_table[ 4] <= 8'd120;
            rep_table[ 5] <= 8'd121;
            rep_table[ 6] <= 8'd122;
            rep_table[ 7] <= 8'd123;
            rep_table[ 8] <= 8'd124;
            rep_table[ 9] <= 8'd125;
            rep_table[10] <= 8'd126;
            rep_table[11] <= 8'd127;
            rep_table[12] <= 8'd128;
            rep_table[13] <= 8'd129;
            rep_table[14] <= 8'd130;
            rep_table[15] <= 8'd131;
        end else if (write_enable_i) begin
            // addr_i[7:0] == RE_BASE + idx(0..15) → rep_table[idx] = data_i
            if ((addr_i[7:0] >= RE_BASE) && (addr_i[7:0] <= (RE_BASE + 8'h0F)))
                rep_table[addr_i[3:0]] <= data_i;
        end
    end

    // 2) 원본/복구 RID 각각 언팩 (조합)
    //    각 바이트는 {odd[7:4], even[3:0]} 규칙
    logic [3:0] rid_orig [15:0];
    logic [3:0] rid_rec  [15:0];

    genvar u;
    generate
        for (u = 0; u < 8; u++) begin : UNPACK_RID_ORIG_REC
            // even index = 2u, odd index = 2u+1
            assign rid_orig[2*u]     = symbol_i[u][3:0]; // even
            assign rid_orig[2*u + 1] = symbol_i[u][7:4]; // odd

            assign rid_rec [2*u]     = recovered[u][3:0]; // even
            assign rid_rec [2*u + 1] = recovered[u][7:4]; // odd
        end
    endgenerate

    // 3) 서로 다를 때만 대표 exponent로 치환, 같으면 원래 exponent 유지 (조합)
    genvar k;
    generate
        for (k = 0; k < 16; k++) begin : REBUILD_BF16
            wire [7:0] exp_orig = weight_i[k][14:7];
            wire [7:0] exp_new  = rep_table[rid_rec[k]];
            wire       diff     = (rid_rec[k] != rid_orig[k]);
            wire [7:0] exp_sel  = diff ? exp_new : exp_orig;

            assign weight_o[k] = { weight_i[k][15], exp_sel, weight_i[k][6:0] };
        end
    endgenerate

endmodule
