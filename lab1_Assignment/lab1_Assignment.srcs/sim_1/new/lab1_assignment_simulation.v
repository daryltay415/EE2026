`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.08.2023 22:39:17
// Design Name: 
// Module Name: lab1_assignment_control_module_simulation
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


module lab1_assignment_control_module_simulation(

    );
    
    reg A;
    reg B;
    reg C;
    reg D;
    reg E;
    reg F;
    reg G;
    reg H;
    reg I;
    reg J;
    
    wire LED1;
    wire LED2;
    wire LED3;
    wire LED4;
    wire LED5;
    wire LED6;
    wire LED7;
    wire LED8;
    wire LED9;
    wire LED10;
    wire LED15;
    
    lab1_assignment_control_module dut(A,B,C,D,E,F,G,H,I,J,LED1,LED2,LED3,LED4,LED5,LED6,LED7,LED8,LED9,LED10,LED15);
    
    initial begin
        A=1; B=0; C=0; D=0; E=0; F=0; G=0; H=0; I=0; J=0; #10;
        A=0; B=1; C=0; D=0; E=0; F=0; G=0; H=0; I=0; J=0; #10;
        A=0; B=0; C=1; D=0; E=0; F=0; G=0; H=0; I=0; J=0; #10;
        A=0; B=0; C=0; D=1; E=0; F=0; G=0; H=0; I=0; J=0; #10;
        A=0; B=0; C=0; D=0; E=1; F=0; G=0; H=0; I=0; J=0; #10;
        A=0; B=0; C=0; D=0; E=0; F=1; G=0; H=0; I=0; J=0; #10;
        A=0; B=0; C=0; D=0; E=0; F=0; G=1; H=0; I=0; J=0; #10;
        A=0; B=0; C=0; D=0; E=0; F=0; G=0; H=1; I=0; J=0; #10;
        A=0; B=0; C=0; D=0; E=0; F=0; G=0; H=0; I=1; J=0; #10;
        A=0; B=0; C=0; D=0; E=0; F=0; G=0; H=0; I=0; J=1; #10;
        A=0; B=0; C=1; D=0; E=0; F=1; G=0; H=1; I=0; J=0; #10;
     end
        
endmodule
