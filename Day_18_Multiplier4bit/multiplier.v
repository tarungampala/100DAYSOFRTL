`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2024 23:59:15
// Design Name: 
// Module Name: multiplier
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


module multiplier(
    input [3:0] a, b,
    output [7:0] out
    );
    
    wire [3:0] a1;
    wire [3:0] a2;
    wire [3:0] a3;
    wire [3:0] a4;
    
    wire [7:0] s1, s2, s3;
    
    assign a1 = {4{a[0]}} &b[3:0];
    assign a2 = {4{a[1]}} &b[3:0];
    assign a3 = {4{a[2]}} &b[3:0];
    assign a4 = {4{a[3]}} &b[3:0];
    
    assign s1 = a1 + (a2<<1);
    assign s2 = s1 + (a3<<1);
    assign s3 = s2 + (a4<<1);
    assign out = s3;
endmodule
