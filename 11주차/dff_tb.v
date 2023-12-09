`timescale 1ns / 1ps

module dff_tb;

reg CLK, D;
wire Q, nQ;

dff u_dff(
    .CLK(CLK), .D(D), .Q(Q), .nQ(nQ)
);

initial begin
CLK = 1'b0;
D = 1'b0;
end

always @(CLK or D) begin
CLK <= #20 ~CLK;
D <= #40 ~D;
end

endmodule
