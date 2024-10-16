`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2024 22:34:04
// Design Name: 
// Module Name: adder_subtractor
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


module adder_subtractor(
    input [7:0] a, b,
    output reg [7:0] out,
    output cr,
    input mode
    );
    
    always @(a or b or mode) begin
        case(mode)
            0 : begin out = a + b; end
            1 : begin out = a - b; end
        endcase
    end
    
endmodule
