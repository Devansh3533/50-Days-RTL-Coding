`timescale 1ns / 1ps

module ALU_tb;
reg [7:0] a,b;
reg [3:0] select;
wire [7:0] result;
wire carry_flag;
wire zero_flag;
wire negatie_flag;
integer i;

ALU uut(
.a(a),
.b(b),
.select(select),
.result(result),
.carry_flag(carry_flag),
.overflow_flag(overflow_flag),
.zero_flag(zero_flag),
.negative_flag(negative_flag));

initial
begin
    for(i=0;i<11;i=1+1)
    begin
    select = i;
    a = i; b = i+1;
    #10;
    end
    $finish();
end
endmodule
