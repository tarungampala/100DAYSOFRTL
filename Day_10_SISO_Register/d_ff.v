`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.09.2024 10:15:04
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
