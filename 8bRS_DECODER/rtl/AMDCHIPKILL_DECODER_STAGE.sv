module AMDCHIPKILL_DECODER_STAGE(
    input  logic        aclk,
    input  logic        areset_n,
    input  logic [7:0]  symbol_i [7:0],
    input  logic [7:0]  pp [1:0],

    output logic [63:0] data_o,
    output logic [3:0]  error_loc_o,
    output logic [1:0]  decode_res_o
);

    logic [79:0] codeword_in;
    logic [63:0] data_c;
    logic [3:0]  error_loc_c;
    logic [1:0]  decode_res_c;

    assign codeword_in = {
        symbol_i[0], symbol_i[1], symbol_i[2], symbol_i[3],
        symbol_i[4], symbol_i[5], symbol_i[6], symbol_i[7],
        pp[1], pp[0]
    };

    AMDCHIPKILL_DECODER core_decoder (
        .codeword_in        (codeword_in),
        .Error_location_out (error_loc_c),
        .Decode_result_out  (decode_res_c),
        .data_out           (data_c)
    );

    always_ff @(posedge aclk or negedge areset_n) begin
        if (!areset_n) begin
            data_o       <= '0;
            error_loc_o  <= '0;
            decode_res_o <= '0;
        end else begin
            data_o       <= data_c;
            error_loc_o  <= error_loc_c;
            decode_res_o <= decode_res_c;
        end
    end

endmodule
