`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/25/2025 02:06:59 PM
// Design Name: 
// Module Name: Shift_register_load
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


module Shift_register_load
#(parameter n = 4)
(
    input clk,
    input SI,
    input [n-1:0] I,
    input load,
    input reset_n, 
    output [n-1:0] Q, // If we care about the content
    output SO
    );
reg [n-1:0] Q_reg,Q_next;

always @(posedge clk,negedge reset_n)
    begin
        if(!reset_n)
            Q_reg = 1'b0;
        else
            Q_reg <= Q_next;
    end
always @(SI,Q_reg)
    begin
    // Right Shift
        if(load)
            Q_next = I;
        else
            Q_next = {SI, Q_reg[n-1:1]};
    end

assign SO = Q_reg[0];
assign Q = Q_reg;

endmodule
