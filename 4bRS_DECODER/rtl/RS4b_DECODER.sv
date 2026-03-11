module RS4b_DECODER(
    input  logic        aclk,
    input  logic        areset_n,

    input  logic [7:0]  data_i,
    input  logic        write_enable_i,
    input  logic [31:0] addr_i,

    input  logic [15:0] weight_i [15:0],
    input  logic [3:0]  pp [3:0],
    output logic [15:0] weight_o [15:0]
);

    logic [3:0] symbol [7:0];
    logic [3:0] vp_recovered[7:0];

    RANGE_TABLE_BF16_RID4 u_range_table (
        .aclk           (aclk),
        .areset_n       (areset_n),

        .weight_i       (weight_i),
        .symbol_o       (symbol),

        .data_i         (data_i),
        .write_enable_i (write_enable_i),
        .addr_i         (addr_i)
    );

    SECOND_LEVEL_DECODER second_level_decoder(
        .aclk           (aclk),
        .areset_n       (areset_n),

        .vp             (symbol),
        .pp             (pp),
        .recovered_vp   (vp_recovered)
    ); 

    // SECOND_LEVEL_DECODER second_level_decoder(symbol, pp, vp_recovered);

    RANGE_TABLE_Recovery recovery_table (
        .aclk           (aclk),
        .areset_n       (areset_n),

        .weight_i       (weight_i),
        .symbol_i       (symbol),
        .recovered      (vp_recovered),

        .data_i         (data_i),
        .write_enable_i (write_enable_i),
        .addr_i         (addr_i),

        .weight_o       (weight_o)
    );

endmodule