`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/09/2025 12:42:24 AM
// Design Name: 
// Module Name: N_bit_multiplier
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


module N_bit_multiplier
#(parameter N = 8)(
input start,clk,reset,
input [N-1:0] a_in,b_in,
output [(((N*2)/3)+1)*4 -1:0] bcd,
output [(N*2)-1:0] out,
output finish
);
reg [(((N*2)/3)+1)*4 -1:0] bcd_reg = 0;
reg [(N*2)-1:0] out_reg;
reg finish_reg = 0;
reg [(N*2)-1:0] a_in_reg, b_in_reg;
reg [8:0] bits;

// Continuous assignment
assign bcd = bcd_reg;
assign out = out_reg;
assign finish = finish_reg;

integer i;

// Reset clk and inputs
always @(posedge clk, posedge reset)
begin
    if(reset)
        begin
        out_reg = 0;
        a_in_reg = 0;
        b_in_reg = 0;
        end
    else
    begin
        case(start)
            1'b0: begin
                    a_in_reg = a_in;
                    b_in_reg = b_in;
                    bits = N;
                    finish_reg = 0;
                    out_reg = 0;
                    bcd_reg = 0;
                    $display("Values loaded in the input register");
                  end
            1'b1: begin
                    if(b_in_reg[0] == 1)
                        out_reg = out_reg + a_in_reg;
                    bits = bits -1;
                    a_in_reg = a_in_reg << 1;
                    b_in_reg = b_in_reg << 1;
                  end
        endcase
        if(bits == 0)
        begin
            $display("Multiplication completed");
            finish_reg = 1'b1;
            //-------------------------------------------------
            // Conversion on binary to bcd
            // Using Double Dabble Algorithm
            for(i = 0;i<(N*2);i = i+1)
            begin
                if (3 <= ((N*2)/3+1)*4-1 && bcd_reg[3:0] >= 5) bcd_reg[3:0] = bcd_reg[3:0] + 3;
                if (7 <= ((N*2)/3+1)*4-1 && bcd_reg[7:4] >= 5) bcd_reg[7:4] = bcd_reg[7:4] + 3;
                if (11 <= ((N*2)/3+1)*4-1 && bcd_reg[11:8] >= 5) bcd_reg[11:8] = bcd_reg[11:8] + 3;
                if (15 <= ((N*2)/3+1)*4-1 && bcd_reg[15:12] >= 5) bcd_reg[15:12] = bcd_reg[15:12] + 3;
                bcd_reg = {bcd_reg[(((N*2)/3)+1)*4-2:0],out_reg[(N*2)-1-i]};
            end
        end           
    end
end
endmodule
