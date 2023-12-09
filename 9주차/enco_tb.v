`timescale 1ns / 1ps

module enco_tb;

reg A, B, C, D;
wire E0, E1;

enco u_enco (
    .A(A), .B(B), .C(C), .D(D),
    .E0(E0), .E1(E1)
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