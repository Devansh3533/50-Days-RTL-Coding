`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/21/2025 06:03:42 PM
// Design Name: 
// Module Name: Decoder2X4
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


module Decoder2X4(
    input [1:0] w,
    output reg [3:0] y 
    );
    always @(w)
        begin
            case(w)
                2'b00 : y = 4'b0001;
                2'b01 : y = 4'b0010;
                2'b10 : y = 4'b0100;
                2'b11 : y = 4'b1000;
                default: y = 4'bx;
        endcase
//                if(w == 2'b00)
//                y = 4'b0001;
//                else if(w == 2'b01)
//                y = 4'b0010;
//                else if(w == 2'b10)
//                y = 4'b0100;
//                else if(w == 2'b11)
//                y = 4'b1000;
//                else
//                y = 4'bx;
//            y = 4'b0000;
//            y[w] = 1'b1;
    end
    
endmodule
