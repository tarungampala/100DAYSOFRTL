`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.09.2024 10:14:44
// Design Name: 
// Module Name: sisoreg
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


module sisoreg(
input in,
input clk, rst,
output out
);
    wire [3:0] temp;
    assign out = temp[0];
    d_ff d1(.D(in), .clk(clk), .rst(rst), .Q(temp[3]), .Qbar());
    d_ff d2(.D(temp[3]), .clk(clk), .rst(rst), .Q(temp[2]), .Qbar());
    d_ff d3(.D(temp[2]), .clk(clk), .rst(rst), .Q(temp[1]), .Qbar());
    d_ff d4(.D(temp[1]), .clk(clk), .rst(rst), .Q(temp[0]), .Qbar());
endmodule
