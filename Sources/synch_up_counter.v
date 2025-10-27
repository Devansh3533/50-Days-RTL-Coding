`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/26/2025 10:25:24 AM
// Design Name: 
// Module Name: synch_up_counter
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


module synch_up_counter
    #(parameter n = 4)
    (
    input clk,reset_n,
    output [3:0] Q
    );
    wire Q0_next, Q1_next, Q2_next, Q3_next;
    
    assign Q0_next = 1'b1;
    T_FF FF0(
    .clk(clk),
    .reset_n(reset_n),
    .T(Q0_next),
    .Q(Q[0])
    );
    
    assign Q1_next = Q0_next & Q[0];
    T_FF FF1(
    .clk(clk),
    .reset_n(reset_n),
    .T(Q1_next),
    .Q(Q[1])
    );
    
    assign Q2_next = Q1_next & Q[1];
    T_FF FF2(
    .clk(clk),
    .reset_n(reset_n),
    .T(Q2_next),
    .Q(Q[2])
    );
    
    assign Q3_next = Q2_next & Q[2];
    T_FF FF3(
    .clk(clk),
    .reset_n(reset_n),
    .T(Q3_next),
    .Q(Q[3])
    );
endmodule
