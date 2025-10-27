`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/25/2025 11:42:37 AM
// Design Name: 
// Module Name: n_bit_register_improved
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


module n_bit_register_improved
#(parameter n=4)
(
    input clk,
    input [n-1:0] D,
    input load,
    output [n-1:0] Q
    );

reg [n-1:0] Q_reg, Q_next;

// For creating structural Model, we need to create a new structure of D_FF with mux
// and then parameterized it in register

// Behavioural Modelling

always @(negedge clk)
    begin
        Q_reg <= Q_next; // Creates Latch
    end

// Next State Logic
always @(D,load)
    begin
        if(load)
            Q_next = D;
        else
            Q_next = Q_reg;
    end

assign Q = Q_reg;

endmodule
