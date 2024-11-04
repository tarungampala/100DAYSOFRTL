`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.11.2024 08:57:52
// Design Name: 
// Module Name: alu
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


module alu(
    input [3:0] a, b, 
    input [2:0] op,
    output reg [7:0] res
    );
    
    parameter add = 3'b000, 
    sub = 3'b001, 
    mul = 3'b010, 
    andop = 3'b011, 
    orop = 3'b100, 
    xorop = 3'b101, 
    xnorop = 3'b110, 
    notop = 3'b111;
    
    always @(*)begin
        case(op)
        add: res = a+b;
        sub: res = a - b;
        mul: res = a*b;
        andop: res = a & b;
        orop: res = a | b;
        xorop: res = a^b;
        xnorop: res = a^b;
        notop: res = a;
        endcase
    end
    
    
endmodule
