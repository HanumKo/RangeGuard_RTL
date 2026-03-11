module RANGE_TABLE_BF16_RID16 #(
    parameter TH_BASE = 8'h00   // Threshold 레지스터 시작 주소
)(
    input  logic        aclk,
    input  logic        areset_n,

    input  logic [15:0] weight_i [15:0],

    output logic [7:0]  symbol_o [7:0],

    input  logic [7:0]  data_i,
    input  logic        write_enable_i,
    input  logic [31:0] addr_i
);

    // ----------------------------
    // 1) CSR: 15개의 경계값 (16개 구간용)
    // ----------------------------
    // th[0] ~ th[14]까지 총 15개 사용
    logic [7:0] th [14:0];

    always_ff @(posedge aclk or negedge areset_n) begin
        if (!areset_n) begin
            th[0]  <= 8'd117; th[1]  <= 8'd118; th[2]  <= 8'd119;
            th[3]  <= 8'd120; th[4]  <= 8'd121; th[5]  <= 8'd122;
            th[6]  <= 8'd123; th[7]  <= 8'd124; th[8]  <= 8'd125;
            th[9]  <= 8'd126; th[10] <= 8'd127; th[11] <= 8'd128;
            th[12] <= 8'd129; th[13] <= 8'd130; th[14] <= 8'd131;
        end
        else begin
            if (write_enable_i) begin
                if ((addr_i[7:0] >= TH_BASE) && (addr_i[7:0] <= (TH_BASE + 8'h0E))) begin
                    th[addr_i[3:0]] <= data_i;
                end
            end
        end
    end

    // ----------------------------
    // 2) Exponent 추출 및 16-bin 분류
    // ----------------------------
    logic [7:0] exp_val [15:0];
    logic [3:0] rid4    [15:0];

    function automatic logic [3:0] classify16 (
        input logic [7:0] e,
        input logic [7:0] t [14:0]
    );
        if      (e < t[0])  return 4'd0;
        else if (e < t[1])  return 4'd1;
        else if (e < t[2])  return 4'd2;
        else if (e < t[3])  return 4'd3;
        else if (e < t[4])  return 4'd4;
        else if (e < t[5])  return 4'd5;
        else if (e < t[6])  return 4'd6;
        else if (e < t[7])  return 4'd7;
        else if (e < t[8])  return 4'd8;
        else if (e < t[9])  return 4'd9;
        else if (e < t[10]) return 4'd10;
        else if (e < t[11]) return 4'd11;
        else if (e < t[12]) return 4'd12;
        else if (e < t[13]) return 4'd13;
        else if (e < t[14]) return 4'd14;
        else                return 4'd15;
    endfunction

    genvar i;
    generate
        for (i = 0; i < 16; i++) begin : PROC_BLOCK
            assign exp_val[i] = weight_i[i][14:7];
            always_comb begin
                rid4[i] = classify16(exp_val[i], th);
            end
        end
    endgenerate

    // ----------------------------
    // 3) Symbol 패킹 (4-bit RID * 2 = 8-bit Byte)
    // ----------------------------
    genvar k;
    generate
        for (k = 0; k < 8; k++) begin : PACK_BYTE
            assign symbol_o[k] = { rid4[2*k + 1], rid4[2*k] };
        end
    endgenerate

endmodule