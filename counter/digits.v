`timescale 1ns/1ps

module digits(
    input clk_10Hz,
    input reset,
    input stop,
    output reg [3:0] ones,
    output reg [3:0] tens,
    output reg [3:0] hundreds,
    output reg [3:0] thousands
);
    always @(posedge clk_10Hz or posedge reset) begin
        if (reset) ones <= 0;
        else if (!stop) begin
            if (ones == 9) ones <= 0;
            else ones <= ones + 1;
        end
    end

    always @(posedge clk_10Hz or posedge reset) begin
        if (reset) tens <= 0;
        else if (!stop && ones == 9) begin
            if (tens == 9) tens <= 0;
            else tens <= tens + 1;
        end
    end

    always @(posedge clk_10Hz or posedge reset) begin
        if (reset) hundreds <= 0;
        else if (!stop && tens == 9 && ones == 9) begin
            if (hundreds == 9) hundreds <= 0;
            else hundreds <= hundreds + 1;
        end
    end

    always @(posedge clk_10Hz or posedge reset) begin
        if (reset) thousands <= 0;
        else if (!stop && tens == 9 && ones == 9 && hundreds == 9) begin
            if (thousands == 9) thousands <= 0;
            else thousands <= thousands + 1;
        end
    end
endmodule

            