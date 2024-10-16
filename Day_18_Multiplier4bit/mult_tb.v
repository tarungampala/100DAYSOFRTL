`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2024 00:02:06
// Design Name: 
// Module Name: mult_tb
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


module mult_tb();
    reg [3:0] a, b;
    wire [7:0] out;
    
    multiplier dut(.a(a), .b(b), .out(out));
    initial begin
        a = 2;
        b = 5;
        #5;
        a = 3;
        b = 4;
        #5;
        a = 8;
        b = 8;
        #5;
        a = 2;
        b = 8;
        #5;
        a = 5;
        b = 8;
        #5;
        a = 5;
        b = 3;
        #5;
        $finish();
    end
endmodule
