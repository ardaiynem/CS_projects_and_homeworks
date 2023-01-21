`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.04.2022 15:22:37
// Design Name: 
// Module Name: tb
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

module tb();
    logic CLK, RESET, Load, Shift;
    logic [7:0] A, B, sum;
    sa SA(CLK, RESET, Load, Shift, A, B, sum);
    initial begin
    Shift = 1;
    RESET = 0;
    A = 8'b01001010;
    B = 8'b00110011;
    Load = 0; #10;
    Load = 1; #10;
    Load = 0; #10;
    #200; Shift = 0;
    end
    always
    begin
    CLK <= 0; #10;
    CLK <= 1; #10;
    end
endmodule
