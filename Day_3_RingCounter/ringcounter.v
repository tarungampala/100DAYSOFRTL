`timescale 1ns / 1ps
module ringcounter(
    output reg [3:0] count,
    input clk,
    input reset 
    );
    always @(posedge clk or posedge reset) begin
        if (reset)
            count <= 4'b0001;
        else
            count <= {count[2:0], count[3]};
    end
endmodule
