module RS8b_ENCODER(
    input  logic        aclk,
    input  logic        areset_n,

    input  logic [7:0]  data_i,
    input  logic        write_enable_i,
    input  logic [31:0] addr_i,

    input  logic [15:0] weight_i [15:0],
    output logic [7:0]  p_o      [1:0]
);
    logic [7:0] symbol [7:0];
    logic [63:0] data64;
    logic [79:0] codeword;

    RANGE_TABLE_BF16_RID16 u_range_table (
        .aclk           (aclk),
        .areset_n       (areset_n),
        .weight_i       (weight_i),
        .symbol_o       (symbol),
        .data_i         (data_i),
        .write_enable_i (write_enable_i),
        .addr_i         (addr_i)
    );

assign data64 = {symbol[0], symbol[1], symbol[2], symbol[3], symbol[4], symbol[5], symbol[6], symbol[7]};

    RS_ENCODER u_rs_encoder (
        .data_in        (data64),
        .codeword_out   (codeword)
    );

assign  p_o[0]  =   codeword[7:0];
assign  p_o[1]  =   codeword[15:8];

endmodule