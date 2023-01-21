`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2022 16:42:14
// Design Name: 
// Module Name: tb_fsm
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


module tb_fsm();
    logic clk, reset, sa, sb;
    logic ledA1, ledA2, ledA3, ledB1, ledB2, ledB3;
    
    fsm_module dut(clk, reset, sa, sb, ledA1, ledA2, ledA3, ledB1, ledB2, ledB3);
    

    always
        begin
            clk = 0; #10; clk = 1; #10;
        end
        
    initial
        begin
        reset <= 0; sa <= 0; sb <= 0; @(posedge clk);
        sa <= 1; sb <= 0; @(posedge clk);
        @(posedge clk);
        reset <= 1; sa <= 0; sb <= 0; @(posedge clk);
        reset <= 0; sa <= 1; sb <= 1; @(posedge clk);
        @(posedge clk);
        sa <= 1; sb <= 0; @(posedge clk);
        @(posedge clk);
        sa <= 0; sb <= 1; @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        sa <= 1; sb <= 0; @(posedge clk);
        sa <= 0; sb <= 0; @(posedge clk);
        sa <= 1; sb <= 1; @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        sa <= 0; sb <= 1; @(posedge clk);
        @(posedge clk);
        sa <= 1; sb <= 0; @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        $stop; // End the simulation.
        end
endmodule
