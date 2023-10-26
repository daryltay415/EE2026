`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.09.2023 20:51:58
// Design Name: 
// Module Name: lab3_assignment_Clk1Hz
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


module lab3_assignment_Clk1Hz(
    input Basys_clock,
    output reg Clk1Hz = 0,
    output reg Clk2Hz = 0
    );
    reg [31:0] Count = 0;
    reg [31:0] Count2 = 0;
    always @(posedge Basys_clock) begin
        Count <= (Count == 49999999)? 0: Count+1;
        Count2 <= (Count2 == 24999999)? 0: Count2+1;
        Clk1Hz <= (Count == 0)? ~Clk1Hz : Clk1Hz;
        Clk2Hz <= (Count2 == 0)? ~Clk2Hz : Clk2Hz;
    end
        
        
    
endmodule
