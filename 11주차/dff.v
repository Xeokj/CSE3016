`timescale 1ns / 1ps

module dff(D, CLK, Q, nQ);

input D, CLK;
output Q, nQ;

assign Q = ~(~(D & CLK) & nQ);
assign nQ = ~(~((~D) & CLK) & Q);

endmodule

