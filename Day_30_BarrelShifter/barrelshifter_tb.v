`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.11.2024 00:24:57
// Design Name: 
// Module Name: barrelshifter_tb
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


module barrel_shifter_tb();
    reg [7:0] I;
    reg [2:0] S;
    wire [7:0] Y;
    
    barrel_shifter bs1(.I(I), .S(S), .Y(Y));
    
    initial begin
       I = 8'b0; S = 3'b0; #5;
       I = 8'b10000000; S = 3'b100; #5;
       I = 8'b10000000; S = 3'b010; #5;
       I = 8'b10000000; S = 3'b001; #5;
       I = 8'b11111111; S = 3'b111; #5;
       I = 8'b10000000; S = 3'b011; #5;
       I = 8'b10000000; S = 3'b101; #5;
       $finish(); 
    end
endmodule
