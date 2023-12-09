`timescale 1ns / 1ps

module deco_tb;

reg A, B;
wire D0, D1, D2, D3;

deco u_deco (
    .A(A), .B(B),
    .D0(D0), .D1(D1), .D2(D2), .D3(D3)
);

initial A = 1'b0;
initial B = 1'b0;

always A = #80 ~A;
always B = #40 ~B;

initial begin
#1000
$finish;
end

endmodule