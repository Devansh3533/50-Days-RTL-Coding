`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/02/2025 12:22:01 PM
// Design Name: 
// Module Name: Carry_Look_Ahead_Adder_4bit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Carry_Look_Ahead_Adder_4bit(
    input [3:0] a,b,
    input cin,
    output [3:0] sum,
    output wire [4:1] c_out
    );
    reg G0,G1,G2,G3;
    reg P0,P1,P2,P3;
    
    // Combinational ckt for carry
    
    always @(cin,a,b)
    begin
        G0 = a[0] & b[0];
        G1 = a[1] & b[1];
        G2 = a[2] & b[2];
        G3 = a[3] & b[3];
        P0 = a[0] ^ b[0];
        P1 = a[1] ^ b[1];
        P2 = a[2] ^ b[2];
        P3 = a[3] ^ b[3];
        end
   assign c_out[1] = G0 | (P0 & cin);
   assign c_out[2] = G1 | (P1 & c_out[1]);
   assign c_out[3] = G2 | (P2 & c_out[2]);
   assign c_out[4] = G3 | (P3 & c_out[3]);

    Full_adder fa1(
    .a(a[0]),
    .b(b[0]),
    .cin(cin),
    .sum(sum[0]));
    
    Full_adder fa2(
    .a(a[1]),
    .b(b[1]),
    .cin(c_out[1]),
    .sum(sum[1]));
    
    Full_adder fa3(
    .a(a[2]),
    .b(b[2]),
    .cin(c_out[2]),
    .sum(sum[2]));
    
    Full_adder fa4(
    .a(a[3]),
    .b(b[3]),
    .cin(c_out[3]),
    .sum(sum[3]));

endmodule
