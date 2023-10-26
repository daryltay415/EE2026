`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2023 21:06:56
// Design Name: 
// Module Name: lab2_assignment_simulation
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


module lab2_assignment_simulation(

    );
    
    reg [5:0] A;
    reg [5:0] B;
    reg pb;
    
    wire [5:0] S;
    wire [6:0] seg;
    wire [3:0] an;
    wire [1:0] T;
    
    lab2_assignment_6bit_adder dut(.A(A[5:0]), .B(B[5:0]), .pb(pb), .S(S[5:0]), .seg(seg[6:0]), .an(an[3:0]), .T(T[1:0]));
    
    initial begin
        A = 6'b000111; B = 6'b001001; pb = 1'b0; #50;
        A = 6'b010011; B = 6'b001101; pb = 1'b0; #50;
        A = 6'b001011; B = 6'b100001; pb = 1'b1; #50;
        A = 6'b101001; B = 6'b010011; pb = 1'b1; #50;
        A = 6'b011011; B = 6'b001010; pb = 1'b0; #50;
        A = 6'b000001; B = 6'b000101; pb = 1'b1; #50;
        
    end
endmodule

