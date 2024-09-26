`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2024 10:52:25
// Design Name: 
// Module Name: clatb
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


module clatb();

reg [3:0] a, b;
reg cin;
wire [3:0] sum;
wire cout;
cladesign dut(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));

initial begin
    cin = 0;
    a = 0000;
    b = 0000;
    #5
    a = 0001;
    b = 0010;
    #5
    a = 0010;
    b = 0110;
    #5
    a = 0111;
    b = 0111;
    cin = 1;
    #5
    a = 1001;
    b = 0110;
    #5
    a = 1100;
    b = 1100;
    #5
    a = 1111;
    b = 1110;
    #5
    cin = 0;
    a = 1110;
    b = 1110;
    #5
    a = 1111;
    b = 1111;
    #5
    $finish();
end
endmodule
