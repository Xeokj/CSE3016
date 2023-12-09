`timescale 1ns / 1ps

module subt(a, b, d, bin, bout);

input[3:0] a, b;
input bin;
output[3:0] d;
output bout;
wire b1, b2, b3;
 
assign d[0] = a[0] ^ b[0] ^ bin;
assign d[1] = a[1] ^ b[1] ^ b1;
assign d[2] = a[2] ^ b[2] ^ b2;
assign d[3] = a[3] ^ b[3] ^ b3;
assign b1 = bin & (~a[0] ^ b[0]) | (~a[0] & b[0]);
assign b2 = b1 & (~a[1] ^ b[1]) | (~a[1] & b[1]);
assign b3 = b2 & (~a[2] ^ b[2]) | (~a[2] & b[2]);
assign bout = b3 & (~a[3] ^ b[3]) | (~a[3] & b[3]);

endmodule