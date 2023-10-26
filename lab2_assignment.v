`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2023 13:27:50
// Design Name: 
// Module Name: lab2_assignment
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


module lab2_assignment(
    input A,
    input B,
    input Cin,
    output S,
    output Cout
    );
    assign S = A^B^Cin;
    assign Cout = A&B | Cin&(A^B);
    
endmodule
