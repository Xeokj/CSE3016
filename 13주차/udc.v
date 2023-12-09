`timescale 1ns / 1ps

module udc(clk, rst, ud, out, digit, d7);
input clk, rst, ud;
output [3:0] out;
output [6:0] d7;
output digit;
reg [3:0] out;
reg [6:0] d7;

initial out = 4'b0000;

initial begin
        d7[0] = 0; d7[1] = 0; d7[2] = 0; d7[3] = 0; d7[4] = 0; d7[5] = 0; d7[6] = 0;
end

always @(posedge clk) begin
    if (rst == 1'b1) begin
        out = 4'b0000;
        d7[0] = 0; d7[1] = 0; d7[2] = 0; d7[3] = 0; d7[4] = 0; d7[5] = 0; d7[6] = 0;
    end
    else begin
        if (ud == 1'b1) begin
        out = out + 4'b0001;
        d7[0] = 0; d7[1] = 1; d7[2] = 1; d7[3] = 1; d7[4] = 1; d7[5] = 1; d7[6] = 0;
        end
        else begin
        out = out - 4'b0001;
        d7[0] = 0; d7[1] = 1; d7[2] = 1; d7[3] = 1; d7[4] = 1; d7[5] = 0; d7[6] = 1;
        end
    end
end

assign digit = d7[0] | d7[1] | d7[2] | d7[3] | d7[4] | d7[5] | d7[6];

endmodule