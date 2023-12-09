`timescale 1ns / 1ps

module dm(
    input a, b, f,
    output A, B, C, D
);

assign A = ~a & ~b & f;
assign B = a & ~b & f;
assign C = ~a & b & f;
assign D = a & b & f;

endmodule