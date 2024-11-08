`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.11.2024 22:25:52
// Design Name: 
// Module Name: ModNUpDownCounter_tb
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


module ModNUpDownCounter_tb();
    parameter width = 4;
    reg clk, rst, up;
    wire [width-1:0] count;
    ModNUpDownCounter dut (.clk(clk), .rst(rst), .count(count), .up(up));
    
    initial clk = 0;
    always #5 clk = ~clk;
    
    initial begin
        rst = 1; up = 1; #5;
        rst = 0;
        #75;
        up = 0;
        #50;
        $finish();
    end
endmodule
