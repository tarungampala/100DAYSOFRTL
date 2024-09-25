`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.09.2024 06:56:01
// Design Name: 
// Module Name: t_flip_flop
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


module t_flip_flop(
    input clk, T, rst,
    output reg Q,
    output Qbar
    );
    
    assign Qbar = ~Q;
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            Q <= 0;
        end
        else begin
            Q <= T^Q;
        end
    end
endmodule
