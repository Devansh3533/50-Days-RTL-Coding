`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/21/2025 06:48:33 PM
// Design Name: 
// Module Name: decoder2X4_en_tb
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


module decoder2X4_en_tb(
    );
    reg [1:0] a;
    reg en;
    wire [3:0] c;
    
    Decoder2X4_en uut(
    .w(a),
    .en(en),
    .y(c)
    );
    
    initial
    begin
    #60 $finish;
    end
    
    initial
    begin
    en = 0; a = 2'b11;
    #10 en = 1; a = 2'b00;
    #10 en = 1; a = 2'b01;
    #10 en = 1; a = 2'b10;
    #10 en = 0; a = 2'b10;
    #10 en = 1; a = 2'b11;
    end 
    
    initial
    begin
    $monitor("$time = %3d\t En = %1b\t W = %2b\t Y = %4b",$time,en,a,c);
    end
endmodule
