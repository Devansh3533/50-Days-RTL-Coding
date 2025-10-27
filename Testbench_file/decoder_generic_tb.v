`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/21/2025 07:55:12 PM
// Design Name: 
// Module Name: decoder_generic_tb
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


module decoder_generic_tb(
    );
    parameter n = 6;
    reg [n-1:0] a;
    reg en;
    wire [2**n - 1:0] c;
    
    decoder_generic #(.n(n)) uut(
    .w(a),
    .en(en),
    .y(c)
    );
    
    initial
    begin
        #600 $finish;
    end
    integer i;
    initial
    begin
        en = 0;
        a = 'bx;
        #10 en = 1;
        for(i=0;i<2**n -1;i=i+1)
            begin
                #10 a = i;
            end
    end
    
    initial
    begin
    $monitor("$time = %4d\t en = %1d\t W = %3d\t Y = %b",$time,en,a,c);
    end
endmodule
