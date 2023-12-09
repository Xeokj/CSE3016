`timescale 1ns / 1ps

module code_converter_1_tb;

reg ina, inb, inc, ind; // input
wire oute, outf, outg, outh; // output

code_converter_1 u_code_converter_1 (
    .ina(ina), .inb(inb), .inc(inc), .ind(ind),
    .oute(oute), .outf(outf), .outg(outg), .outh(outh)
);

initial begin
    ina = 1'b0;
    inb = 1'b0;
    inc = 1'b0;
    ind = 1'b0;
end

// blocking
always begin
    ina = #20 ~ina;
    inb = #20 ~inb;
    inc = #20 ~inc;
    ind = #20 ~ind;
end

initial begin
    #1000
    $finish;
end

endmodule