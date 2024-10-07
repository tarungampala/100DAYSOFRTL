`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.10.2024 22:10:39
// Design Name: 
// Module Name: sub_tb
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


module sub_tb();
    reg [7:0] a, b;
    wire [7:0] out;
    
    sub dut(.a(a), .b(b), .out(out));
    
    initial begin
        a = 4'b1011;
        b = 4'b1000;
        #5;
        a = 4'b1000;
        b = 4'b0011;
        #5;
        a = 4'b1001;
        b = 4'b0011;
        #5;
        a = 4'b1111;
        b = 4'b1000;
        #5;
        a = 4'b1100;
        b = 4'b0011;
        #5;
        $finish();
    end
endmodule
