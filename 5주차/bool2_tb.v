`timescale 1ns / 1ps

module bool2_tb;

reg ina, inb, inc; // input
wire outd; // output

bool2 u_bool2 (
    .ina(ina), .inb(inb), .inc(inc),
    .outd(outd)
);

initial begin
    ina = 1'b0;
    inb = 1'b0;
    inc = 1'b0;
end

// blocking
always begin
    ina = #20 ~ina;
    inb = #20 ~inb;
    inc = #20 ~inc;
end

initial begin
    #1000
    $finish;
end

endmodule