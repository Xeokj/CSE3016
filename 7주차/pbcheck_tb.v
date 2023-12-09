`timescale 1ns / 1ps

module pbcheck_tb;

reg ina, inb, inc, ind, inp; // input
wire oute; // output

pbcheck u_pbcheck (
    .ina(ina), .inb(inb), .inc(inc), .ind(ind), .inp(inp),
    .oute(oute)
);

initial begin
    ina = 1'b0;
    inb = 1'b0;
    inc = 1'b0;
    ind = 1'b0;
    inp = 1'b0;
end

always ina = #160 ~ina;
always inb = #80 ~inb;
always inc = #40 ~inc;
always ind = #20 ~ind;
always inp = #10 ~inp;

initial begin
    #500
    $finish;
end

endmodule