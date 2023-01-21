`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.05.2022 22:36:14
// Design Name: 
// Module Name: testbench_proc
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


module testbench_proc();

logic clk, btn_r, btn_l, btn_u, btn_d, btn_m, dp;
logic [15:0] sw;
logic [6:0] seg;
logic [3:0] an;

top_module dut(clk, sw, btn_r, btn_l, btn_u, btn_d, btn_m, seg, dp, an);

initial begin
        btn_d = 1; #5;
        #5;
        btn_d = 0; #5;
        #5;
        sw[11:0] = 12'b010_110_000_001; #5;
        #5;
        btn_m = 1;
        #5;
        btn_m = 1;
        /*
        btn_r = 1; sw[11:0] = 12'b101_110_010_011; #20;
        #20;
        btn_r = 0;
        #20;
        btn_r = 1; sw[11:0] = 12'b011_110_100_101; #20;
        #20;
        btn_r = 0;
        #20;
        btn_r = 1; sw[11:0]  = 12'b100_110_000_001; #20;
        #20;
        btn_r = 0;
        #20;
        btn_r = 1; sw[11:0]  = 12'b110_000_000_111; #20;
        #20;
        btn_r = 0;
        */
    end
                       
    always begin
        clk <= 1; #5;
        clk <= 0; #5;
    end

endmodule
