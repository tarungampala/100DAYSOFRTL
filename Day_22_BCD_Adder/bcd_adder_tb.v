`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.10.2024 11:06:04
// Design Name: 
// Module Name: bcd_adder_tb
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


module bcd_adder_tb();

    reg [3:0] A, B;
    wire [4:0] S;
    
    bcd_adder add(.A(A), .B(B) , .S(S));
    
    initial begin
        A = 4'b1000; B = 4'b1001; #5;
        A = 4'b1001; B = 4'b1001; #5;
        A = 4'b1000; B = 4'b0101; #5;
        A = 4'b0011; B = 4'b0100; #5;
        A = 4'b0011; B = 4'b0001; #5;
        A = 4'b1000; B = 4'b1000; #5;
        $finish();
    end
endmodule
