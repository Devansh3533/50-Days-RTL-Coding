`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/01/2025 06:01:21 PM
// Design Name: 
// Module Name: MUX_8_to_1
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


module MUX_8_to_1(
    input s0,s1,s2,
    input [7:0] x,
    input en,
    output reg y
    );
    wire [2:0] p;
   assign p = {s2,s1,s0};
   always @(p)
       begin
        if(en)
          begin
           case(p)
           3'b000: y = x[0];
           3'b001: y = x[1];
           3'b010: y = x[2];
           3'b011: y = x[3];
           3'b100: y = x[4];
           3'b101: y = x[5];
           3'b110: y = x[6];
           3'b111: y = x[7];
           default: y = 1'bx;
           endcase
         end
         else 
            y = 1'b0;
    end
endmodule
