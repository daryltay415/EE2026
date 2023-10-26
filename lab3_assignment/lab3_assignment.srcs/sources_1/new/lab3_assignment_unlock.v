`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.09.2023 23:29:23
// Design Name: 
// Module Name: lab3_assignment_unlock
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


module lab3_assignment_unlock(
    input up, down, left, right, center,
    input Basys_clock,
    input clk5hz, Clk1Hz,
    input Clk2Hz, Clk20Hz, Clk200Hz,
    input [2:0] sw,
    input sw15,
    input [31:0] sw15Countin,
    input [7:0] led,
    output reg [6:0] seg = 0,
    output reg [3:0] an,
    output reg LED15 = 0,
    output reg [31:0] sw15Count = 0
    );  
    reg [2:0] Count = 0;
  
    wire [6:0] segwire;
    wire [3:0] anwire;
    lab3_assignment_unlocked_mode ma0(.Basys_clock(Basys_clock), .Clk2Hz(Clk2Hz), .Clk20Hz(Clk20Hz), .Clk200Hz(Clk200Hz)
    , .led15(LED15), .sw(sw), .seg(segwire), .an(anwire));
    always @(posedge Basys_clock) begin
        sw15Count <= sw15Countin;
        if (Count == 3'b000 & ~LED15 & led[7] & sw15Count < 3000) begin
            seg <= 7'b1100011;
            an <= 4'b1110;
            end
        if (Count == 3'b001 & ~LED15 & led[7] & sw15Count < 3000) begin
            seg <= 7'b1001111;
            an <= 4'b1101;
            end
        if (Count == 3'b010 & ~LED15 & led[7] & sw15Count < 3000) begin
            seg <= 7'b1100011;
            an <= 4'b1011;
            end
        if (Count == 3'b011 & ~LED15 & led[7] & sw15Count < 3000) begin
            seg <= 7'b0100001;
            an <= 4'b0111;
            end
        if (Count == 3'b100 & ~LED15 & led[7] & sw15Count < 3000) begin
            seg <= 7'b1001111;
            an <= 4'b1101;
            end
        if (Count == 3'b101 & ~LED15 & led[7] & sw15Count < 3000) begin
            seg <= 7'b0100001;
            an <= 4'b0111;
            end
        if (Count == 3'b110 & ~LED15 & led[7] & sw15Count < 3000) begin
            seg <= 7'b1100011;
            an <= 4'b1110;
            LED15 <= 1;
            end
        if (LED15 & sw15Count < 3000 & led[7]) begin
        seg <= segwire;
        an <= anwire;
        end
        if (sw15Count == 3000 & led[7]) begin
        LED15 <= 0;
        seg <= 7'b0000110;
        an <= 4'b0000;
        end
        if (~sw15 & led[7]) begin
        sw15Count <= 0;
        end
        if (~led[7]) begin
        seg <= 7'b1111111;
        an <= 4'b1111;
        end
        
            
    end
    
    always @(posedge clk5hz) begin
    if(seg == 7'b1100011 & up & ~LED15 & led[7]) begin
    Count <= Count + 1;
    end
    if(seg == 7'b1001111 & left & ~LED15 & led[7]) begin
    Count <= Count + 1;
    end
    if(seg == 7'b0100001 & down & ~LED15 & led[7]) begin
    Count <= Count + 1;
    end
    end
    
    
endmodule
