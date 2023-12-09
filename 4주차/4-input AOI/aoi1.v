`timescale 1ns / 1ps

module aoi1(
    input ina, inb, inc, ind,
    output oute, outf, outg
);
    
    assign oute = ina & inb;
    assign outf = inc & ind;
    assign outg = ~(oute | outf);
    
endmodule
