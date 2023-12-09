`timescale 1ns / 1ps

module onebit_tb;

reg ina, inb; // input
wire out1, out2, out3, out4; // output

onebit u_onebit (
    .ina(ina), .inb(inb),
    .out1(out1), .out2(out2), .out3(out3), .out4(out4)
);

initial begin
    ina = 1'b0;
    inb = 1'b0;
end

// blocking
always begin
    ina = #20 ~ina;
    inb = #20 ~inb;
end

initial begin
    #1000
    $finish;
end

endmodule