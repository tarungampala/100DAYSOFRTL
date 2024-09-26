`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2024 10:29:25
// Design Name: 
// Module Name: cladesign
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


module cladesign(
    input [3:0] a, b,
    input cin,
    output cout,
    output [3:0] sum
    );
    
    
    and a1(t0, a[0], b[0]);
    and a2(t1, a[1], b[1]);
    and a3(t2, a[2], b[2]);
    and a4(t3, a[3], b[3]);
    
    xor x1(p0, a[0], b[0]);
    xor x2(p1, a[1], b[1]);
    xor x3(p2, a[2], b[2]);
    xor x4(p3, a[3], b[3]);
    
    xor y1(sum[0], p0, cin);
    xor y2(sum[1], p1, c0);
    xor y3(sum[2], p2, c1);
    xor y4(sum[3], p3, c2);
    
    assign c0 = t0 | (p0 & cin);
    assign c1 = t1 | (p1 & t0) | (p1 & p0 & cin);
    assign c2 = t2 | (p2 & t1) | (p2 & p1 & t0) | (p2 & p1 & p0 & cin);
    assign c3 = t3 | (p3 & t2) | (p3 & p2 & t1) | (p3 & p2 & p1 & t0) | (p3 & p2 & p1 & p0 & cin);
    assign cout = c3; 
    
endmodule
