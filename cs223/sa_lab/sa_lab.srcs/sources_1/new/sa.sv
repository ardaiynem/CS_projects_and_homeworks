`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.04.2022 13:47:37
// Design Name: 
// Module Name: sa
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


/*
module ClockSlowDownFSM(input clk, output CLK);
    logic [29:0] count = 0;
    logic clkOut;
    always@(posedge clk)
        begin 
            count <= count + 1;
            if (count == 150000000)
                begin
                    count <= 0;
                    clkOut = ~clkOut;
                end
        end
    assign CLK = clkOut;
endmodule
*/

module sa(input logic CLK, RESET, Load, Shift, [7:0] A,
B,
    output logic [7:0] sum);
    
    //logic CLK;
    
    //ClockSlowDownFSM slwd(clk, CLK);
    logic [7:0] QA, QB;
    logic a, b, cin, cout, s, x;
    sr SA(CLK, RESET, Load, Shift, 1'b0, A, a, QA);
    sr SB(CLK, RESET, Load, Shift, 1'b0, B, b, QB);
    fa FA(a, b, cin, s, cout);
    sr SS(CLK, RESET, Load, Shift, s, 8'b00000000, x,
    sum);
    always_ff @(posedge CLK)
        if(cout) cin <= 1;
        else cin <= 0;
endmodule

module fa(a, b, cin, s, cout);
    input logic a, b, cin;
    output logic s, cout;
    logic xor1, and1, and2;
    
    assign xor1 = a ^ b;
    assign s = xor1 ^ cin;
    assign and1 = xor1 & cin;
    assign and2 = a & b;
    assign cout = and1 | and2;
endmodule
