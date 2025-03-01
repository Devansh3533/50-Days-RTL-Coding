`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/08/2025 11:23:14 PM
// Design Name: 
// Module Name: binary_adder_subtractor_tb
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


module binary_adder_subtractor_tb;
reg select;
reg [3:0] a,b;
wire [3:0] sum;
wire c_out;

Binary_adder_subtractor uut(
    .select(select),
    .a(a),
    .b(b),
    .sum(sum),
    .c_out(c_out));
    
initial
begin
a = 4'b0000 ; b = 4'b0000 ; select = 0;
#5 a = 4'b0001; b = 4'b0000 ; select = 0;
#5 a = 4'b1110; b = 4'b1100 ; select = 1;
#5 a = 4'b1101; b = 4'b0000 ; select = 0;
#5 a = 4'b0101; b = 4'b0110 ; select = 1;
#5 a = 4'b1011; b = 4'b1001 ; select = 0;
#5 a = 4'b0101; b = 4'b0101 ; select = 1;
#5 a = 4'b1101; b = 4'b1001; select = 1;
#5 a = 4'b1101; b = 4'b1101 ; select = 0;
#5 a = 4'b1010; b = 4'b1111 ; select = 0;
#5 a = 4'b0111; b = 4'b1100 ; select = 1;
#5 a = 4'b1111; b = 4'b0100 ; select = 1;
#5 a = 4'b0110; b = 4'b1111 ; select = 1;
#10 $finish();
end
endmodule
