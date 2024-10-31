`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.10.2024 15:27:37
// Design Name: 
// Module Name: bcdtoSevenSegment_tb
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


module bcdtoSevenSegment_tb();
    reg [3:0] bcd;
    wire [6:0] seg;
    
    bcdtoSevenSegment seg1(.bcd(bcd), .seg(seg));
    
    initial begin
        bcd = 4'b0000; #5;
        bcd = 4'b0001; #5;
        bcd = 4'b0010; #5;
        bcd = 4'b0011; #5;
        bcd = 4'b0100; #5;
        bcd = 4'b0101; #5;
        bcd = 4'b0110; #5;
        bcd = 4'b0111; #5;
        bcd = 4'b1000; #5;
        bcd = 4'b1001; #5;
        $finish();
    end
endmodule
