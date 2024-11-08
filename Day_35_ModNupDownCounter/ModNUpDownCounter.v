`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.11.2024 22:20:44
// Design Name: 
// Module Name: ModNUpDownCounter
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


module ModNUpDownCounter

#(parameter width = 4)

(
    input clk, rst, up,
    output reg [width-1: 0] count
    );
    
    always @(posedge clk or posedge rst) begin
        if(rst == 1) begin
            count <= 0;
        end
        
        else if(up) begin
            count <= count + 1;
        end
        else begin
            count <= count - 1;
        end
    end
    
endmodule
