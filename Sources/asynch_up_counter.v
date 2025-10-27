`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/25/2025 10:10:39 PM
// Design Name: 
// Module Name: asynch_up_counter
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


module asynch_up_counter(
    input clk,
    input reset_n,
    output [3:0] Q
    );
    
    T_FF FF1(
    .clk(clk),
    .reset_n(reset_n),
    .T(1'b1),
    .Q(Q[0])
    );
    
    T_FF FF2(
    .clk(~Q[0]),
    .reset_n(reset_n),
    .T(1'b1),
    .Q(Q[1])
    );
    
    T_FF FF3(
    .clk(~Q[1]),
    .reset_n(reset_n),
    .T(1'b1),
    .Q(Q[2])
    );
    
    T_FF FF4(
    .clk(~Q[2]),
    .reset_n(reset_n),
    .T(1'b1),
    .Q(Q[3])
    );
endmodule
