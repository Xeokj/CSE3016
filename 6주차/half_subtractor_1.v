`timescale 1ns / 1ps

module half_subtractor_1(
    input ina, inb,
    output b, d
);

assign b = (~ina) & inb;
assign d = ina ^ inb;

endmodule