`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.10.2024 16:19:40
// Design Name: 
// Module Name: d_latch_to_mux
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


module d_latch_to_mux();
    reg d;
    reg clk;
    wire q;
    
    d_latch dl(.d(d), .clk(clk), .q(q));
    
    initial clk = 0;
    always #2.5 clk = ~clk;
    
    always @(posedge clk) begin
        d = 0;#5;
        d = 1;#5;
        d = 0;#5;
        d = 1;#5;
        $finish();
    end
endmodule
