`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.09.2024 22:11:16
// Design Name: 
// Module Name: ringcountertb
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


module ringcountertb();
    reg clk, reset;
    wire [3:0] count;
    
    ringcounter dut(.count(count), .clk(clk), .reset(reset));
    
    initial clk = 0;
    always #5 clk = ~clk;
    initial begin
        reset = 1; #10; reset = 0;
        #10;
        #200;
        $finish();
    end  
endmodule


