`timescale 1ns / 1ps

module JK_Flip_Flop_tb;
reg reset_n,clk,a,b;
wire Q;

// Instantiating the module

JK_Flip_Flop uut(
    .reset_n(reset_n),
    .clk(clk),
    .a(a),
    .b(b),
    .Q(Q));

localparam T = 20;
    
always
begin
clk = 1'b0;
#(T/2);
clk = 1'b1;
#(T/2);
end

initial
begin
reset_n = 1'b0;
#2 reset_n = 1'b1;

#T a = 1'b0; b = 1'b0;
#T a = 1'b0; b = 1'b1;
#T a = 1'b1; b = 1'b0;
#T a = 1'b1; b = 1'b1;
#(2*T) $finish();
end

endmodule
