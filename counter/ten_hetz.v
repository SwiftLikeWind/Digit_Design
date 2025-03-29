`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.03.2025 16:05:26
// Design Name: 
// Module Name: ten_hetz
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


module ten_hetz(
    input clk_100MHz,
    input reset,
    output clk_10Hz
    );
    reg [22:0] ctr_reg = 0;
    reg clk_out_reg = 0;
    always@(posedge clk_100MHz or posedge reset)
    if(reset) begin
    ctr_reg <= 0;
    clk_out_reg <= 0;
    end
    else
    if(ctr_reg == 4_999_999)begin
    ctr_reg<=0;
    clk_out_reg <= ~clk_out_reg;
    end
    else
    ctr_reg <= ctr_reg+1;

    assign clk_10Hz = clk_out_reg;   
endmodule
