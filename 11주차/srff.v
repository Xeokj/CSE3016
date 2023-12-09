`timescale 1ns / 1ps

module srff(CLK, R, S, Q, nQ);

input CLK, R, S;
output Q, nQ;

assign Q = ~(~(S & CLK) & nQ);
assign nQ = ~(~(R & CLK) & Q);

endmodule