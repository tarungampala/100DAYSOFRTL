`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.10.2024 22:45:30
// Design Name: 
// Module Name: carry_select_adder_4bit
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


module carry_select_adder_4bit(
    input [3:0] A, B,
    input cin,
    output [3:0] sum,
    output cout
    );
    
    wire [3:0] s1, s2;
    wire c1, c2;
    adder4bit a1(.A(A), .B(B), .cin(1'b0), .sum(s1), .cout(c1));
    adder4bit a2(.A(A), .B(B), .cin(1'b1), .sum(s2), .cout(c2));
    
    mux m0(.I1(c1), .I2(c2), .S(cin), .Y(cout));
    mux m1(.I1(s1[0]), .I2(s2[0]), .S(cin), .Y(sum[0]));
    mux m2(.I1(s1[1]), .I2(s2[1]), .S(cin), .Y(sum[1]));
    mux m3(.I1(s1[2]), .I2(s2[2]), .S(cin), .Y(sum[2]));
    mux m4(.I1(s1[3]), .I2(s2[3]), .S(cin), .Y(sum[3]));
endmodule
