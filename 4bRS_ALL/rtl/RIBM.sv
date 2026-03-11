module RIBM(
    input  logic        aclk,
    input  logic        areset_n,
    input  logic [3:0]  syndrome [3:0],
    output logic [3:0]  lambda[2:0],
    output logic [3:0]  omega[1:0]
);

    // 1. 구조체 대신 개별 신호 배열로 선언
    logic [7:0][3:0] st_d[0:4];
    logic [7:0][3:0] st_t[0:4];
    logic [3:0]      st_g[0:4];
    logic [4:0]      st_k[0:4];

    // 2. 스테이지 0 초기값 설정 (조합 회로)
    always_comb begin
        st_d[0] = {4'd0, 4'd1, 4'd0, 4'd0, syndrome[3], syndrome[2], syndrome[1], syndrome[0]}; //
        st_t[0] = {4'd0, 4'd1, 4'd0, 4'd0, syndrome[3], syndrome[2], syndrome[1], syndrome[0]}; //
        st_g[0] = 4'd1;
        st_k[0] = 5'd8;
    end

    // 3. 스테이지 1 ~ 4 파이프라인 생성
    genvar r;
    generate
        for (r = 0; r < 4; r = r + 1) begin : RIBM_STAGES
            wire [3:0] imm_0[6:0], imm_1[6:0];
            wire [3:0] next_d_val[6:0];
            wire       cond;

            // Step 1: Discrepancy 및 차기 d 연산
            for (genvar i = 0; i < 7; i = i + 1) begin : gen_mult
                GFMULT mul0(st_g[r], st_d[r][i+1], imm_0[i]);
                GFMULT mul1(st_d[r][0], st_t[r][i], imm_1[i]);
                assign next_d_val[i] = imm_0[i] ^ imm_1[i];
            end

            assign cond = (st_d[r][0] != 4'd0) && (st_g[r] != 4'd0) && (st_k[r][3] == 1'b1);

            always_ff @(posedge aclk or negedge areset_n) begin
                if (!areset_n) begin
                    st_d[r+1] <= '0;
                    st_t[r+1] <= '0;
                    st_g[r+1] <= '0;
                    st_k[r+1] <= '0;
                end else begin
                    // 차기 d 업데이트
                    for (int i = 0; i < 7; i++) st_d[r+1][i] <= next_d_val[i];
                    st_d[r+1][7] <= 4'd0;

                    // 차기 t, g, k 업데이트
                    for (int i = 0; i < 7; i++) 
                        st_t[r+1][i] <= cond ? st_d[r][i+1] : st_t[r][i];
                    
                    st_g[r+1] <= cond ? st_d[r][0] : st_g[r];
                    st_k[r+1] <= cond ? ~st_k[r] : st_k[r] + 5'd1;
                end
            end
        end
    endgenerate

    // 4. 최종 출력 할당 (4클럭 뒤 결과)
    assign lambda[0] = st_d[4][2];
    assign lambda[1] = st_d[4][3];
    assign lambda[2] = st_d[4][4];
    assign omega[0]  = st_d[4][0];
    assign omega[1]  = st_d[4][1];

endmodule