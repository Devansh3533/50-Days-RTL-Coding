`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/02/2025 11:52:36 AM
// Design Name: 
// Module Name: ripple_carry_adder_4bit_tb
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


module ripple_carry_adder_4bit_tb();
reg [3:0] a,b;
reg cin;
wire [3:0] sum;
wire c_out;

ripple_carry_adder_4bit uut(
.a(a),
.b(b),
.cin(cin),
.sum(sum),
.c_out(c_out));

initial
#60 $finish;

initial
begin

#5 a = 4'b0000; b = 4'b0000; cin = 1'b0;
#5 a = 4'b0000; b = 4'b0000; cin = 1'b0;
#5 a = 4'b0001; b = 4'b0100; cin = 1'b0;
#5 a = 4'b0110; b = 4'b1000; cin = 1'b0;
#5 a = 4'b0111; b = 4'b1010; cin = 1'b0;
#5 a = 4'b1001; b = 4'b0110; cin = 1'b0;
#5 a = 4'b1111; b = 4'b0000; cin = 1'b0;
#5 a = 4'b1111; b = 4'b1111; cin = 1'b0;
#5 a = 4'b0011; b = 4'b0110; cin = 1'b0;
#5 a = 4'b1111; b = 4'b0001; cin = 1'b0;
#5 a = 4'b1111; b = 4'b0001; cin = 1'b1;
end

initial 
begin
#5 $display("time: %d\t a = %4b\t b = %4b\t cin = %1b\t sum = %4b\t cout = %1b",$time,a,b,cin,sum,c_out);
end
endmodule
