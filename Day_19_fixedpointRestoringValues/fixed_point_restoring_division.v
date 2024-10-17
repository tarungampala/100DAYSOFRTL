module fixed_point_restoring_division(
    input [3:0] a,        // Dividend
    input [3:0] b,        // Divisor
    output reg [7:0] result, // Result {Remainder, Quotient}
    input start          // Start signal
);
    wire [3:0] b_bar;
    reg [3:0] count;       // Counter for the number of iterations
    reg [4:0] b_neg;       // 2's complement of b (negative b)

    assign b_bar = ~b;
    always @(b_bar)
        b_neg = b_bar + 1;  // Calculate 2's complement of b

    always @(posedge start) begin
        result = a; 
        count = 4'b0100;
        if((a!=0) && (b!=0))
        while (count) 
        begin
            result = result << 1;
            result = {(result[7:4] + b_neg), result[3:0]};
            if (result[7] == 1'b1) begin
                result = {(result[7:4] + b), result[3:1], 1'b0};
                count = count - 1;
            end 
            else begin
                result = {result[7:1], 1'b1};
                count = count - 1;
            end
        end
    end
endmodule
