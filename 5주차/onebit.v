`timescale 1ns / 1ps

module onebit(
    input ina, inb,
    output out1, out2, out3, out4
);

assign out1 = (ina == inb);
assign out2 = (ina != inb);
assign out3 = (ina > inb);
assign out4 = (ina < inb);

endmodule