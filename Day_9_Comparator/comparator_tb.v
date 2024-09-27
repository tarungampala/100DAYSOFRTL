`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.09.2024 18:33:36
// Design Name: 
// Module Name: comparator_tb
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


module comparator_tb();
    reg [2:0] a, b;
    reg rst;
    wire g, l ,e;
    
    comparator_dut dut(.a(a), .b(b), .rst(rst), .g(g), .l(l), .e(e));
    
    initial begin
        rst = 1;
        #5;
        rst = 0;
        #5
        a = 2'b00; b = 2'b00; #5;
        a = 2'b00; b = 2'b01; #5;
        a = 2'b00; b = 2'b10; #5;
        a = 2'b00; b = 2'b11; #5;
        a = 2'b01; b = 2'b00; #5;
        a = 2'b01; b = 2'b01; #5;
        a = 2'b01; b = 2'b10; #5;
        a = 2'b01; b = 2'b11; #5;
        a = 2'b10; b = 2'b00; #5;
        a = 2'b10; b = 2'b01; #5;
        a = 2'b10; b = 2'b10; #5;
        a = 2'b10; b = 2'b11; #5;
        a = 2'b11; b = 2'b00; #5;
        a = 2'b11; b = 2'b01; #5;
        a = 2'b11; b = 2'b10; #5;
        a = 2'b11; b = 2'b11; #5;
        $finish();
    end
endmodule
