`timescale 1ns/1ps

module seg7_control(
input clk_100MHz,
input reset,
input [3:0] ones,
input [3:0] tens,
input [3:0] hundreds,
input [3:0] thousands,
output reg [0:6]seg,
output reg [3:0]digit
);

parameter ZERO = 7'b000_0001;
parameter ONE = 7'b100_1111;
parameter TWO = 7'b001_0010;
parameter THREE = 7'b000_0110;
parameter FOUR = 7'b100_1100;
parameter FIVE = 7'b010_0100;
parameter SIX = 7'b010_0000;
parameter SEVEN = 7'b000_1111;
parameter EIGHT = 7'b000_0000;
parameter NINE = 7'b000_0100;

reg [1:0] digit_select;
reg [16:0] digit_timer;

always@(posedge clk_100MHz or posedge reset)begin
    if(reset) begin
        digit_select <= 0;
        digit_timer <= 0;
    end
    else
        if(digit_timer == 99_999)begin
            digit_timer <= 0;
            digit_select <= digit_select + 1;
        end
        else
            digit_timer <= digit_timer + 1;
        end
 always@(digit_select) begin
    case(digit_select)
        2'b00:digit = 4'b1110;
        2'b01:digit = 4'b1101;
        2'b10:digit = 4'b1011;
        2'b11:digit = 4'b0111;
        endcase
     end
always@*
    case(digit_select)
        2'b00:begin
            case(ones)
                4'b0000:seg = ZERO;
                4'b0001:seg = ONE;
                4'b0010:seg = TWO;
                4'b0011:seg = THREE;
                4'b0101:seg = FOUR;
                4'b0110:seg = FIVE;
                4'b0111:seg = SIX;
                4'b1000:seg = SEVEN;
                4'b1001:seg = EIGHT;
                4'b1010:seg = NINE;
            endcase
         end
      2'b01:begin
                case(tens)
                4'b0000:seg = ZERO;
                4'b0001:seg = ONE;
                4'b0010:seg = TWO;
                4'b0011:seg = THREE;
                4'b0101:seg = FOUR;
                4'b0110:seg = FIVE;
                4'b0111:seg = SIX;
                4'b1000:seg = SEVEN;
                4'b1001:seg = EIGHT;
                4'b1010:seg = NINE;
            endcase
         end
      2'b10:begin
             case(hundreds)
                4'b0000:seg = ZERO;
                4'b0001:seg = ONE;
                4'b0010:seg = TWO;
                4'b0011:seg = THREE;
                4'b0101:seg = FOUR;
                4'b0110:seg = FIVE;
                4'b0111:seg = SIX;
                4'b1000:seg = SEVEN;
                4'b1001:seg = EIGHT;
                4'b1010:seg = NINE;
            endcase
         end
       2'b11:begin
             case(thousands)
                4'b0000:seg = ZERO;
                4'b0001:seg = ONE;
                4'b0010:seg = TWO;
                4'b0011:seg = THREE;
                4'b0101:seg = FOUR;
                4'b0110:seg = FIVE;
                4'b0111:seg = SIX;
                4'b1000:seg = SEVEN;
                4'b1001:seg = EIGHT;
                4'b1010:seg = NINE;
            endcase
         end
            
        endcase   
endmodule
