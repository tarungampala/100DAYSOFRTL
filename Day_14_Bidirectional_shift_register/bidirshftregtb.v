`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.10.2024 22:44:31
// Design Name: 
// Module Name: bidirshftregtb
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


module bidirshftregtb();
    reg clk, rst, in, dir;
    wire [3:0] out;
    
    bidirshftreg dut(.clk(clk), .rst(rst), .in(in), .dir(dir), .out(out));
    
    initial clk = 0;
    always #2.5 clk = ~clk;
    
    initial begin
        rst = 1;
        #5;
        rst = 0;
        dir = 0;
        in = 1;
        #5;
        in = 0;
        #5;
        in = 1;
        #5;
        in = 0;
        #5;
        dir = 1;
        in = 1;
        #5;
        in = 0;
        #5;
        in = 1;
        #5;
        in = 0;
        #5;
        $finish();
    end
endmodule
