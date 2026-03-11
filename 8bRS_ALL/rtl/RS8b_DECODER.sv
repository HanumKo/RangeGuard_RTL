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

    logic [7:0] symbol [7:0];
    logic [79:0] data80;
    logic [63:0] data64;
    logic [7:0] vp_recovered[7:0];

    // 1. Range Mapping: BF16 Weight -> 8-bit Symbols (4-bit RID x 2)
    RANGE_TABLE_BF16_RID16 u_range_table (
        .aclk           (aclk),
        .areset_n       (areset_n),
        .weight_i       (weight_i),
        .symbol_o       (symbol),
        .data_i         (data_i),
        .write_enable_i (write_enable_i),
        .addr_i         (addr_i)
    );

    // 2. Codeword Packing: {Sym0, Sym1, ..., Sym7, PP0, PP1}
    assign data80 = {symbol[0], symbol[1], symbol[2], symbol[3], 
                    symbol[4], symbol[5], symbol[6], symbol[7], 
                    pp[1], pp[0]};

    // 3. AMD Chipkill Based RS Decoder
    AMDCHIPKILL_DECODER amdchipkill_decoder(
        .codeword_in            (data80),
        .Error_location_out     (error_loc_o),
        .Decode_result_out      (decode_res_o),
        .data_out               (data64)
    );

    // 4. Data Extraction: MSB-First Alignment
    // data64[63:56] is Corrected Symbol 0
    assign  vp_recovered[0]   =   data64[63:56];
    assign  vp_recovered[1]   =   data64[55:48];
    assign  vp_recovered[2]   =   data64[47:40];
    assign  vp_recovered[3]   =   data64[39:32];
    assign  vp_recovered[4]   =   data64[31:24];
    assign  vp_recovered[5]   =   data64[23:16];
    assign  vp_recovered[6]   =   data64[15:8];
    assign  vp_recovered[7]   =   data64[7:0];

    // 5. Weight Recovery
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