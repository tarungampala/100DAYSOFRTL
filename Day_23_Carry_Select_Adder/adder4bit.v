`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.10.2024 22:48:07
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
    input [3:0] A, B,
    input cin,
    output [3:0] sum,
    output cout
    );
    
    wire c0, c1, c2;
    full_adder fl (.a(A[0]), .b(B[0]), .c(cin), .sum(sum[0]), .carry(c0));
    full_adder f2 (.a(A[1]), .b(B[1]), .c(c0), .sum(sum[1]), .carry(c1));
    full_adder f3 (.a(A[2]), .b(B[2]), .c(c1), .sum(sum[2]), .carry(c2));
    full_adder f4 (.a(A[3]), .b(B[3]), .c(c2), .sum(sum[3]), .carry(cout));
endmodule
