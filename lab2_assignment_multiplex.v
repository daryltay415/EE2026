`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2023 16:00:27
// Design Name: 
// Module Name: lab2_assignment_multiplex
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


module lab2_assignment_multiplex(
   
    input [5:0] DR,NR,
    input Button,
    output [5:0] Z
    );
    
    assign Z = Button ? NR : DR;
   
endmodule
