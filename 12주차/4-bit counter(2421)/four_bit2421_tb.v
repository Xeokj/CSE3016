`timescale 1ns / 1ps

module four_bit2421_tb;

reg clk, rst;
wire [3:0] out;

four_bit2421 four_bit2421_tb(clk, rst, out);

initial begin
clk = 1'b0;
rst = 1'b0;
end

always #10 clk = ~clk;
always #400 rst = ~rst;

endmodule