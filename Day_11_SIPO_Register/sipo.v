`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2024 22:24:02
// Design Name: 
// Module Name: sipo
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


module sipo(
    input in,
    input clk, rst,
    output [3:0] out
    );
    d_ff d1(.D(in), .clk(clk), .rst(rst), .Q(out[3]), .Qbar());
    d_ff d2(.D(out[3]), .clk(clk), .rst(rst), .Q(out[2]), .Qbar());
    d_ff d3(.D(out[2]), .clk(clk), .rst(rst), .Q(out[1]), .Qbar());
    d_ff d4(.D(out[1]), .clk(clk), .rst(rst), .Q(out[0]), .Qbar());
endmodule
