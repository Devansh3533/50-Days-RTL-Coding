`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/09/2025 11:40:58 AM
// Design Name: 
// Module Name: router_1_to_8_tb
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


module router_1_to_8_tb;
reg x,enable;
reg [2:0] s;
wire [7:0] y;

Router_1_to_8 uut(
    .x(x),
    .enable(enable),
    .s(s),
    .y(y));
    
initial
begin
x = 1; s = 3'b000; enable = 1;
#10 s = 3'b001; 
#10 s = 3'b010;
#10 s = 3'b011;
#10 s = 3'b001; enable = 0;
#10 s = 3'b100; enable = 1;
#10 s = 3'b101;
#10 s = 3'b110;
#10 s = 3'b111;
#5 $finish;
end
endmodule
