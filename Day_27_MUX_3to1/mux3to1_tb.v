`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2024 15:59:23
// Design Name: 
// Module Name: mux3to1_tb
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


module mux3to1_tb();
    reg [2:0] I;
    reg [1:0] S;
    wire Y;
    
    mux3to1 mx(.I(I), .S(S), .Y(Y));
    
    initial begin
        S = 2'b00;
        I = 3'b000; #5;
        S = 2'b01;
        I = 3'b100; #5;
        S = 2'b10; 
        I = 3'b110; #5;
        S = 2'b00;
        I = 3'b001; #5;
        S = 2'b01;
        I = 3'b100; #5;
        S = 2'b10;
        I = 3'b010; #5;
        $finish();
    end
endmodule
