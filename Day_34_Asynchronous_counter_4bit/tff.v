`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.11.2024 22:12:48
// Design Name: 
// Module Name: tff
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


module tff(
    input t, clk, rst,
    output q, qbar
    );
    reg q;
    assign qbar = ~q;
    
    always @(posedge clk or posedge rst) begin
        if(rst) q <= 0;
        else if(t)
            q <= ~q;
    end
    
endmodule

