`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.09.2023 00:25:01
// Design Name: 
// Module Name: lab3_assignment_25mhz
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


module lab3_assignment_5hz(
    input Basys_clock,
    output reg Clk5Hz
    );
    
    reg [31:0] Count = 0;
    
    always @(posedge Basys_clock) begin
        Count <= (Count == 9999999)? 0: Count+1;
        Clk5Hz <= (Count == 0)? ~Clk5Hz : Clk5Hz;
    end
endmodule
