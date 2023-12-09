`timescale 1ns / 1ps

module udc_tb;

reg clk, rst, ud;
wire[3:0] out;

udc udc_tb(clk, rst, ud, out);

initial begin
clk = 1'b0;
rst = 1'b0;
ud = 1'b1;
end

always #10 clk <= ~clk;
always #200 ud <= ~ud;
always #300 rst <= ~rst;

endmodule