`timescale 1ns / 1ps

module half_subtractor_1_tb;

reg ina, inb; // input
wire b, d; // output

half_subtractor_1 u_half_subtractor_1 (
    .ina(ina), .inb(inb),
    .b(b), .d(d)
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