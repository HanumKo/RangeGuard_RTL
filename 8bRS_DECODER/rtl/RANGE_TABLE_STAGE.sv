module RANGE_TABLE_STAGE(
    input  logic        aclk,
    input  logic        areset_n,
    input  logic [15:0] weight_i [15:0],
    input  logic [7:0]  data_i,
    input  logic        write_enable_i,
    input  logic [31:0] addr_i,

    output logic [7:0]  symbol_dec_o [7:0],
    output logic [7:0]  symbol_rec_o [7:0],
    output logic [15:0] weight_rec_o [15:0]
);

    logic [7:0]  symbol_s1 [7:0];
    logic [15:0] weight_s1 [15:0];

    RANGE_TABLE_BF16_RID16 core_range_table (
        .aclk           (aclk),
        .areset_n       (areset_n),
        .weight_i       (weight_i),
        .symbol_o       (symbol_s1),
        .data_i         (data_i),
        .write_enable_i (write_enable_i),
        .addr_i         (addr_i)
    );

    integer i;
    always_ff @(posedge aclk or negedge areset_n) begin
        if (!areset_n) begin
            for (i = 0; i < 16; i++) begin
                weight_s1[i]    <= '0;
                weight_rec_o[i] <= '0;
            end
            for (i = 0; i < 8; i++) begin
                symbol_dec_o[i] <= '0;
                symbol_rec_o[i] <= '0;
            end
        end else begin
            for (i = 0; i < 16; i++) begin
                weight_s1[i]    <= weight_i[i];
                weight_rec_o[i] <= weight_s1[i];
            end
            for (i = 0; i < 8; i++) begin
                symbol_dec_o[i] <= symbol_s1[i];
                symbol_rec_o[i] <= symbol_dec_o[i];
            end
        end
    end

endmodule
