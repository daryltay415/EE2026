`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.09.2023 21:43:27
// Design Name: 
// Module Name: lab3_led_count_increase
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


module lab3_led_count_increase(
    input Clk1Hz,
    output reg [7:0] led = 0

    );
    reg [2:0] Count;
    always @(posedge Clk1Hz) begin
        led[Count] <= 1;
        Count <= (Count == 7)? 3'b111: Count + 1;
       
    end
endmodule
