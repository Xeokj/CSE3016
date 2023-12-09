`timescale 1ns / 1ps


module bool4(
    input ina, inb, inc,
    output outd
);

assign outd = ~((ina | inb) & inc);

endmodule