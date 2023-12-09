`timescale 1ns / 1ps

module sr_tb;

reg clk, rst, ina;
wire [3:0] out;

sr sr_tb(clk, rst, ina, out);

initial begin
clk = 1'b0;
rst = 1'b0;
ina = 1'b1;
end

always #10 clk <= ~clk;
always #50 ina <= ~ina;
always #100 rst <= ~rst;

endmodule