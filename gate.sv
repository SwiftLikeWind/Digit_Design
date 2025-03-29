module basic_gates(
    input wire A,
    input wire B,
    output wire AND_out,
    output wire OR_out,
    output wire NOT_A,
    output wire NOT_B,
    output wire NAND_out,
    output wire NOR_out,
    output wire XOR_out,
    output wire XNOR_out
);

// Logic Gate Implementations
assign AND_out  = A & B;   // AND Gate
assign OR_out   = A | B;   // OR Gate
assign NOT_A    = ~A;      // NOT Gate for A
assign NOT_B    = ~B;      // NOT Gate for B
assign NAND_out = ~(A & B); // NAND Gate
assign NOR_out  = ~(A | B); // NOR Gate
assign XOR_out  = A ^ B;   // XOR Gate
assign XNOR_out = ~(A ^ B); // XNOR Gate

endmodule
