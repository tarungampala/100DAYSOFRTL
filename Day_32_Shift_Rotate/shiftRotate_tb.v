`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.11.2024 08:35:52
// Design Name: 
// Module Name: shiftRotate_tb
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


module shiftRotate_tb();
    reg [7:0] in;
    reg [2:0] opcode;
    wire [7:0] out;
    
    shiftRotate dut(.in(in), .opcode(opcode), .out(out));
    
    initial begin
    in = 10110101;
    opcode = 000;
    #5;
    opcode = 001;
    #5;
    opcode = 010;
    #5;
    opcode = 011;
    #5;
    opcode = 100;
    #5;
    $finish();
    end
endmodule
