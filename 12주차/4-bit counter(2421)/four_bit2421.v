`timescale 1ns / 1ps

module four_bit2421(clk, rst, out);

input clk, rst;
output [3:0] out;
reg [3:0] out;
reg [3:0] outt;

initial out = 4'b0000;
    
always @(posedge clk) begin
    if (rst == 1'b1)
        out = 4'b0000;
    else
        out = out + 1;

    if (out == 4'b1010)
        out = 4'b0000;
        
    if (out == 4'b0101)
       begin
       outt[3] = out[3];
       outt[2] = out[2];
       outt[1] = out[1];
       outt[0] = out[0];
       out[3] = outt[3] | (outt[2] & outt[1]) | (outt[2] & outt[0]);
       out[2] = outt[3] | (outt[2] & outt[1]) | (outt[2] & (~outt[0]));
       out[1] = outt[3] | ((~outt[2]) & outt[1]) | (outt[2] & (~outt[1]) & outt[0]);
       out[0] = outt[0];
       end
end
endmodule