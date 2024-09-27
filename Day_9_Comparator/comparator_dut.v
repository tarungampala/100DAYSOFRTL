`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.09.2024 18:22:13
// Design Name: 
// Module Name: comparator_dut
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


module comparator_dut(
    input [2:0] a, b,
    input rst,
    output reg l, g, e
    );
    
    always @(a, b) begin
        if(rst) begin
           l = 0;
           g = 0;
           e = 0; 
        end
        if(a<b) begin
            l = 1;
            e = 0;
            g = 0;
        end
        if(a==b) begin
            e = 1;
            l = 0;
            g = 0;
        end
        if(a>b) begin
            g = 1;
            e = 0;
            l = 0;
        end
    end
endmodule
