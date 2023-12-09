`timescale 1ns / 1ps

module bcdadd(
    input [3:0] a, b,
    input cin,
    output [3:0] sum,
    output carry
);

wire [3:0] s;
wire c1, c2, c3, k, cout;
wire C1, C2, C3, Cin;

assign s[0] = a[0] ^ b[0] ^ cin;
assign s[1] = a[1] ^ b[1] ^ c1;
assign s[2] = a[2] ^ b[2] ^ c2;
assign s[3] = a[3] ^ b[3] ^ c3;
assign c1 = (cin & (a[0] ^ b[0])) | (a[0] & b[0]);
assign c2 = (c1 & (a[1] ^ b[1])) | (a[1] & b[1]);
assign c3 = (c2 & (a[2] ^ b[2])) | (a[2] & b[2]);
assign k = (c3 & (a[3] ^ b[3])) | (a[3] & b[3]);
assign cout = k | (s[3] & s[2]) | (s[3] & s[1]);
assign Cin = 0;

assign sum[0] = s[0] ^ 0 ^ Cin;
assign sum[1] = s[1] ^ cout ^ C1;
assign sum[2] = s[2] ^ cout ^ C2;
assign sum[3] = s[3] ^ 0 ^ C3;
assign C1 = (Cin & (s[0] ^ 0)) | (s[0] & 0);
assign C2 = (C1 & (s[1] ^ cout)) | (s[1] & cout);
assign C3 = (C2 & (s[2] ^ cout)) | (s[2] & cout);
assign carry = (C3 & (s[3] ^ 0)) | (s[3] & 0);

endmodule