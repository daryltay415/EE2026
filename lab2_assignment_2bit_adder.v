`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2023 13:36:12
// Design Name: 
// Module Name: lab2_assignment_2bit_adder
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


module lab2_assignment_2bit_adder(
    input [1:0] A,
    input [1:0] B,
    input Cin,
    output [1:0] S
  
    );
    
    wire Cwire;
    
    lab2_assignment fa0(.A(A[0]), .B(B[0]), .Cin(Cin), .S(S[0]), .Cout(Cwire));
    lab2_assignment fa1(.A(A[1]), .B(B[1]), .Cin(Cwire), .S(S[1]));
    
endmodule
