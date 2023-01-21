`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.05.2022 06:04:44
// Design Name: 
// Module Name: top_module
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

module top_module(clk, sw, btn_r, btn_l, btn_u, btn_d, btn_m, seg, dp, an, activeState);
    input logic clk, btn_r, btn_l, btn_u, btn_d, btn_m;
    input logic [15:0] sw;
    logic [3:0] a, b, result, remainder;
    output logic dp;
    output logic [6:0] seg;
    output logic [3:0] an;
    
    output logic [15:0] activeState;
    //assign activeState = {a, b, result, remainder};
    
    //logic [13:0] temp;
    
    logic [25:0] count = 0;
    logic clkOut = 0;
    
    always@(posedge clk)
        begin 
            count <= count + 1;
            if (count == 12_500_000)//12_500_000
                begin
                    count <= 0;
                    clkOut = ~clkOut;
                end
        end
    
    logic button_r, button_l, button_u, button_d, button_m;
    
    debouncer r( clkOut, btn_r, button_r);
    debouncer l( clkOut, btn_l, button_l);
    debouncer u( clkOut, btn_u, button_u);
    debouncer d( clkOut, btn_d, button_d);
    debouncer m( clkOut, btn_m, button_m);
    
    processor prc(clkOut, sw[11:0], sw[15:9], button_r, button_l, button_u, button_d, button_m, a, b, result, remainder, activeState);
    //processor prc(clk, sw[11:0], sw[15:9], btn_r, btn_l, btn_u, btn_d, btn_m, a, b, result, remainder, activeState);
    seven_seg_disp svn(clk, a, b, result, remainder, seg, dp, an);
    //seven_seg_disp svn(clk, 4'b0010, 4'b0100, 4'b0110, remainder, seg, dp, an);
endmodule
