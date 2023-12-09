`timescale 1ns / 1ps

module fulladder_1_tb;

reg ina, inb, cin; // input
wire sum, cout; // output

fulladder_1 u_fulladder_1 (
    .ina(ina), .inb(inb), .cin(cin),
    .sum(sum), .cout(cout)
);

initial begin
    ina = 1'b0;
    inb = 1'b0;
    cin = 1'b0;
end

// blocking
always begin
    ina = #20 ~ina;
    inb = #20 ~inb;
    cin = #20 ~cin;
end

initial begin
    #1000
    $finish;
end

endmodule