`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/02/2025 11:28:23 AM
// Design Name: 
// Module Name: ripple_carry_adder_4bit
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


module ripple_carry_adder_4bit(
    input [3:0] a,b,
    input cin,
    output [3:0] sum,
    output c_out
    );
    wire t1,t2,t3;
    Full_adder fa1(
    .a(a[0]),
    .b(b[0]),
    .cin(cin),
    .cout(t1),
    .sum(sum[0]));
    
    Full_adder fa2(
    .a(a[1]),
    .b(b[1]),
    .cin(t1),
    .cout(t2),
    .sum(sum[1]));
    
    Full_adder fa3(
    .a(a[2]),
    .b(b[2]),
    .cin(t2),
    .cout(t3),
    .sum(sum[2]));
    
    Full_adder fa4(
    .a(a[3]),
    .b(b[3]),
    .cin(t2),
    .cout(c_out),
    .sum(sum[3]));
    
endmodule
