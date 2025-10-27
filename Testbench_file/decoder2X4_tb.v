`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/21/2025 06:24:27 PM
// Design Name: 
// Module Name: decoder2X4_tb
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


module decoder2X4_tb();
reg [1:0] a;
wire [3:0] c;

Decoder2X4 uut(
    .w(a),
    .y(c)
);

initial
    begin
        #60 $finish;
    end

initial
begin
    a = 2'b00;
    #10 a = 2'b01;
    #10 a = 2'b10;
    #10 a = 2'b11;
    #10 a = 2'bx;
end

initial 
begin
    $monitor("$time = %3d\t W = %2d\t Y = %4d",$time, a,c);
end
endmodule
