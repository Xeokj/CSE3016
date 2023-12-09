`timescale 1ns / 1ps

module code_converter_1(
    input ina, inb, inc, ind,
    output oute, outf, outg, outh
);

assign oute = ina | (inb & inc) | (inb & ind);
assign outf = ina | (inb & inc) | (inb & (~ind));
assign outg = ina | ((~inb) & inc) | (inb & (~inc) & ind);
assign outh = ind;

endmodule