`timescale 1ns / 1ps

module JK_Flip_Flop(
input clk,reset_n,
input a,b,
output Q
    );
reg Q_reg, Q_next;

always @(posedge clk,negedge reset_n)
begin
    if(!reset_n)
        Q_reg <= 1'b0;
    else
        Q_reg <= Q_next;
end

always @(a,b,Q_reg)
begin
    case({a,b})
        2'b00: Q_next = Q_reg;
        2'b01: Q_next = 1'b0;
        2'b10: Q_next = 1'b1;
        2'b11: Q_next = ~Q_reg;
    default: Q_next = 1'b0;
    endcase
end
assign Q = Q_reg;
endmodule
