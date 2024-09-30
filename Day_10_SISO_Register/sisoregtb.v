`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.09.2024 10:41:14
// Design Name: 
// Module Name: sisoregtb
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


module sisoregtb();

reg clk, rst;
reg in;
wire out;

sisoreg dut(.clk(clk), .rst(rst), .in(in), .out(out));

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
    #100;
    $finish();
end
endmodule
