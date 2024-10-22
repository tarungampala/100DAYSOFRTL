`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.10.2024 23:06:10
// Design Name: 
// Module Name: carry_select_adder_tb
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


module carry_select_adder_tb();

    reg [3:0] A, B;
    reg cin;
    wire cout;
    wire [3:0] sum;
    
    carry_select_adder_4bit dut(.A(A), .B(B), .cin(cin), .cout(cout), .sum(sum));
    
    initial begin
        A = 4'b0001;
        B = 4'b0110;
        cin = 0;
        #5;
        A = 4'b1101;
        B = 4'b1010;
        cin = 1;
        #5;
        A = 4'b0111;
        B = 4'b0010;
        cin = 1;
        #5;
        A = 4'b0101;
        B = 4'b0010;
        cin = 1;
        #5;
        $finish();
    end
    
endmodule
