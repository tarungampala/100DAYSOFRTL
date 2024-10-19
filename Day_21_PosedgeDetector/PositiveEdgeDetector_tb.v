`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.10.2024 23:37:12
// Design Name: 
// Module Name: PositiveEdgeDetector_tb
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


module PositiveEdgeDetector_tb();
    reg clock, data;
    wire edge_detect;
    
    PositiveEdgeDetector dut(.clock(clock), .data(data), .edge_detect(edge_detect));
    initial clock = 0;
    always #5 clock = ~clock;
    initial begin
        data = 0;
        #10;
        data = 1;
        #10;
        data = 0;
        #20;
        data = 1;
        #10;
        $finish();
    end
endmodule
