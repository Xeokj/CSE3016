`timescale 1ns / 1ps

module seq_mealy_tb;

reg clk, in;
wire out;

seq_mealy seq_mealy_tb(clk, in, out);

initial begin
    clk = 1'b0;
    in = 1'b0;
    in <= #10 1'b1;
    in <= #30 1'b1;
    in <= #50 1'b0;
    in <= #70 1'b1;
    in <= #90 1'b1;
    in <= #110 1'b0;
    in <= #130 1'b1;
    in <= #150 1'b1;
    in <= #170 1'b0;
    in <= #190 1'b0;
    in <= #210 1'b1;
    in <= #230 1'b1;
    in <= #250 1'b0;
    in <= #270 1'b1;
    in <= #290 1'b0;
    in <= #310 1'b0;
    in <= #330 1'b0;
    in <= #350 1'b1;
    in <= #370 1'b1;
    in <= #390 1'b0;
    in <= #410 1'b1;
    in <= #430 1'b1;
    in <= #450 1'b1;
    in <= #470 1'b0;
    in <= #490 1'b1;
    in <= #510 1'b0;
    in <= #530 1'b1;
    in <= #550 1'b1;
end

always #10 clk <= ~clk;
endmodule