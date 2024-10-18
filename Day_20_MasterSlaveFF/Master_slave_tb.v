`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2024 16:19:46
// Design Name: 
// Module Name: Master_slave_tb
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


module Master_slave_tb();

reg j, k, clk;
wire q, q_bar;

day_20_masterSlaveFF dut(.clk(clk), .j(j), .k(k), .q(q), .q_bar(q_bar));

initial clk = 0;
always #5 clk = ~clk;

initial begin
    j = 0; k = 1; #10;
    j = 0; k = 0; #10;
    j = 1; k = 0; #10;
    j = 1; k = 1; #10;
    $finish();
end

endmodule
