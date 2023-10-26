`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2023 13:49:42
// Design Name: 
// Module Name: lab2_assignment_6bit_adder
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


module lab2_assignment_6bit_adder(
    input [5:0] A,
    input [5:0] B,
    input pb,
    output [5:0] S,
    output [6:0] seg,
    output [3:0] an,
    output [1:0] T
    
    );

     assign seg = 7'b1101010;
     assign an = 4'b1110;
     assign T = pb? 2'b11:2'b00;
    
     wire Cwire;
     wire [5:0] Cwire1;
     
    

        
     lab2_assignment_4bit_adder fa0(.A(A[3:0]), .B(B[3:0]) ,.S(Cwire1[3:0]), .Cout(Cwire));
     lab2_assignment_2bit_adder fa1(.A(A[5:4]), .B(B[5:4]) ,.S(Cwire1[5:4]), .Cin(Cwire));  
     lab2_assignment_multiplex ma0(.DR(Cwire1[5:0]), .NR(Cwire1[5:0]<<1), .Z(S[5:0]), .Button(T));
     

 
    
endmodule
