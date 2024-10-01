`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2024 22:28:20
// Design Name: 
// Module Name: sipo_tb
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


module sipo_tb();
reg clk, rst;
reg in;
wire [3:0] out;

sipo dut(.clk(clk), .rst(rst), .in(in), .out(out));

initial clk = 0;
always #5 clk = ~clk;

initial begin
    rst = 1; #5;
    rst = 0;
    in = 0;
    #10;
    in = 1;
    #10;
    in = 0;
    #10;
    in = 1;
    #10;
    in = 0;
    #10;
    $finish();
end
endmodule
