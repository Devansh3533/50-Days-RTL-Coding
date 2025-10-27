`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/21/2025 07:05:15 PM
// Design Name: 
// Module Name: decoder_generic
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


module decoder_generic
#(parameter n = 4)
(
    input [n-1:0] w,
    input en,
    output reg [2**n - 1:0] y
    );
    
always @(w,en)
    begin
        y = 'b0; 
        if(en) 
        y[w] = 1'b1;
        else
        y = 'b0;
    end
endmodule
