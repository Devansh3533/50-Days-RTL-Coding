`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/25/2025 11:21:24 AM
// Design Name: 
// Module Name: n_bit_register
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


module n_bit_register
#(parameter n = 4)
(
    input clk,
    input [n-1:0] D,
    output [n-1:0] Q
    );
    
//    Structural Modelling
// Best for visual understanding
    genvar k;
    generate
        for(k=0;k<n;k=k+1)
        begin:FF
            D_FF_reset A(
            .D(D[k]),
            .clk(clk),
            .reset_n(),
            .clear_n(),
            .Q(Q[k])
            );
        end
    endgenerate

// Behavioural Modelling
// Overlapping Flip-Flops

//reg [n-1:0] Q_reg, Q_next;
//always @(negedge clk)
//    begin
//        Q_reg <= Q_next;
//    end
//always @(D)
//    begin
//        Q_next = D;
//    end
//assign Q = Q_reg;

endmodule
