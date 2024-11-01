`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2024 23:49:20
// Design Name: 
// Module Name: barrelshifter
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


module barrel_shifter(
    input [7:0] I,
    input [2:0] S,
    output [7:0] Y
    );
    
    wire [7:0] a,b;
    
    mux_2x1 m1 (.I1(I[7]), .I2(1'b0), .S(S[2]), .out(a[7]));
    mux_2x1 m2 (.I1(I[6]), .I2(1'b0), .S(S[2]), .out(a[6]));
    mux_2x1 m3 (.I1(I[5]), .I2(1'b0), .S(S[2]), .out(a[5]));
    mux_2x1 m4 (.I1(I[4]), .I2(1'b0), .S(S[2]), .out(a[4]));
    mux_2x1 m5 (.I1(I[3]), .I2(I[7]), .S(S[2]), .out(a[3]));
    mux_2x1 m6 (.I1(I[2]), .I2(I[6]), .S(S[2]), .out(a[2]));
    mux_2x1 m7 (.I1(I[1]), .I2(I[5]), .S(S[2]), .out(a[1]));
    mux_2x1 m8 (.I1(I[0]), .I2(I[4]), .S(S[2]), .out(a[0]));
    
    mux_2x1 m9 (.I1(a[7]), .I2(1'b0), .S(S[1]), .out(b[7]));
    mux_2x1 m10 (.I1(a[6]), .I2(1'b0), .S(S[1]), .out(b[6]));
    mux_2x1 m11 (.I1(a[5]), .I2(a[7]), .S(S[1]), .out(b[5]));
    mux_2x1 m12 (.I1(a[4]), .I2(a[6]), .S(S[1]), .out(b[4]));
    mux_2x1 m13 (.I1(a[3]), .I2(a[5]), .S(S[1]), .out(b[3]));
    mux_2x1 m14 (.I1(a[2]), .I2(a[4]), .S(S[1]), .out(b[2]));
    mux_2x1 m15 (.I1(a[1]), .I2(a[3]), .S(S[1]), .out(b[1]));
    mux_2x1 m16 (.I1(a[0]), .I2(a[2]), .S(S[1]), .out(b[0]));
    
    mux_2x1 m17 (.I1(b[7]), .I2(1'b0), .S(S[0]), .out(Y[7]));
    mux_2x1 m18 (.I1(b[6]), .I2(b[7]), .S(S[0]), .out(Y[6]));
    mux_2x1 m19 (.I1(b[5]), .I2(b[6]), .S(S[0]), .out(Y[5]));
    mux_2x1 m20 (.I1(b[4]), .I2(b[5]), .S(S[0]), .out(Y[4]));
    mux_2x1 m21 (.I1(b[3]), .I2(b[4]), .S(S[0]), .out(Y[3]));
    mux_2x1 m22 (.I1(b[2]), .I2(b[3]), .S(S[0]), .out(Y[2]));
    mux_2x1 m23 (.I1(b[1]), .I2(b[2]), .S(S[0]), .out(Y[1]));
    mux_2x1 m24 (.I1(b[0]), .I2(b[1]), .S(S[0]), .out(Y[0]));
endmodule
