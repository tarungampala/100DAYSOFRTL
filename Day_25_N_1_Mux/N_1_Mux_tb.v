`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.10.2024 21:46:41
// Design Name: 
// Module Name: N_1_Mux_tb
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


module N_1_Mux_tb();
    parameter N = 16;
    reg [N-1:0] I;
    reg [3:0] S;
    wire Y;
    
    N_1_Mux dut(.I(I), .S(S), .Y(Y));
    
    initial begin
        I = 16'd15;
        S = 4'b0000;
        #5
        I = 16'd10;
        S = 4'b1000;
        #5
        I = 16'd16;
        S = 4'b0101;
        #5
        I = 16'd20;
        S = 4'b1010;
        #5
        I = 16'd31;
        S = 4'b0011;
        #5;
        $finish();
    end
endmodule
