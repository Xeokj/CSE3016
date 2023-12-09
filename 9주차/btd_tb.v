`timescale 1ns / 1ps

module btd_tb;

reg A, B, C, D;
wire a, b, c, d, e, f, g, h, i;

btd u_btd (
    .A(A), .B(B), .C(C), .D(D),
    .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g), .h(h), .i(i)
);

initial A = 1'b0;
initial B = 1'b0;
initial C = 1'b0;
initial D = 1'b0;

always A = #160 ~A;
always B = #80 ~B;
always C = #40 ~C;
always D = #20 ~D;

initial begin
#1000
$finish;
end

endmodule