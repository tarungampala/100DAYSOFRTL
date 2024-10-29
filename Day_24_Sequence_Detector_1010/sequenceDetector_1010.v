`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.10.2024 19:48:01
// Design Name: 
// Module Name: sequenceDetector_1010
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


module sequenceDetector_1010(
    input din,
    input clk,
    input rst,
    output reg y
    );
    
    reg [2:0] ps, ns;
    parameter a = 3'b000, b = 3'b001, c = 3'b010, d = 3'b101;
    
    //Next state logic
    always @(*) begin
        case(ps)
            a : if(din == 1'b1) begin
                    ns = b;
                end
                else begin
                    ns = a;
                end
            b : if(din == 1'b0) begin
                    ns = c;
                end
                else begin
                    ns = b;
                end
            c : if(din == 1'b1) begin
                    ns = d;
                end
                else begin
                    ns = a;
                end
            d : if(din == 1'b0) begin
                    ns = c;
                end
                else begin
                    ns = b;
                end
        endcase
    end
    
    //Present State logic
    always @(posedge clk or posedge rst) begin
        if(rst) begin
            ps <= 3'b000;
        end
        else begin
            ps <= ns;
        end
    end
    
    //Output logic
    always @(posedge clk) begin
        case (ps)
            a : begin
                y <= 1'b0;
            end
            b : begin
                y <= 1'b0;
            end
             c : begin
                y <= 1'b0;
            end
             d : begin
                if(din == 1'b0) y <= 1'b1;
                else y <= 1'b0;
            end
        endcase
            
    end
    
endmodule
