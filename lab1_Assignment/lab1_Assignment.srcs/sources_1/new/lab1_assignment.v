`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.08.2023 22:27:52
// Design Name: 
// Module Name: lab1_assignment_control_module
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


module lab1_assignment_control_module(
    input A,
    input B,
    input C,
    input D,
    input E,
    input F,
    input G,
    input H,
    input I,
    input J,
    output LED1,
    output LED2,
    output LED3,
    output LED4,
    output LED5,
    output LED6,
    output LED7,
    output LED8,
    output LED9,
    output LED10,
    output LED15,
    output A0,
    output A1,
    output A2,
    output A3,
    output SegA,
    output SegB,
    output SegC,
    output SegD,
    output SegE,
    output SegF,
    output SegG,
    output Dp
    
    );
    
    assign LED1 = (A & (~B|B) & (~C|C) & (~D|D) & (~E|E) & (~F|F) & (~G|G) & (~H|H) & (~I|I) & (~J|J));
    assign LED2 = ((~A|A) & B & (~C|C) & (~D|D) & (~E|E) & (~F|F) & (~G|G) & (~H|H) & (~I|I) & (~J|J));
    assign LED3 = ((~A|A) & (~B|B) & C & (~D|D) & (~E|E) & (~F|F) & (~G|G) & (~H|H) & (~I|I) & (~J|J));
    assign LED4 = ((~A|A) & (~B|B) & (~C|C) & D & (~E|E) & (~F|F) & (~G|G) & (~H|H) & (~I|I) & (~J|J));
    assign LED5 = ((~A|A) & (~B|B) & (~C|C) & (~D|D) & E & (~F|F) & (~G|G) & (~H|H) & (~I|I) & (~J|J));
    assign LED6 = ((~A|A) & (~B|B) & (~C|C) & (~D|D) & (~E|E) & F & (~G|G) & (~H|H) & (~I|I) & (~J|J));
    assign LED7 = ((~A|A) & (~B|B) & (~C|C) & (~D|D) & (~E|E) & (~F|F) & G & (~H|H) & (~I|I) & (~J|J));
    assign LED8 = ((~A|A) & (~B|B) & (~C|C) & (~D|D) & (~E|E) & (~F|F) & (~G|G) & H & (~I|I) & (~J|J));
    assign LED9 = ((~A|A) & (~B|B) & (~C|C) & (~D|D) & (~E|E) & (~F|F) & (~G|G) & (~H|H) & I & (~J|J));
    assign LED10 = ((~A|A) & (~B|B) & (~C|C) & (~D|D) & (~E|E) & (~F|F) & (~G|G) & (~H|H) & (~I|I) & J);
    assign LED15 = (~A & ~B & C & ~D & ~E & F & ~G & H & ~I & ~J); 
    assign A0 = (LED15 | ~LED15);
    assign A1 = LED15;
    assign A2 = LED15;
    assign A3 = ~(~LED15 | LED15);
    assign SegA = ~(~LED15 | LED15);
    assign SegB = LED15;
    assign SegC = LED15;
    assign SegD = ~LED15;
    assign SegE = ~LED15;
    assign SegF = ~LED15;
    assign SegG = ~(~LED15 | LED15);
    assign Dp = (LED15 | ~LED15);
    
endmodule
