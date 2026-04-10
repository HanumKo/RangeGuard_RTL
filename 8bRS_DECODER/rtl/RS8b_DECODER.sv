module RS8b_DECODER(
    input  logic        aclk,
    input  logic        areset_n,

    input  logic [7:0]  data_i,
    input  logic        write_enable_i,
    input  logic [31:0] addr_i,

    input  logic [15:0] weight_i [15:0],
    input  logic [7:0]  pp [1:0],
    
    output logic [3:0]  error_loc_o,
    output logic [1:0]  decode_res_o,
    
    output logic [15:0] weight_o [15:0]
);

    logic [7:0]  symbol_dec [7:0];
    logic [7:0]  symbol_rec [7:0];
    logic [15:0] weight_rec_in [15:0];
    logic [63:0] data64_s2;
    logic [7:0]  vp_recovered_s2[7:0];

    // 1. Range Mapping: BF16 Weight -> 8-bit Symbols (4-bit RID x 2)
    RANGE_TABLE_STAGE u_range_table (
        .aclk           (aclk),
        .areset_n       (areset_n),
        .weight_i       (weight_i),
        .data_i         (data_i),
        .write_enable_i (write_enable_i),
        .addr_i         (addr_i),
        .symbol_dec_o   (symbol_dec),
        .symbol_rec_o   (symbol_rec),
        .weight_rec_o   (weight_rec_in)
    );

    AMDCHIPKILL_DECODER_STAGE amdchipkill_decoder (
        .aclk           (aclk),
        .areset_n       (areset_n),
        .symbol_i       (symbol_dec),
        .pp             (pp),
        .data_o         (data64_s2),
        .error_loc_o    (error_loc_o),
        .decode_res_o   (decode_res_o)
    );

    // 4. Data Extraction: MSB-First Alignment
    // data64_s2[63:56] is Corrected Symbol 0
    assign  vp_recovered_s2[0]   =   data64_s2[63:56];
    assign  vp_recovered_s2[1]   =   data64_s2[55:48];
    assign  vp_recovered_s2[2]   =   data64_s2[47:40];
    assign  vp_recovered_s2[3]   =   data64_s2[39:32];
    assign  vp_recovered_s2[4]   =   data64_s2[31:24];
    assign  vp_recovered_s2[5]   =   data64_s2[23:16];
    assign  vp_recovered_s2[6]   =   data64_s2[15:8];
    assign  vp_recovered_s2[7]   =   data64_s2[7:0];

    // 5. Weight Recovery
    RANGE_TABLE_Recovery recovery_table (
        .aclk           (aclk),
        .areset_n       (areset_n),
        .weight_i       (weight_rec_in),
        .symbol_i       (symbol_rec),
        .recovered      (vp_recovered_s2),
        .data_i         (data_i),
        .write_enable_i (write_enable_i),
        .addr_i         (addr_i),
        .weight_o       (weight_o)
    );

endmodule
