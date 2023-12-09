`timescale 1ns / 1ps

module two_bitc_tb;

reg clk, rst;
wire [1:0] out;

two_bitc two_bitc_tb(clk, rst, out);

initial begin
clk = 1'b0;
rst = 1'b0;
end

always #10 clk = ~clk;
always #200 rst = ~rst;

endmodule