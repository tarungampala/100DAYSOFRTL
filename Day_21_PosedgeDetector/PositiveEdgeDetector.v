`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.10.2024 23:09:19
// Design Name: 
// Module Name: PositiveEdgeDetector
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


module PositiveEdgeDetector(
    input data,
    input clock,
    output edge_detect
    );
    
    reg data_d;
    
    always @(posedge clock) begin
        data_d <= data;
    end
    assign edge_detect = data & ~data_d;
endmodule
