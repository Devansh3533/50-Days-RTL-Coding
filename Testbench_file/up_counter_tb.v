`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/27/2025 03:44:00 PM
// Design Name: 
// Module Name: up_counter_tb
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


module up_counter_tb(
    );
 localparam n = 4;
 reg clk, reset_n;
 wire [n-1:0] Q;
 
 // module instantiations
 up_counter #(.n(n)) uut(
    .clk(clk),
    .reset_n(reset_n),
    .Q(Q)
    );
 
 // timer
 initial
    #700 $finish;
 
 // Generate stimuli
 
 // Generationg a clock signal
 localparam T = 20;
 always
    begin
    clk = 1'b1;
    #(T/2);
    clk = 1'b0;
    #(T/2);
    end
 initial
    begin
    // issue a quick reset for 2 ns
    reset_n = 1'b0;
    #2 reset_n = 1'b1;
    end
endmodule
