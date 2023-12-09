`timescale 1ns / 1ps

module half_adder(
    input ina, inb,
    output sum, carry
);

assign sum = ina ^ inb;
assign carry = ina & inb;

endmodule