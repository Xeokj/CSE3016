`timescale 1ns / 1ps

module subt_tb;

reg [3:0] a, b;
reg bin;
wire [3:0] d;
wire bout;
// wire b1, b2, b3;

subt u_subt (
    .a(a), .b(b), .d(d), .bin(bin), .bout(bout)
);

initial begin
    a = 4'b0000;
    b = 4'b0000;
    bin = 1'b0;
end

always @ (a or b or bin) begin
a <= #10 a+4'b0001;
b <= #20 b-4'b0001;
bin <= #40 ~bin;
end

initial begin
    #1000
    $finish;
end

endmodule