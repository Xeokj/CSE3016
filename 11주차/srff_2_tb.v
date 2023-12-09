`timescale 1ns / 1ps
module srff_2_tb;

reg CLK, R, S;
wire Q, nQ;

srff_2 u_srff_2(
    .CLK(CLK), .R(R), .S(S), .Q(Q), .nQ(nQ)
);

initial begin
    CLK = 1'b0;
    S = 1'b0;
    R = 1'b0;
end

always @(CLK or S or R) begin
    CLK <= #10 ~CLK;
    S <= #20 ~S;
    R <= #40 ~R;
end

endmodule








