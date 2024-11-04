`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.11.2024 17:38:48
// Design Name: 
// Module Name: shiftRotate
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


module shiftRotate(
    input [7:0] in,
    input [2:0] opcode,
    output reg [7:0] out
    );
    parameter sra = 3'b000, srl = 3'b001, sla = 3'b010, sll = 3'b011, rr = 3'b100, rl = 3'b101;
      
    //next state
    always@(*) begin
        case(opcode)
            sra: out <= {in[7], in[7], in[6], in[5], in[4], in[3], in[2], in[1]};
            sla: out <= in << 1;
            srl: out <= in >> 1;
            sll: out <= in << 1;
            default: out <= 0;
        endcase
    end
    
endmodule
