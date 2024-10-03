`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.10.2024 23:09:45
// Design Name: 
// Module Name: d_ff
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


module d_ff(
    input D, clk, rst,
    output reg Q,
    output Qbar
    );
    
    assign Qbar = ~Q;
    
    always @(posedge clk or posedge rst) begin
        if(rst) Q <= 0;
        else Q <= D;
    end
endmodule
