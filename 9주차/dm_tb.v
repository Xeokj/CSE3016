`timescale 1ns / 1ps

module dm_tb;

reg a, b, f;
wire A, B, C, D;

dm u_dm (
    .a(a), .b(b), .f(f),
    .A(A), .B(B), .C(C), .D(D)
);

initial a = 1'b0;
initial b = 1'b0;
initial f = 1'b0;

always a = #160 ~a;
always b = #80 ~b;
always f = #40 ~f;

initial begin
#1000
$finish;
end

endmodule