`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.10.2024 10:33:46
// Design Name: 
// Module Name: adder4bit
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


module adder4bit(
    input [3:0] x, y,
    input cin,
    output [3:0] sum,
    output cout
    );
    
    wire c0, c1, c2;
    
    FullAdder fa0(.a(x[0]), .b(y[0]), .c(cin), .s(sum[0]), .c0(c0));
    FullAdder fa1(.a(x[1]), .b(y[1]), .c(c0), .s(sum[1]), .c0(c1));
    FullAdder fa2(.a(x[2]), .b(y[2]), .c(c1), .s(sum[2]), .c0(c2));
    FullAdder fa3(.a(x[3]), .b(y[3]), .c(c2), .s(sum[3]), .c0(cout));
endmodule
