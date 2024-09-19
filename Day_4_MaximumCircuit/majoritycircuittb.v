`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2024 22:28:15
// Design Name: 
// Module Name: majoritycircuittb
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


module majoritycircuittb();
reg [4:0] X;
wire Y;
reg clk;
majoritycircuit dut(.X(X), .Y(Y));

initial clk = 0;
always #5 clk = ~clk;

initial begin
    X = 5'd0;
    #316;
    $finish();
end
always @(posedge clk) begin
    if(X == 5'd31) begin
        X = 5'd0;
    end
    else begin
    X = X + 1;
    end
end
endmodule
