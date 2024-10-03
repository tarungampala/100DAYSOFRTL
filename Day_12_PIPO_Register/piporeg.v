`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.10.2024 23:09:27
// Design Name: 
// Module Name: piporeg
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


module piporeg(
    input [3:0] in,
    input clk, rst,
    output [3:0] out
    );
    d_ff d1(.D(in[3]), .clk(clk), .rst(rst), .Q(out[3]), .Qbar());
    d_ff d2(.D(in[2]), .clk(clk), .rst(rst), .Q(out[2]), .Qbar());
    d_ff d3(.D(in[1]), .clk(clk), .rst(rst), .Q(out[1]), .Qbar());
    d_ff d4(.D(in[0]), .clk(clk), .rst(rst), .Q(out[0]), .Qbar());
endmodule
