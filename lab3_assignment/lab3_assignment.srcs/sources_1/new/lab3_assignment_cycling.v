`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.09.2023 01:05:05
// Design Name: 
// Module Name: lab3_assignment_cycling
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


module lab3_assignment_cycling(
    input clock,
    output reg[1:0] Count
    );
    
    always @(posedge clock) begin
     Count <= (Count == 2)? 2'b00: Count + 1;
     end
                             
endmodule
