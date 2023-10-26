`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2023 13:36:12
// Design Name: 
// Module Name: lab2_assignment_4bit_adder
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


module lab2_assignment_4bit_adder(
    input [3:0] A,
    input [3:0] B,
    output [3:0] S,
    output Cout
    );
    
     wire Cwire1;
     wire Cwire2;
     wire Cwire3;
       
       lab2_assignment fa0(.A(A[0]), .B(B[0]), .Cin(1'b0), .S(S[0]), .Cout(Cwire1));
       lab2_assignment fa1(.A(A[1]), .B(B[1]), .Cin(Cwire1), .S(S[1]), .Cout(Cwire2));
       lab2_assignment fa2(.A(A[2]), .B(B[2]), .Cin(Cwire2), .S(S[2]), .Cout(Cwire3));
       lab2_assignment fa3(.A(A[3]), .B(B[3]), .Cin(Cwire3), .S(S[3]), .Cout(Cout));
       
endmodule
