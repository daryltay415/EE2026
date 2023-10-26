`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.09.2023 20:51:58
// Design Name: 
// Module Name: lab3_assignment_Clk10Hz
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


module lab3_assignment_Clk10Hz(
    input Basys_clock,
    output reg Clk10Hz = 0,
    output reg Clk20Hz = 0
    );
    reg [31:0] Count = 0;
    reg [31:0] Count2 = 0;
       always @(posedge Basys_clock) begin
           Count <= (Count == 4999999)? 0: Count+1;
           Count2 <= (Count2 == 2499999)? 0: Count2+1;
           Clk10Hz <= (Count == 0)? ~Clk10Hz : Clk10Hz;
           Clk20Hz <= (Count2 == 0)? ~Clk20Hz : Clk20Hz;
       end
    
endmodule
