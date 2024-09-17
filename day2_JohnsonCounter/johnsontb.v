`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.09.2024 22:36:05
// Design Name: 
// Module Name: johnsontb
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


module johnsontb();

reg clk, reset;
wire [3:0] count;

johnson dut(.clk(clk), .reset(reset), .count(count));

initial clk = 1'b0;
always #5 clk = ~clk;

initial begin
    reset = 1; #10 reset = 0;
    #85; $finish();
end

endmodule
