`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.10.2024 22:29:16
// Design Name: 
// Module Name: comparator
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


module comparator(
    input a, b,
    output gt, lt, eq 
    );
    
    mux_4x1 m1(.I(4'b1001), .S({a, b}), .out(eq));
    mux_4x1 m2(.I(4'b0010), .S({a, b}), .out(lt));
    mux_4x1 m3(.I(4'b0100), .S({a, b}), .out(gt));
    
endmodule
