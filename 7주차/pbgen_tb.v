`timescale 1ns / 1ps

module pbgen_tb;

reg ina, inb, inc, ind; // input
wire outp; // output

pbgen u_pbgen (
    .ina(ina), .inb(inb), .inc(inc), .ind(ind),
    .outp(outp)
);

initial begin
    ina = 1'b0;
    inb = 1'b0;
    inc = 1'b0;
    ind = 1'b0;
end

always ina = #80 ~ina;
always inb = #40 ~inb;
always inc = #20 ~inc;
always ind = #10 ~ind;

initial begin
    #500
    $finish;
end

endmodule