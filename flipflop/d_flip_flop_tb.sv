`timescale 1ns / 1ps

module d_flip_flop_tb;

    reg D;
    reg CLK;
    reg RESET;
    wire Q;

    // Instantiate D Flip-Flop
    d_flip_flop uut (
        .D(D),
        .clk(CLK),
        .reset(RESET),
        .Q(Q)
    );

    // Generate Clock (Period = 10ns, Frequency = 100MHz)
    always #5 CLK = ~CLK;

    initial begin
        // Initialize Signals
        CLK = 0;
        D = 0;
        RESET = 1;
        #10 RESET = 0;  // Release Reset
        
        // Apply Test Cases
        #10 D = 1;  // Set D=1, expect Q=1 after CLK edge
        #10 D = 0;  // Set D=0, expect Q=0 after CLK edge
        #10 D = 1;  // Set D=1, expect Q=1 after CLK edge
        #10 RESET = 1;  // Apply Reset, expect Q=0
        #10 RESET = 0;  
        #10 D = 1;
        #10 $finish;  // End simulation
    end

    // Monitor Outputs
    initial begin
        $monitor("Time = %t | CLK = %b | D = %b | RESET = %b | Q = %b", $time, CLK, D, RESET, Q);
    end

endmodule
