`timescale 1ns / 1ps

module mu(
    input A, B, C, D, a, b,
    output x
);

assign x = (A & ~a & ~b) | (B & ~a & b) | (C & a & ~b) | (D & a & b);

endmodule