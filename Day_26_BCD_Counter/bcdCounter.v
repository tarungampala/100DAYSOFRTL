`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2024 11:42:33
// Design Name: 
// Module Name: bcdCounter
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


module bcdCounter(
    input clk, rst,
    output reg [3:0] ms_hr, ls_hr, ms_min, ls_min, ms_sec, ls_sec
    );
    
    always @(posedge clk or posedge rst) begin
        if(rst == 1) begin
            {ms_hr, ls_hr, ms_min, ls_min, ms_sec, ls_sec} = 0;
        end
        else begin
            if(ls_hr == 9) begin
                ms_hr = ms_hr + 1;
                ls_min = 0;
            end
            else if(ms_min == 5 && ls_min == 9)begin
                ls_hr = ls_hr + 1;
                ms_min = 0;
                ls_min = 0;
            end
            else if(ls_min == 9) begin
                ms_min = ms_min + 1;
                ls_min = 0;
            end
            else if(ms_sec == 5 && ls_sec == 9) begin
                ls_min = ls_min + 1;
                {ms_sec, ls_sec} = 0;
            end
            else if(ls_sec == 9) begin
                ms_sec = ms_sec + 1;
                ls_sec = 0;
            end
            else begin
               ls_sec = ls_sec + 1; 
            end
        end
    end
    
endmodule
