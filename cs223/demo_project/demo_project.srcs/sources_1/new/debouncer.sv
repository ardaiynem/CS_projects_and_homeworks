`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.05.2022 06:32:38
// Design Name: 
// Module Name: debouncer
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
module SlowClock(input clk, output slowClk);
    logic [25:0] count = 0;
    logic clkOut;
    always@(posedge clk)
        begin 
            count <= count + 1;
            if (count == 12500000)
                begin
                    count <= 0;
                    clkOut = ~clkOut;
                end
        end
    assign slowClk = clkOut;
endmodule
*/

module FlipFlop(input logic clk, d, output logic q);
    always_ff@(posedge clk)
        begin
        q <= d;
        //qNot <= !q;
        end
endmodule

module debouncer(input logic clk, input logic button, output logic out);
    logic slwClk, q1, q2, q2Not;
    //SlowClock slowDown(clk, slwClk);
    //FlipFlop ff1(slwClk, button, q1);
    //FlipFlop ff2(slwClk, button, q2);
    
    FlipFlop ff1(clk, button, q1);
    FlipFlop ff2(clk, q1, q2);

    assign q2Not = ~q2;
    assign out = q1 & q2Not;
endmodule
