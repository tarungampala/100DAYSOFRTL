`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.09.2024 21:23:45
// Design Name: 
// Module Name: bintoonehot
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


module bintoonehot(
input [3:0] bin,
output [15:0] onehot
    );
    assign onehot = 1'b1<<bin;
endmodule
