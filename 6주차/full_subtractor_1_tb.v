`timescale 1ns / 1ps

module full_subtractor_1_tb;

reg ina, inb, bin; // input
wire bout, d; // output

full_subtractor_1 u_full_subtractor_1 (
    .ina(ina), .inb(inb), .bin(bin),
    .bout(bout), .d(d)
);

initial begin
    ina = 1'b0;
    inb = 1'b0;
    bin = 1'b0;
end

// blocking
always begin
    ina = #20 ~ina;
    inb = #20 ~inb;
    bin = #20 ~bin;
end

initial begin
    #1000
    $finish;
end

endmodule