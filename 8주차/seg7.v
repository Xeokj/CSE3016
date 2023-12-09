`timescale 1ns / 1ps

module seg7(
    input A, B, C, D,
    output a, b, c, d, e, f, g, dp, digit
);

assign a = (~B & ~D) | (~A & B & D) | (A & ~D) | (B & C) | (~A & C) | (A & ~B & ~C);
assign b = (~A & ~B) | (~B & ~D) | (~A & ~C & ~D) | (~A & C & D) | (A & ~C & D);
assign c = (A & ~B) | (~A & B) | (~A & ~C) | (~A & D) | (~C & D);
assign d = (~A & ~B & ~D) | (~B & C & D) | (B & ~C & D) | (B & C & ~D) | (A & ~C);
assign e = (~B & ~D) | (A & B) | (A & C) | (C & ~D);
assign f = (A & ~B) | (A & C) | (B & ~D) | (~C & ~D) | (~A & B & ~C);
assign g = (~A & B & ~C) | (~B & C) | (C & ~D) | (A & ~B) | (A & D);
assign dp = 1;
assign digit = a | b | c | d | e | f | g | dp;

endmodule