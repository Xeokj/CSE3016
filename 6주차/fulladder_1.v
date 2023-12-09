`timescale 1ns / 1ps

module fulladder_1(
    input ina, inb, cin,
    output sum, cout
);

assign sum = (ina ^ inb) ^ cin;
assign cout = (ina & inb) | ((ina ^ inb) & cin);

endmodule