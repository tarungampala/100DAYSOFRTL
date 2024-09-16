`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.09.2024 12:20:24
// Design Name: 
// Module Name: clkdivtb
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


module clkdivtb();

reg clk, en, rst;
wire divby2, divby4, divby8, divby16;

clkdiv dut (.clk(clk), .en(en), .rst(rst), .divby2(divby2), .divby4(divby4), .divby8(divby8), .divby16(divby16));

initial clk = 0;
always #5 clk = ~clk;

initial begin
    #160 $finish();
end

initial begin
    en = 0; rst = 1; #5; rst = 0; en = 1;
end


endmodule
