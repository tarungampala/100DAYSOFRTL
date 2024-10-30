`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2024 11:50:00
// Design Name: 
// Module Name: bcdCounter_tb
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


module bcdCounter_tb();

reg clk, rst;
wire [3:0] ms_hr, ls_hr, ms_min, ls_min, ms_sec, ls_sec;

bcdCounter bcd(.clk(clk), .rst(rst), .ms_hr(ms_hr), .ls_hr(ls_hr), .ms_min(ms_min), 
               .ls_min(ls_min), .ms_sec(ms_sec), .ls_sec(ls_sec));

initial clk = 0;
always #5 clk = ~clk;

initial begin
    rst = 1;
    #5;
    rst = 0;
    $monitor("Time > %d%d : %d%d : %d%d", ms_hr, ls_hr, ms_min, ls_min, ms_sec, ls_sec);
end

initial begin
    #700 $finish();
end
endmodule
