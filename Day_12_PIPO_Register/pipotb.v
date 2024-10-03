`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.10.2024 23:10:06
// Design Name: 
// Module Name: pipotb
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


module pipotb();
reg clk, rst;
reg [3:0] in;
wire [3:0] out;

piporeg dut(.clk(clk), .rst(rst), .in(in), .out(out));

initial clk = 0;
always #5 clk = ~clk;

initial begin
    rst = 1; #5;
    rst = 0;
    in = 0;
    #10;
    in = 4'b0101;
    #10;
    in = 4'b0010;
    #10;
    in = 4'b1000;
    #10;
    in = 4'b1111;
    #10;
    $finish();
end
endmodule
