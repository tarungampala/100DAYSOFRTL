`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2024 22:49:53
// Design Name: 
// Module Name: adder_subtractor_tb
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


module adder_subtractor_tb();
    reg [7:0] a, b;
    wire [7:0] out;
    reg mode;
    wire cr;
    
    adder_subtractor dut(.a(a), .b(b), .out(out), .mode(mode), .cr(cr));
    
    
    initial begin
        mode = 0;
        a = 2;
        b = 2;
        #5;
        mode = 1;
        a = 3;
        b = 1;
        #5;
        mode = 0;
        a = 2;
        b = 1;
        #5;
        mode = 1;
        a = 5;
        b = 1;
        #5;
        mode = 0;
        a = 5;
        b = 4;
        #5;
        $finish();
    end
endmodule
