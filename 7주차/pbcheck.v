`timescale 1ns / 1ps

module pbcheck(
    input ina, inb, inc, ind, inp,
    output oute
);

assign oute = ina ^ inb ^ inc ^ ind ^ inp;

endmodule