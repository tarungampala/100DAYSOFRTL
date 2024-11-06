`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.11.2024 21:53:53
// Design Name: 
// Module Name: asc_counter
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


module asc_counter(
    input clk, rst,
    output [3:0] count, countbar
    );
    
    tff tf1(.t(1), .q(count[0]), .qbar(countbar[0]), .clk(clk), .rst(rst));
    tff tf2(.t(1), .q(count[1]), .qbar(countbar[1]), .clk(count[0]), .rst(rst));
    tff tf3(.t(1), .q(count[2]), .qbar(countbar[2]), .clk(count[1]), .rst(rst));
    tff tf4(.t(1), .q(count[3]), .qbar(countbar[3]), .clk(count[2]), .rst(rst));
endmodule
