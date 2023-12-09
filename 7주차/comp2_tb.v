`timescale 1ns / 1ps

module comp2_tb;

reg ina, inb, inc, ind; // input
wire outf1, outf2, outf3; // output

comp2 u_comp2 (
    .ina(ina), .inb(inb), .inc(inc), .ind(ind),
    .outf1(outf1), .outf2(outf2), .outf3(outf3)
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