`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.11.2024 22:19:02
// Design Name: 
// Module Name: asc_cnt_tb
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


module asc_cnt_tb();
    reg clk, rst;
    wire[3:0] count, countbar;
    
    asc_counter cnt(.clk(clk), .rst(rst), .count(count), .countbar(countbar));
    
    initial clk = 0;
    always #5 clk = ~clk;
    
    initial begin
        rst = 1;
        #5;
        rst = 0;
        #160 $finish();
    end
endmodule
