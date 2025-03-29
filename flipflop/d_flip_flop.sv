module flip_flop (
    input wire D,        // Data input
    input wire clk,      // Clock input
    input wire reset,    // Asynchronous reset
    output reg Q         // Output
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            Q <= 1'b0;   // Reset output to 0
        else
            Q <= D;      // Capture input D at rising edge of clk
    end
endmodule
