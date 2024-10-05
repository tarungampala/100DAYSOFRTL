`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.10.2024 22:39:05
// Design Name: 
// Module Name: bidirshftreg
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


module bidirshftreg(
    input in,
    input clk, rst,
    input dir,
    output reg [3:0] out
    );
    
    always @(posedge clk or posedge rst) begin
        if(rst) begin
            out <= 4'b0000;
        end
        else begin
            if (dir) begin
                out <= {out[2:0], in};
            end
            else begin
                out <= {in, out[3:1]};
            end
        end
    end
endmodule
