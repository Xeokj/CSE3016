`timescale 1ns / 1ps

module rc_tb;

reg clk, rst;
wire [3:0] out;

rc rc_tb(clk, rst, out);

initial begin
clk = 1'b0;
rst = 1'b0;
end

always #10 clk <= ~clk;
always #100 rst <= ~rst;
endmodule