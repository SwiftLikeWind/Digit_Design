module alu_4bit (
    input wire [3:0] A, B,   // 4-bit Inputs
    input wire [2:0] ALU_Sel, // ALU Operation Select
    output reg [3:0] ALU_Out, // 4-bit ALU Result
    output reg CarryOut        // Carry/Borrow Out
);

always @(*) begin
    case(ALU_Sel)
        3'b000: {CarryOut, ALU_Out} = A + B;      // Addition
        3'b001: {CarryOut, ALU_Out} = A - B;      // Subtraction
        3'b010: ALU_Out = A & B;                 // Bitwise AND
        3'b011: ALU_Out = A | B;                 // Bitwise OR
        3'b100: ALU_Out = A ^ B;                 // Bitwise XOR
        3'b101: ALU_Out = A << 1;                // Left Shift
        3'b110: ALU_Out = A >> 1;                // Right Shift
        3'b111: ALU_Out = ~A;                    // Bitwise NOT
        default: ALU_Out = 4'b0000;
    endcase
end

endmodule
