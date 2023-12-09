`timescale 1ns / 1ps

module half_adder_tb;

reg ina, inb; // input
wire sum, carry; // output

half_adder u_half_adder1 (
    .ina(ina), .inb(inb),
    .sum(sum), .carry(carry)
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