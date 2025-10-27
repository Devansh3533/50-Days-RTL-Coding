`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/27/2025 04:02:10 PM
// Design Name: 
// Module Name: ud_load_counter
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


module ud_load_counter
#(parameter n=4)(
    input clk,reset_n,
    input load,
    input up, // when asserted, it is up counter, else it is low counter
    input enable,
    output [n-1:0] Q
    );
 reg [n-1:0] Q_reg, Q_next;
 
 always @(posedge clk, negedge enable,negedge reset_n)
    begin
        if(!reset_n)
            Q_reg <= 1'b0;
        else if(!enable)
            Q_reg <= Q_reg;
        else
            Q_reg <= Q_next;
    end 
 always @(Q_reg)
    begin
        Q_next <= Q_reg + 1;
    end
endmodule
