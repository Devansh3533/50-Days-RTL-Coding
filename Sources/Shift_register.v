`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/25/2025 01:19:41 PM
// Design Name: 
// Module Name: Shift_register
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


module Shift_register
#(parameter n = 4)
(
    input clk,
    input SI,
    output [n-1:0] Q,
    output SO
    );
reg [n-1:0] Q_reg,Q_next;

always @(posedge clk)
    begin
        Q_reg <= Q_next;
    end
always @(SI,Q_reg)
    begin
    // Right Shift
        Q_next = {SI, Q_reg[n-1:1]};
    end
    // Left Shift
//    begin
//        Q_next = {Q_reg[n-2:1], SI};
//    end
assign SO = Q_reg[0];
assign Q = Q_reg;

endmodule
