`timescale 1ns / 1ps

module DeMUX_1_to_8(
    input y,
    output reg [7:0] x,
    input en,
    input [2:0] s
    );
    
    always @(y,s,en)
    begin
    x = 8'b0;
        if(en)
            begin
            case(s)
            3'b000: x[0] = y;
            3'b001: x[1] = y;
            3'b010: x[2] = y;
            3'b011: x[3] = y;
            3'b100: x[4] = y;
            3'b101: x[5] = y;
            3'b110: x[6] = y;
            3'b111: x[7] = y;
            default: x = 8'b0;
            endcase
            end
            else
            x = 8'b0;
        end
endmodule
