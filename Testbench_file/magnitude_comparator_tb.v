`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/09/2025 10:56:46 AM
// Design Name: 
// Module Name: magnitude_comparator_tb
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


module magnitude_comparator_tb;
reg [3:0] a,b;
wire x,y,z;

magitude_comparator uut(
    .a(a),
    .b(b),
    .x(x),
    .y(y),
    .z(z));

initial 
begin
a = 4'b0000; b = 4'b0000;
#10 a = 4'b0010; b = 4'b0001;
#10 a = 4'b1100; b = 4'b1010;
#10 a = 4'b1000; b = 4'b1110;
#10 a = 4'b0101; b = 4'b0101;
#10 a = 4'b0110; b = 4'b0101;
#10 a = 4'b1000; b = 4'b1000;
#10 a = 4'b1111; b = 4'b1100;
#10 a = 4'b0010; b = 4'b1111;
#10 a = 4'b0111; b = 4'b1000;
#10 a = 4'b1101; b = 4'b1110;
#10 a = 4'b1111; b = 4'b1111;
#10 $finish();
end
    
endmodule
