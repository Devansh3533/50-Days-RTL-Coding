`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/26/2025 10:43:03 AM
// Design Name: 
// Module Name: synch_up_counter_tb
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


module synch_up_counter_tb(
    );    
    reg clk,reset_n;
    wire [3:0] Q;
    
    // Instantiate module under test
    synch_up_counter uut(
    .clk(clk),
    .reset_n(reset_n),
    .Q(Q)
    );
    // timer
    initial
    #200 $stop;
    
    // Generate stimuli
    
    // generate clock signal
//    localparam T = 10;
    initial
    begin
        clk = 1'b1;
    end
    always
    begin
        #5 clk = ~clk;
    end
    
    initial
    begin
    // issue a quck reset for 2ns
    reset_n = 1'b0;
    #2 reset_n = 1'b1;
    end
endmodule
