`timescale 1ns / 1ps

module full_subtractor_1(
    input ina, inb, bin,
    output bout, d
);

assign bout = ((~(ina ^ inb)) & bin) | ((~ina) & inb);
assign d = (ina ^ inb) ^ bin;

endmodule