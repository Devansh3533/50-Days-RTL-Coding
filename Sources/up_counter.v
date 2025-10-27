`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/27/2025 03:38:06 PM
// Design Name: 
// Module Name: up_counter
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


module up_counter
    #(parameter n=4)
    (
    input clk,reset_n,
 //   input up,
    output [n-1:0]Q
    );
reg [n-1:0] Q_reg, Q_next;

//Behavioural Description of Counter
always @(posedge clk, negedge reset_n)
    begin
        if(!reset_n)
        Q_reg <= 1'b0;
        else
        Q_reg <= Q_next;
    end    
always @(Q_reg)
    begin
        Q_next = Q_reg + 1; // use - for down counter
    end
    assign Q = Q_reg;
endmodule
