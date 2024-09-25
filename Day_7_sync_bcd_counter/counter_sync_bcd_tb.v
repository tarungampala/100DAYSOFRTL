`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.09.2024 07:50:05
// Design Name: 
// Module Name: counter_sync_bcd_tb
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


module counter_sync_bcd_tb();

reg clk, rst;
wire [3:0] Q;
wire [3:0] Qbar;

counter_sync_bcd dut(.clk(clk), .rst(rst), .Q(Q), .Qbar(Qbar));

initial clk = 0;
always #5 clk = ~clk;

always @(posedge clk) begin
    rst = 1;
    #5;
    rst = 0;
    #200;
    $finish();
end
initial begin
    $monitor("Time: %0t | Q: %b", $time, Q);
end

endmodule
