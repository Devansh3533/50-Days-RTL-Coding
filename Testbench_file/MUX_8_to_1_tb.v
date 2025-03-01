`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/01/2025 06:22:17 PM
// Design Name: 
// Module Name: MUX_8_to_1_tb
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


module MUX_8_to_1_tb();
reg s0,s1,s2,en;
reg [7:0] x;
wire y;

MUX_8_to_1 uut(
.s0(s0),
.s1(s1),
.s2(s2),
.x(x),
.en(en),
.y(y)
);

initial
begin
#150 $finish;
end

initial
begin
    x = 8'b11111111;
end

initial
begin
      en = 1'b1;
  #10 s0 = 1'b0; s1 = 1'b0; s2 = 1'b0;
  #10 s0 = 1'b1; s1 = 1'b0; s2 = 1'b0;
  #10 s0 = 1'b0; s1 = 1'b1; s2 = 1'b0;
  #10 s0 = 1'b1; s1 = 1'b1; s2 = 1'b0;
  
  #10 en = 1'b0; // pauses a little bit

  #10 s0 = 1'b0; s1 = 1'b0; s2 = 1'b1;
  #10 s0 = 1'b1; s1 = 1'b0; s2 = 1'b1;
  
  #10 en = 1'b1; // resuming the MUX
  
  #10 s0 = 1'b0; s1 = 1'b0; s2 = 1'b1;
  #10 s0 = 1'b1; s1 = 1'b0; s2 = 1'b1;
  #10 s0 = 1'b0; s1 = 1'b1; s2 = 1'b1;
  #10 s0 = 1'b1; s1 = 1'b1; s2 = 1'b1;
end
endmodule
