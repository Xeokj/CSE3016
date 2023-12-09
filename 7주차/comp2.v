`timescale 1ns / 1ps

module comp2(
    input ina, inb, inc, ind,
    output outf1, outf2, outf3
);

assign outf1 = (ina & (~inc)) | (inb & (~inc) & (~ind)) | (ina & inb & (~ind));
assign outf2 = ~((ina ^ inc) | (inb ^ ind));
assign outf3 = ((~ina) & inc) | ((~inb) & inc & ind) | ((~ina) & (~inb) & ind);

endmodule