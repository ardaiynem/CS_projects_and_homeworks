`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.11.2022 12:27:04
// Design Name: 
// Module Name: boardModule
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


module boardModule(clk, reset, signal, seg, an, memwrite, dp);
    // logic [3:0] in3, in2, in1, in0;
    input logic clk, reset, signal;
    output logic [6:0] seg;
    output logic [3:0] an;
    logic pulse;
    logic [31:0] writedata, dataadr, pc, instr, readdata;
    output logic memwrite, dp;
    
    
    display_controller display(clk, pc[7:4], pc[3:0], dataadr[7:4], dataadr[3:0], seg, dp, an);
    pulse_controller pulsey(clk, signal, reset, pulse);
    top  mips(pulse, reset, writedata, dataadr, pc, instr, readdata, memwrite);    
endmodule
