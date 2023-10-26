`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.09.2023 11:51:04
// Design Name: 
// Module Name: lab3_assignment_switch15counter
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


module lab3_assignment_switch15counter(
    input Clk1kHz,
    input sw15,
    output reg [31:0] sw15Count = 0
    );
    always @(posedge Clk1kHz) begin
     if(sw15)begin
     sw15Count <= (sw15Count == 3000)? sw15Count: sw15Count + 1;
     end
     if(~sw15) begin
     sw15Count <= 0;
     end
    end
endmodule
