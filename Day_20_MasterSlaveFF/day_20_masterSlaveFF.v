`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2024 16:05:21
// Design Name: 
// Module Name: day_20_masterSlaveFF
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


module day_20_masterSlaveFF(
    input j, k, clk,
    output q, q_bar
    );
    wire qm;
    wire qmbar;
    wire mclk;
    assign mclk = ~clk;
    
    jk_ff dut1 (.j(j), .k(k), .q(qm), .q_bar(qmbar), .clk(clk));
    jk_ff dut2 (.j(qm), .k(qmbar), .q(q), .q_bar(q_bar), .clk(mclk));
    
    
endmodule
