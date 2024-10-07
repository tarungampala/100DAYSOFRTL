`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.10.2024 20:34:18
// Design Name: 
// Module Name: prbs
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


module prbs(
    input clk, rst,
    output rand
    );
    
    reg [3:0] temp;
    assign rand = temp[0];
    always @(posedge clk or posedge rst) begin
        if(rst) begin
            temp <= 4'hf;
        end
        else begin
            temp <= {temp[0]^temp[1], temp[3], temp[2], temp[1]};
        end
    end
endmodule
