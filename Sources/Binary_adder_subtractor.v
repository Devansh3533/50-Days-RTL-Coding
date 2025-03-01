`timescale 1ns / 1ps

module Binary_adder_subtractor(
    input select, // (select == M)
    input [3:0] a,b,
    output [3:0] sum,
    output c_out
    );
wire x1,x2,x3;
//wire M;
//assign M = select;

Full_adder fa1(
    .a(a[0]),
    .b(b[0] ^ select),
    .cin(select),
    .cout(x1),
    .sum(sum[0])
    );
  
Full_adder fa2(
    .a(a[1]),
    .b(b[1] ^ select),
    .cin(x1),
    .cout(x2),
    .sum(sum[1])
    );
Full_adder fa3(
    .a(a[2]),
    .b(b[2] ^ select),
    .cin(x2),
    .cout(x3),
    .sum(sum[2])
    );
    
Full_adder fa4(
    .a(a[3]),
    .b(b[3] ^ select),
    .cin(x3),
    .cout(c_out),
    .sum(sum[3])
    );    

endmodule
