`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2024 22:16:48
// Design Name: 
// Module Name: majoritycircuit
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


module majoritycircuit(
input [4:0] X,
output Y
    );
wire [9:0] t;
and A1(t[0], X[0], X[1], X[2]);
and A2(t[1], X[0], X[1], X[3]);
and A3(t[2], X[0], X[1], X[4]);
and A4(t[3], X[0], X[2], X[3]);
and A5(t[4], X[0], X[2], X[4]);
and A6(t[5], X[0], X[3], X[4]); 
and A7(t[6], X[0], X[3], X[4]); 
and A8(t[7], X[1], X[2], X[3]);
and A9(t[8], X[1], X[2], X[4]);
and A10(t[9], X[1], X[3], X[4]);

or O1(Y, t[0], t[1], t[2], t[3], t[4], t[5], t[6], t[7], t[8], t[9]); 
 
endmodule
