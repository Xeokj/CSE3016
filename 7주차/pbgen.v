`timescale 1ns / 1ps

module pbgen(
    input ina, inb, inc, ind,
    output outp
);

assign outp = ina ^ inb ^ inc ^ ind;

endmodule