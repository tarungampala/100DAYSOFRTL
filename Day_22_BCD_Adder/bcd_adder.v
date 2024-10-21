`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.10.2024 10:43:13
// Design Name: 
// Module Name: bcd_adder
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


module bcd_adder(
    input [3:0] A, B,
    output [4:0] S
    );
    
        
    wire C1, C2, C3, C4, C5, C6;
    wire [3:0] X, Z, S1;
    
    adder4bit add1(.x(A), .y(B), .cin(0), .sum(X), .cout(C1));
    assign C2 = X[3] & X[2];
    assign C3 = X[3] & X[1];
    assign C4 = C2 | C3 | C1;
    assign Z = {1'b0, C4, C4, 1'b0};
    adder4bit add2(.x(X), .y(Z), .cin(0), .sum(S1), .cout(C5));
    assign C6 = C5 | C1;
    assign S = {C6, S1};
    
endmodule
