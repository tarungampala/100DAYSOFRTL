`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.10.2024 21:37:22
// Design Name: 
// Module Name: mux_4x1
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


module mux_4x1(
    input [3:0] I,
    input [1:0] S,
    output reg out
    );
    
    always @(*) begin
        case(S)
           2'b00: out = I[0];
           2'b01: out = I[1];
           2'b10: out = I[2];
           2'b11: out = I[3]; 
        endcase
    end
endmodule
