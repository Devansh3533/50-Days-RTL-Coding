`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/25/2025 10:51:55 AM
// Design Name: 
// Module Name: D_FF_reset_tb
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


module D_FF_reset_tb(
    );
    reg D,reset_n,clear_n,clk1;
    wire Q;
    
    D_FF_reset uut(
    .D(D),
    .clk(clk1),
    .reset_n(reset_n),
    .clear_n(clear_n),
    .Q(Q)
    );
    initial
    begin
        #200 $finish;
    end
    always #5 clk1 = ~clk1;
    
    initial     
    begin
        clk1 = 1'b0;
        D = 1'b0;
        reset_n = 1'b1;
        clear_n = 1'b1;
        #10 D = 1'b1; reset_n = 1'b1; clear_n = 1'b1; 
        #10 D = 1'b1; reset_n = 1'b1; clear_n = 1'b1;
        #10 D = 1'b1; reset_n = 1'b1; clear_n = 1'b1;
        #10 D = 1'b0; reset_n = 1'b1; clear_n = 1'b1;
        #10 D = 1'b0; reset_n = 1'b1; clear_n = 1'b1;
        #10 D = 1'b1; reset_n = 1'b1; clear_n = 1'b1;
        #10 D = 1'b1; reset_n = 1'b0; clear_n = 1'b1;
        #10 D = 1'b1; reset_n = 1'b1; clear_n = 1'b0;
        #10 D = 1'b1; reset_n = 1'b0; clear_n = 1'b0;
        #10 D = 1'bx; reset_n = 1'b0; clear_n = 1'b1;  
    end
    
    initial
    begin
        $monitor("time:%3d\t Q: %1d\tD:%1d\t reset_n: %1d\t clear_n: %1d\t",$time,Q,D,reset_n,clear_n);
    end
    
endmodule
