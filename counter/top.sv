`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.03.2025 16:02:40
// Design Name: 
// Module Name: top
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

module top(
    input clk_100MHz,
    input reset,
    input stop,
    output [0:6] seg,
    output [3:0] digit
);
    wire w_10Hz;
    wire [3:0] w_1s, w_10s, w_100s, w_1000s;

    ten_hetz uut1(.clk_100MHz(clk_100MHz), .reset(reset), .clk_10Hz(w_10Hz));

    digits uut2(.clk_10Hz(w_10Hz), .reset(reset), .stop(stop), .ones(w_1s), .tens(w_10s), .hundreds(w_100s), .thousands(w_1000s));

    seg7_control uut3(.clk_100MHz(clk_100MHz), .reset(reset), .ones(w_1s), .tens(w_10s), .hundreds(w_100s), .thousands(w_1000s), .seg(seg), .digit(digit));
endmodule
