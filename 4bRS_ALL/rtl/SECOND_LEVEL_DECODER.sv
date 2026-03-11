module SECOND_LEVEL_DECODER(
    input  logic        aclk,
    input  logic        areset_n,
    input  logic [3:0]  vp[7:0],
    input  logic [3:0]  pp[3:0], 
    output logic [3:0]  recovered_vp[7:0]
);
    wire [3:0] syndrome[3:0];
    wire [3:0] lambda[2:0];
    wire [3:0] omega[1:0];
    wire [3:0] magnitude[7:0];
    wire [7:0] locator;

    // 1. Syndrome Generator
    SYNDROME_GENERATOR syndrome_generator(vp, pp, syndrome);

    // 2. RIBM (4단 파이프라인)
    RIBM ribm(
        .aclk           (aclk), 
        .areset_n       (areset_n),
        .syndrome       (syndrome), 
        .lambda(lambda), 
        .omega(omega)
    );

    // 3. VP Delay Line (RIBM 레이턴시인 4클럭에 맞춤)
    logic [3:0] vp_pipe [7:0][1:4];
    always_ff @(posedge aclk) begin
        for(int i=0; i<8; i++) begin
            vp_pipe[i][1] <= vp[i];
            vp_pipe[i][2] <= vp_pipe[i][1];
            vp_pipe[i][3] <= vp_pipe[i][2];
            vp_pipe[i][4] <= vp_pipe[i][3];
        end
    end

    // 4. Chien & Forney
    CHIEN chien(lambda, locator);
    FORNEY forney(lambda[1], omega, magnitude);

    // 5. 최종 에러 복구
    always_comb begin
        for (int i = 0; i < 8; i++) begin
            recovered_vp[i] = (locator[i]) ? (vp_pipe[i][4] ^ magnitude[i]) : vp_pipe[i][4];
        end
    end
endmodule