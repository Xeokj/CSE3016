`timescale 1ns / 1ps

module add(a, b, s, cin, cout);

input[3:0] a, b;
input cin;
output[3:0] s;
output cout;
wire c1, c2, c3;

assign s[0] = a[0] ^ b[0] ^ cin;
assign s[1] = a[1] ^ b[1] ^ c1;
assign s[2] = a[2] ^ b[2] ^ c2;
assign s[3] = a[3] ^ b[3] ^ c3;
assign c1 = cin & (a[0] ^ b[0]) | (a[0] & b[0]);
assign c2 = c1 & (a[1] ^ b[1]) | (a[1] & b[1]);
assign c3 = c2 & (a[2] ^ b[2]) | (a[2] & b[2]);
assign cout = c3 & (a[3] ^ b[3]) | (a[3] & b[3]);

endmodule