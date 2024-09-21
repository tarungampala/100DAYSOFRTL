`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.09.2024 07:19:34
// Design Name: 
// Module Name: paritygentb
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


module paritygentb();

reg [3:0] a;
wire y;
reg clk;
paritygen dut (.a(a), .y(y));

initial clk = 0;
always #5 clk = ~clk;

initial begin
    a = 0000;
end

always @(posedge clk) begin
    if(a == 4'b1111) begin
        $finish();
    end
    else begin
        a = a+1;
    end
end
endmodule
