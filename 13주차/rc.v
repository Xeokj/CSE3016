`timescale 1ns / 1ps

module rc(clk, rst, out);
input clk, rst;
output [3:0] out;
reg [3:0] out;

initial out = 4'b0001;

always @(posedge clk) begin
    if(rst == 1'b1) out = 4'b0001;
    else begin
    out[3] <= out[2];
    out[2] <= out[1];    
    out[1] <= out[0];
    out[0] <= out[3];
    end
end

endmodule