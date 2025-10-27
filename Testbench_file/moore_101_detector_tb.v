`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/27/2025 11:27:40 PM
// Design Name: 
// Module Name: moore_101_detector_tb
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


module moore_101_detector_tb(
    );
   reg x, reset_n,clk;
   wire y;
   
   // Instantiating module
   moore_101_detector uut2(
   .clk(clk),
   .reset_n(reset_n),
   .x(x),
   .y(y));
   
   // Generating a clock signal
   localparam M = 10;
   localparam T = 10 ;
   always
        begin
        clk = 1'b1;
        #(M/2);
        clk = 1'b0;
        #(M/2);
        end
   // Simulation time
   initial
      begin
        #250 $finish;
      end
   // Generating stimuli
   initial 
        begin
       // Initialize reset and signals
            reset_n = 1'b0; // Assert reset
            x = 1'b0;
           #5 reset_n = 1'b1; 
       end
   initial
    begin
 #T x = 1'b0;
 #T x = 1'b1;
 #T x = 1'b0;
 #T x = 1'b0;
 #T x = 1'b1;
 #T x = 1'b1;
 #T x = 1'b0;
 #T x = 1'b1;
 #T x = 1'b0;
 #T x = 1'b1;
 #T x = 1'b1;
 #T x = 1'b1;
 #T x = 1'b0;
 #T x = 1'b1;
 #T x = 1'b0;
 #T x = 1'b0;
 #T x = 1'b0;
 #T x = 1'b1;
 #T x = 1'b0;
 #T x = 1'b1;
 #T x = 1'b0;
 #T x = 1'b0;
    end   
endmodule
