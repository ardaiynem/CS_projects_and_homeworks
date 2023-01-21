`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.05.2022 22:01:37
// Design Name: 
// Module Name: processor
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


module processor(clk, sw_instruct, sw_data, btn_r, btn_l, btn_u, btn_d, btn_m, a, b, result, remainder, activeState);
    input logic clk, btn_r, btn_l, btn_u, btn_d, btn_m;
    input logic [11:0] sw_instruct;
    input logic [6:0] sw_data;
    logic [3:0] dp_mem_add, dp_mem_wd, dp_mem_rd, dp_reg_wd1, dp_reg_wd2, dp_reg_rd1, dp_reg_rd2;
    logic dp_mem_we, dp_mem_re, dp_reg_we, dp_reg_re, reset;
    logic [2:0] dp_reg_wa1, dp_reg_wa2, dp_reg_ra1, dp_reg_ra2;
    
    output logic [3:0] a, b, result, remainder;
    
    output logic [13:0] activeState;

    control_unit controller(clk, reset, sw_instruct, sw_data, btn_r, btn_l, btn_u, btn_d, btn_m, dp_mem_add, dp_mem_wd, dp_mem_rd, 
    dp_reg_wd1, dp_reg_wd2, dp_reg_rd1, dp_reg_rd2, dp_mem_we, dp_mem_re, dp_reg_we, dp_reg_re, dp_reg_wa1, dp_reg_wa2, dp_reg_ra1, dp_reg_ra2,
    a, b, result, remainder, activeState);
    
    datapath dp(clk, reset, dp_mem_add, dp_mem_wd, dp_mem_rd, dp_reg_wd1, dp_reg_wd2, dp_reg_rd1, dp_reg_rd2, dp_mem_we, dp_mem_re, dp_reg_we, dp_reg_re,
    dp_reg_wa1, dp_reg_wa2, dp_reg_ra1, dp_reg_ra2);
endmodule
