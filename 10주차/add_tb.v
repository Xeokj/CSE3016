`timescale 1ns / 1ps

module add_tb;

reg [3:0] a, b;
reg cin;
wire [3:0] s;
wire cout;
// wire c1, c2, c3;

add u_add (
    .a(a), .b(b), .s(s), .cin(cin), .cout(cout)
);

initial begin
    a = 4'b0000;
    b = 4'b0000;
    cin = 1'b0;
end

always @ (a or b or cin) begin
a <= #10 a+4'b0001;
b <= #20 b-4'b0001;
cin <= #40 ~cin;
end

initial begin
    #1000
    $finish;
end
                                               
endmodule