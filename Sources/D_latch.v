`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/21/2025 08:24:04 PM
// Design Name: 
// Module Name: D_latch
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


module D_latch(
    input D,
    input clk,
    output reg Qn,
    output Q_n
    );
    
  assign Q_n = ~Qn;
  always @(D,clk)
  begin
    Qn = Qn;
    if(clk)
    Qn = D;
    else
    Qn = Qn;
  end  
endmodule
