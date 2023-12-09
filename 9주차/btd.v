`timescale 1ns / 1ps

module btd(
    input A, B, C, D,
    output a, b, c, d, e, f, g, h, i
);

assign a = ~A & ~B & ~C & D;
assign b = ~A & ~B & C & ~D;
assign c = ~A & ~B & C & D;
assign d = ~A & B & ~C & ~D;
assign e = ~A & B & ~C & D;
assign f = ~A & B & C & ~D;
assign g = ~A & B & C & D;
assign h =  A & ~B & ~C & ~D;
assign i =  A & ~B & ~C & D;

endmodule