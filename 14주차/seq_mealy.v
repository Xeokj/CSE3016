`timescale 1ns / 1ps

module seq_mealy(clk, in, out);
input clk, in;
output out;
reg out;
reg [3:0] state;

initial state = 4'b0000;

always @(posedge clk) begin
    state = state << 1;
    state[0] = in;
    if(state == 4'b1101)
        out = 1'b1;
    else
        out = 1'b0;
end

endmodule