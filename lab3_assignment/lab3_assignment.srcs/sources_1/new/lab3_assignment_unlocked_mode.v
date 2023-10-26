`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.09.2023 00:48:24
// Design Name: 
// Module Name: lab3_assignment_unlocked_mode
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


module lab3_assignment_unlocked_mode(
    input Basys_clock,
    input Clk2Hz,
    input Clk20Hz,
    input Clk200Hz,
    input led15,
    input [2:0] sw,
    output reg [6:0] seg = 7'b1100011,
    output reg [3:0] an = 4'b1110
    );
    wire [1:0] Count;
    reg clk;
    lab3_assignment_cycling ca0(.clock(clk), .Count(Count));
    always @(posedge Basys_clock) begin
    if(sw == 3'b001 & led15) begin
    clk <= Clk2Hz;
    end
    
    if((sw == 3'b011 | sw == 3'b010) & led15) begin
    clk <= Clk20Hz;
    end
    
    if((sw == 3'b100 | sw == 3'b101 | sw == 3'b110 | sw == 3'b111) & led15) begin
    clk <= Clk200Hz;
    end
    
    case(Count)
            2'b00:
                begin
                seg <= 7'b1100011;
                an <= 4'b1110;
                end
            2'b01:
                begin
                seg <= 7'b1001111;
                an <= 4'b1101;
                end
            2'b10:
                begin
                seg <= 7'b1100011;
                an <= 4'b1011;
                end
         endcase
    
    end
endmodule
