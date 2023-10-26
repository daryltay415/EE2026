`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.09.2023 21:49:15
// Design Name: 
// Module Name: lab3_which_led_blinks
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


module lab3_which_led_blinks(
    input [2:0] sw,
    input Basys_clock,
    input clk1hz, clk10hz, clk100hz,
    input [7:0] ledwire,
    input [31:0] sw15Count,
    output reg [7:0] led
    
    );
    
     always @(posedge Basys_clock) begin
           led <= ledwire;
           if(sw == 3'b000 & ledwire == 8'b11111111 & sw15Count < 3000 ) begin
           led[2:0] <= 3'b111;
           end
           if(sw == 3'b001 & ledwire == 8'b11111111 & sw15Count < 3000) begin
           led[0] <= clk1hz;
           end
           if((sw == 3'b010 | sw == 3'b011)  & ledwire == 8'b11111111 & sw15Count < 3000) begin
           led[1] <= clk10hz;
           end
           if((sw == 3'b100 | sw == 3'b110 | sw == 3'b101 | sw == 3'b111) & ledwire == 8'b11111111 & sw15Count < 3000) begin
           led[2] <= clk100hz;
           end
           if(sw15Count == 3000 & ledwire == 8'b11111111) begin
           led <= 8'b10100100;
           end
       end
     
endmodule
