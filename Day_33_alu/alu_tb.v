`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.11.2024 09:04:29
// Design Name: 
// Module Name: alu_tb
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


module alu_tb();
    reg [3:0] a, b;
    reg [2:0] op;
    wire [7:0] res;
    
    alu a1(.a(a), .b(b), .op(op), .res(res));
    
    initial begin
        a = 0100; b = 1100; op = 000; #5;
        a = 1010; b = 1110; op = 001; #5;
        a = 0000; b = 1111; op = 010; #5;
        a = 1101; b = 1010; op = 011; #5;
        a = 0001; b = 1001; op = 100; #5;
        a = 0010; b = 0110; op = 101; #5;
        a = 1000; b = 0001; op = 110; #5;
        a = 0100; b = 1101; op = 111; #5;
        $finish();
    end
    
endmodule
