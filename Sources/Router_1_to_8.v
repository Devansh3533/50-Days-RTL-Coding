`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/09/2025 11:12:01 AM
// Design Name: 
// Module Name: Router_1_to_8
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


module Router_1_to_8(
    input x,enable,
    input [2:0] s,
    output reg [7:0] y 
    );

initial
begin
if(enable)
    begin
        case(s)
        3'b000: y[0] = x;
        3'b001: y[1] = x;
        3'b010: y[2] = x;
        3'b011: y[3] = x;
        3'b100: y[4] = x;
        3'b101: y[5] = x;
        3'b110: y[6] = x;
        3'b111: y[7] = x;
        default: y = 8'b0;
        endcase 
    end
    else
        y = 8'b0;
end
endmodule
