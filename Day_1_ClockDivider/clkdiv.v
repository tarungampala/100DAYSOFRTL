`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.09.2024 12:12:00
// Design Name: 
// Module Name: clkdiv
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


module clkdiv(
input rst, clk, en,
output divby2, divby4, divby8, divby16
);

reg [3:0] count;

always @(posedge clk or posedge rst) begin
    if(rst == 1) begin
        count = 4'b0;
    end
    else if(en == 1) begin
        if(count == 4'd15) begin
            count = 0;
        end
        else begin
            count = count + 1;
        end
    end
end

assign divby2 = count[0];
assign divby4 = count[1];
assign divby8 = count[2];
assign divby16 = count[3];
endmodule
