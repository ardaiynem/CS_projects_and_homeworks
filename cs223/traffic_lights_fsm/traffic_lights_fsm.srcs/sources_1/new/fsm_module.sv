`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2022 15:47:52
// Design Name: 
// Module Name: fsm_module
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
module ClockSlowDownFSM(input clk, output slowClk);
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
    assign slowClk = clkOut;
endmodule
*/


module fsm_module(clk, reset, sa, sb, ledA1, ledA2, ledA3, ledB1, ledB2, ledB3);
    input logic clk, reset, sa, sb;
    output logic ledA1, ledA2, ledA3, ledB1, ledB2, ledB3;
    logic la1, la0, lb1, lb0;

    logic [29:0] count = 0;
    logic clkNew;
    always@(posedge clk)
        begin 
            count <= count + 1;
            if (count == 150000000)
                begin
                    count <= 0;
                    clkNew = ~clkNew;
                end
        end

    typedef enum logic [3:0] {S0 = 4'b0000 , S1 = 4'b0001, S2 = 4'b0010, S3 = 4'b0011, S4 = 4'b0100,
                              S5 = 4'b0101, S6 = 4'b0110, S7 = 4'b0111, S8 = 4'b1000, S9 = 4'b1001} statetype;
    statetype state, nextstate;
    parameter green = 2'b00;
    parameter yellow = 2'b01;
    parameter red = 2'b10;
    
    // state register
    always_ff @ (posedge clkNew, posedge reset)
        if (reset) state <= S0;
        else state <= nextstate;
        
    // next state logic
    always_comb
        case (state)
        S0: if(sa) nextstate = S1;
            else if (~sb) nextstate = S0;
            else nextstate = S6; 
        S1: nextstate = S2;
        S2: if(~sa & ~sb) nextstate = S0;
            else if (~sa & sb) nextstate = S4;
            else if (sa & ~sb) nextstate = S2;
            else nextstate = S3;
        S3: nextstate = S4;
        S4: nextstate = S5;
        S5: nextstate = S6;
        S6: nextstate = S7;
        S7: if(~sa & ~sb) nextstate = S0;
            else if (~sa & sb) nextstate = S7;
            else if (sa & ~sb) nextstate = S9;
            else nextstate = S8;
        S8: nextstate = S9;
        S9: nextstate = S0;
        default: nextstate = S0;
        endcase
    

    // output logic
    always_comb
    begin
        case (state)
        S0: {la1, la0, lb1, lb0} = {red, red};
        S1: {la1, la0, lb1, lb0} = {yellow, red};
        S2: {la1, la0, lb1, lb0} = {green, red};
        S3: {la1, la0, lb1, lb0} = {green, red};
        S4: {la1, la0, lb1, lb0} = {yellow, red};
        S5: {la1, la0, lb1, lb0} = {red, red};
        S6: {la1, la0, lb1, lb0} = {red, yellow};
        S7: {la1, la0, lb1, lb0} = {red, green};
        S8: {la1, la0, lb1, lb0} = {red, green};
        S9: {la1, la0, lb1, lb0} = {red, yellow};
        default: {la1, la0, lb1, lb0} = {red, red};
        endcase
        
        // decoder
        case ({la1,la0})
        2'b00: {ledA1, ledA2, ledA3} = 3'b110;
        2'b01: {ledA1, ledA2, ledA3} = 3'b100;
        2'b10: {ledA1, ledA2, ledA3} = 3'b111;
        default: {ledA1, ledA2, ledA3} = 3'b111;
        endcase
        
        case ({lb1,lb0})
        2'b00: {ledB1, ledB2, ledB3} = 3'b110;
        2'b01: {ledB1, ledB2, ledB3} = 3'b100;
        2'b10: {ledB1, ledB2, ledB3} = 3'b111;
        default: {ledB1, ledB2, ledB3} = 3'b111;
        endcase
    end
        
endmodule
