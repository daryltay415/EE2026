`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.09.2023 11:43:51
// Design Name: 
// Module Name: lab3_assignment_Clk1kHz
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


module lab3_assignment_Clk1kHz(
    input Basys_clock,
    output reg Clk1kHz = 0
    );
    
    reg [31:0] Count;
    always @(posedge Basys_clock) begin
         Count <= (Count == 49999)? 0: Count+1;
         Clk1kHz <= (Count == 0)? ~Clk1kHz : Clk1kHz;
    end
    
endmodule
