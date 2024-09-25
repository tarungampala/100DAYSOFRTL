`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.09.2024 07:22:28
// Design Name: 
// Module Name: counter_sync_bcd
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


module counter_sync_bcd(
input clk, rst,
output[3:0] Q,
output [3:0] Qbar
    );
 
wire [3:0] T;
    
t_flip_flop tff0(.clk(clk), .T(T[0]), .rst(rst), .Q(Q[0]), .Qbar(Qbar[0]));
t_flip_flop tff1(.clk(clk), .T(T[1]), .rst(rst), .Q(Q[1]), .Qbar(Qbar[1]));
t_flip_flop tff2(.clk(clk), .T(T[2]), .rst(rst), .Q(Q[2]), .Qbar(Qbar[2]));
t_flip_flop tff3(.clk(clk), .T(T[3]), .rst(rst), .Q(Q[3]), .Qbar(Qbar[3]));


//always @(posedge clk or posedge rst) begin
//    if(rst) begin
//        Q <= 4'b0000;
//    end
//    else if(Q == 4'b1001) begin
//        Q <= 4'b0000;
//    end
//    else begin
//        Q <= Q + 1;
//    end
//end

assign T[0] = 1'b1;
assign T[1] = ~Q[3] & Q[0];
assign T[2] = Q[1] & Q[0];
assign T[3] = (Q[3] & Q[0]) | (Q[2] & Q[1] & Q[0]);

endmodule
