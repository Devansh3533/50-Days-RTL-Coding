`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/20/2025 06:00:55 PM
// Design Name: 
// Module Name: adder_subtractor_nbits_tb
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


module adder_subtractor_nbits_tb(
    );
    parameter n = 4;
    reg [n-1:0] x1, y1;
    reg add_n1;
    wire [n-1:0] s1;
    wire c_out1, overflow1;
    
    adder_subtractor_nbits #(.n(n)) uut(
    .x(x1),
    .y(y1),
    .add_n(add_n1),
    .s(s1),
    .c_out(c_out1),
    .overflow(overflow1)
    );
    
    // Specify the stopwatch to stop the stimulation
    initial
    begin
        #40 $finish;
    end
    
    // Generate stimuli using initial, always
    /* for combinational circuits, generally use initial
    for sequential circuits, use always
    */
    initial
    begin
    add_n1 = 1'b0;
    x1 = 4'd3;
    y1 = 4'd8;
    
    #10 x1 = 4'd4;
    y1 = 4'd5;
    
    #10 add_n1 = 1'b1;
    x1 = 4'd2;
    y1 = 4'd6;
    
    #10 x1 = 4'd8;
    y1 = 4'd9;
    end
 
 // Display the responses using texts or graphics
 initial
 begin
    $monitor("time = %3d \t x = %3d \t y = %3d \t add_n = %1b \t c_out = %1b \t overflow = %1b",
    $time,x1,y1,add_n1,c_out1,overflow1);
 end
 
endmodule
