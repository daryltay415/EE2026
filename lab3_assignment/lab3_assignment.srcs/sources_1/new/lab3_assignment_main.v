`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.09.2023 20:49:35
// Design Name: 
// Module Name: lab3_assignment_main
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


module lab3_assignment_main(
    input Basys_clock,
    input [2:0] sw,
    input sw15,
    input up, down, left, right, center,
    output [6:0] seg,
    output dp,
    output [3:0] an,
    output [7:0] led,
    output led15
    );
    assign dp = 1;
    wire clk1hz, clk10hz, clk100hz, clk5hz, clk2hz, clk20hz, clk200hz, clk1khz;
    wire [7:0] ledwire;
    wire [31:0] sw15Count1, sw15Count2;
    lab3_assignment_5hz ma0(.Basys_clock(Basys_clock), .Clk5Hz(clk5hz));
    lab3_assignment_Clk1Hz fa0(.Basys_clock(Basys_clock), .Clk1Hz(clk1hz), .Clk2Hz(clk2hz));
    lab3_assignment_Clk10Hz fa1(.Basys_clock(Basys_clock), .Clk10Hz(clk10hz), .Clk20Hz(clk20hz));
    lab3_assignment_Clk100Hz fa2(.Basys_clock(Basys_clock), .Clk100Hz(clk100hz), .Clk200Hz(clk200hz));
    lab3_assignment_Clk1kHz fa3(.Basys_clock(Basys_clock), .Clk1kHz(clk1khz));
    
    lab3_led_count_increase fa4(.Clk1Hz(clk1hz), .led(ledwire));
    
    lab3_which_led_blinks fa5(.sw(sw), .Basys_clock(Basys_clock), .clk1hz(clk1hz), .clk10hz(clk10hz), .clk100hz(clk100hz)
    , .led(led), .ledwire(ledwire), .sw15Count(sw15Count2));
    
    lab3_assignment_unlock fa6(.Basys_clock(Basys_clock), .up(up), .down(down), .left(left), .right(right), .center(center)
    , .seg(seg), .an(an), .LED15(led15), .clk5hz(clk5hz), .Clk2Hz(clk2hz), .Clk20Hz(clk20hz), .Clk200Hz(clk200hz), .sw(sw)
    , .sw15(sw15), .sw15Count(sw15Count2), .Clk1Hz(clk1hz), .sw15Countin(sw15Count1), .led(ledwire));
    
    lab3_assignment_switch15counter fa7(.Clk1kHz(clk1khz), .sw15(sw15), .sw15Count(sw15Count1));
   
    
    
endmodule
