`timescale 1ns / 1ps

module jk_ff(
    input j, k, clk,
    output q_bar,
    output reg q
);

assign q_bar = ~q;
always @(clk) begin
    if({j,k} == 2'b10) begin
        q <= 1;
    end
    else if({j,k} == 2'b01) begin
        q <= 0;
    end
    else if({j,k} == 2'b11) begin
        q <= ~q;
    end
end
endmodule