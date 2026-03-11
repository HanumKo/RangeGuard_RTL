module RS4b_ENCODER(
    input  logic        aclk,
    input  logic        areset_n,

    input  logic [7:0]  data_i,
    input  logic        write_enable_i,
    input  logic [31:0] addr_i,

    input  logic [15:0] weight_i [15:0],
    output logic [3:0]  p_o      [3:0]
);
    logic [3:0] symbol [7:0];

    RANGE_TABLE_BF16_RID4 u_range_table (
        .aclk           (aclk),
        .areset_n       (areset_n),
        .weight_i       (weight_i),
        .symbol_o       (symbol),
        .data_i         (data_i),
        .write_enable_i (write_enable_i),
        .addr_i         (addr_i)
    );

    RS_ENCODER u_rs_encoder (
        .vp         (symbol),
        .pp         (p_o)
    );
endmodule