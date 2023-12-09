`timescale 1ns / 1ps

module srff_2(CLK, R, S, Q, nQ);

input CLK, R, S;
output Q, nQ;

assign Q = ~((R & CLK) | nQ);
assign nQ = ~((S & CLK) | Q);
 
endmodule