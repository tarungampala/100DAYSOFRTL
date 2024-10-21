`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.10.2024 09:50:12
// Design Name: 
// Module Name: FullAdder
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
////////////////////////////    //////////////////////////////////////////////////////


module FullAdder(
    input a, b, c,
    output s, c0
    );
    
    assign s = a^b^c;
    assign c0 = (a&b)|(b&c)|(c&a);
endmodule
