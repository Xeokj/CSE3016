`timescale 1ns / 1ps

module mu_tb;

reg A, B, C, D, a, b;
wire x;

mu u_mu (
    .A(A), .B(B), .C(C), .D(D), .a(a), .b(b),
    .x(x)
);

initial A = 1'b0;
initial B = 1'b0;
initial C = 1'b0;
initial D = 1'b0;
initial a = 1'b0;
initial b = 1'b0;

always A = #320 ~A;
always B = #160 ~B;
always C = #80 ~C;
always D = #40 ~D;
always a = #20 ~a;
always b = #10 ~b;

initial begin
#1500
$finish;
end

endmodule