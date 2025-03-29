`timescale 1ns / 1ps

module tb_basic_gates;
    // Testbench Signals
    reg A, B;
    wire AND_out, OR_out, NOT_A, NOT_B, NAND_out, NOR_out, XOR_out, XNOR_out;
    
    // Instantiate the Module
    basic_gates uut (
        .A(A),
        .B(B),
        .AND_out(AND_out),
        .OR_out(OR_out),
        .NOT_A(NOT_A),
        .NOT_B(NOT_B),
        .NAND_out(NAND_out),
        .NOR_out(NOR_out),
        .XOR_out(XOR_out),
        .XNOR_out(XNOR_out)
    );
    
    // Testbench Procedure
    initial begin
        $monitor("A=%b B=%b | AND=%b OR=%b NOT_A=%b NOT_B=%b NAND=%b NOR=%b XOR=%b XNOR=%b", 
                 A, B, AND_out, OR_out, NOT_A, NOT_B, NAND_out, NOR_out, XOR_out, XNOR_out);
        
        // Apply Inputs and Observe Outputs
        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10;
        
        $stop; // End Simulation
    end
endmodule
