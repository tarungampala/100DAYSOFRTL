`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.09.2024 21:27:29
// Design Name: 
// Module Name: onehottb
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


module onehottb();
reg [3:0] bin;
wire [15:0] onehot;
bintoonehot dut(.bin(bin), .onehot(onehot));
reg clk;
initial begin 
    clk = 0;
end
always #5 clk = ~clk;
initial begin
    bin = 4'b0;
end
always @(posedge clk) begin
    bin = bin+1;
    if(bin == 4'b1111) begin
        $finish();
    end
end
endmodule
