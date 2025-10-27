`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/27/2025 09:48:14 PM
// Design Name: 
// Module Name: lfsr
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


module lfsr
#(parameter n = 3)    
(
 input clk,reset_n,
 output [1:n] Q   
    );
reg [1:n] Q_reg, Q_next;
wire taps;
always @(posedge clk, negedge reset_n)
    begin
        if(!reset_n)
        Q_reg <= 1'b1; // LFSR shouldn't start with 0 or FFFF
        else
        Q_reg <= Q_next;
    end
// Next state logic
always @(taps, Q_reg)
    Q_next = {taps,Q_reg[1:n-1]};
// output logic
assign Q = Q_reg;
// for n = 3
assign taps = Q_reg[3] ^ Q_reg[2];

endmodule
