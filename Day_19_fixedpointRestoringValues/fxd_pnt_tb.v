`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2024 16:20:14
// Design Name: 
// Module Name: fxd_pnt_tb
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


module fxd_pnt_tb();

reg [3:0] a;
reg [3:0] b;
reg start;
wire [7:0] result;

fixed_point_restoring_division dut(.a(a), .b(b), .result(result), .start(start));

initial begin
    start = 0;
    a = 4'b1010;
    b = 4'b0010;
    #5;
    start = 1;
    
    #5
    start = 0;
    a = 4'b0011;
    b = 4'b0011;
    #5;
    start = 1;
    #5;
    start = 0;
    a = 4'b1010;
    b = 4'b1010;
    #5;
    start = 1;
    #10;
    $finish();
end

endmodule
