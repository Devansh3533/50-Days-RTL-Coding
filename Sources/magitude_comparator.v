`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/09/2025 10:45:26 AM
// Design Name: 
// Module Name: magitude_comparator
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


module magitude_comparator(
    input [3:0] a,b,
    output x,y,z
    );

//assign x = (a[3]&(~b[3])) | (a[2]&(~b[2])) | (a[1]&(~b[1])) | (a[0]&(~b[0]));
//assign y = (a[3:0] == b[3:0]);
//assign z = (~a[3]&(b[3])) | (~a[2]&(b[2])) | (~a[1]&(b[1])) | (~a[0]&(b[0]));
assign x = (a>b) ? 1'b1:1'b0;
assign y = (a==b) ? 1'b1:1'b0;
assign z = (a<b) ? 1'b1:1'b0;
endmodule
