`timescale 1ns / 1ps

module tb_alu_4bit;
    reg [3:0] A, B;
    reg [2:0] ALU_Sel;
    wire [3:0] ALU_Out;
    wire CarryOut;

    alu_4bit uut (
        .A(A), 
        .B(B), 
        .ALU_Sel(ALU_Sel), 
        .ALU_Out(ALU_Out), 
        .CarryOut(CarryOut)
    );

    initial begin
        $monitor("A=%b B=%b ALU_Sel=%b | ALU_Out=%b CarryOut=%b", A, B, ALU_Sel, ALU_Out, CarryOut);
        
        A = 4'b1010; B = 4'b0101; 

        ALU_Sel = 3'b000; #10; // Addition
        ALU_Sel = 3'b001; #10; // Subtraction
        ALU_Sel = 3'b010; #10; // AND
        ALU_Sel = 3'b011; #10; // OR
        ALU_Sel = 3'b100; #10; // XOR
        ALU_Sel = 3'b101; #10; // Left Shift
        ALU_Sel = 3'b110; #10; // Right Shift
        ALU_Sel = 3'b111; #10; // NOT

        $stop;
    end
endmodule
