`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.10.2024 21:24:22
// Design Name: 
// Module Name: prbs_tb
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


module prbs_tb();
    
    reg clk, rst;
    wire rand;
    
    prbs dut(.clk(clk), .rst(rst), .rand(rand));
    initial clk = 0;
    always #5 clk = ~clk;
    initial begin
        rst = 1;
        #5;
        rst = 0;
        #200;
        $finish;
    end
endmodule
