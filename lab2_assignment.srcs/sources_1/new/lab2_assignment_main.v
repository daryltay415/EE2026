`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2023 15:55:24
// Design Name: 
// Module Name: lab2_assignment_main
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


module lab2_assignment_main(
    input [5:0] A,
    input [5:0] B,
    output [5:0] S,
    output [6:0] seg,
    output [3:0] an,
    input pushbutton,
    output pushLED
    );
    
    assign seg = 7'b1101010;
    assign an = 4'b1110;
    assign pushLED = pushbutton;
    
 
    
    
endmodule
