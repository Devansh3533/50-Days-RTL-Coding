`timescale 1ns / 1ps

module vending_machine(
input clk,reset_n,
input [2:0] coin,
output prod,
output reg ret5,ret10,ret15
    );
reg Q_reg, Q_next,prodct;
parameter [2:0] s0 = 3'b000,
s5 = 3'b001,
s10 = 3'b010,
s15 = 3'b011,
s20 = 3'b100,
s25 = 3'b101;

always @(posedge clk,negedge reset_n)
begin
    if(~reset_n)
        Q_reg <= 1'b0;
    else
        Q_reg <= Q_next;
end

always @(posedge clk,coin,Q_next,ret5,ret10,ret10)
begin
ret5 = 0;
ret10 = 0;
ret15 = 0;
case(coin)
    s0: begin
        Q_next = s0;
        prodct = 1'b0;
        ret5 = 0;
        ret10 = 0;
        ret15 = 0;
        end
    s5: begin
        Q_next = s0;
        end
    s10:begin
            prodct = 1'b1;
            Q_next = s0;
        end
    
    s15:begin
            ret5 = 1;
            Q_next = s10;
        end
    s20:begin
            ret10 = 1'b1;
            Q_next = s10;
        end
    s25:begin
        ret15=1;
        Q_next = s10;
        end
    default:Q_next = s0;
    endcase
end
assign prod = prodct;
endmodule
