`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.10.2024 14:31:19
// Design Name: 
// Module Name: bcdtoSevenSegment
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


module bcdtoSevenSegment(
    input [3:0] bcd,
    output reg [6:0] seg //ABCDEFG
    );
    
    always @(*)begin
        case(bcd)
            4'b0000: seg = 7'b1111110;
            4'b0001: seg = 7'b0000110;
            4'b0010: seg = 7'b1101101;
            4'b0011: seg = 7'b1111001;
            4'b0100: seg = 7'b0110011;
            4'b0101: seg = 7'b1011011;
            4'b0110: seg = 7'b1011111;
            4'b0111: seg = 7'b1110000;
            4'b1000: seg = 7'b1111111;
            4'b1001: seg = 7'b1111011;
        endcase
    end
endmodule
