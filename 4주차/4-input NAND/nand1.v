`timescale 1ns / 1ps

module nand1(
    input ina, inb, inc, ind,
    output oute, outf, outg
);
    
    assign oute = ~(ina & inb);
    assign outf = ~(oute & inc);
    assign outg = ~(outf & ind);
    
endmodule
