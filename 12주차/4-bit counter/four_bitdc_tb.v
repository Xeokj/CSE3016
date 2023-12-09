`timescale 1ns / 1ps

module four_bitdc_tb;

reg clk, rst;
wire [3:0] out;

four_bitdc four_bitdc_tb(clk, rst, out);

initial begin
clk = 1'b0;
rst = 1'b0;
end

always #10 clk = ~clk;
always #250 rst = ~rst;

endmodule