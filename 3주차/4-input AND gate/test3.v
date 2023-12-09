`timescale 1ns / 1ps

module test3(
    input ina, inb, inc, ind,
    output oute, outf, outg
);
    
    assign oute = ina & inb;
    assign outf = oute & inc;
    assign outg = outf & ind;
    
endmodule
