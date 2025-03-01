`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/02/2025 11:32:28 AM
// Design Name: 
// Module Name: Full_adder
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


module Full_adder(
    input a,b,cin,
    output cout,
    output sum
    );
    wire t1,t2,t3;
    Half_adder Ha1(
    .a(a),
    .b(b),
    .carry(t2),
    .sum(t1));
    
    Half_adder Ha2(
    .a(t1),
    .b(cin),
    .carry(t3),
    .sum(sum));
    assign cout = t2 | t3;
endmodule
