`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.09.2023 20:51:58
// Design Name: 
// Module Name: lab3_assignment_Clk100Hz
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


module lab3_assignment_Clk100Hz(
    input Basys_clock,
    output reg Clk100Hz = 0,
    output reg Clk200Hz = 0
    );
    
     reg [31:0] Count = 0;
     reg [31:0] Count2 = 0;  
       always @(posedge Basys_clock) begin
           Count <= (Count == 499999)? 0: Count+1;
           Count2 <= (Count == 249999)? 0: Count2+1;
           Clk100Hz <= (Count == 0)? ~Clk100Hz : Clk100Hz;
           Clk200Hz <= (Count == 0)? ~Clk200Hz : Clk200Hz;
       end
endmodule
