`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2022 13:09:02
// Design Name: 
// Module Name: testproc
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


module testproc();
    logic clk, btn_r, btn_l, btn_u, btn_d, btn_m;
    logic [11:0] sw_instruct;
    logic [6:0] sw_data;

    processor dut(clk, sw_instruct, sw_data, btn_r, btn_l, btn_u, btn_d, btn_m);
    
    
    always
        begin
            clk = 0; #10; clk = 1; #10;
        end
        
    initial
        begin
        sw_instruct <= 0; sw_data <= 7'b1010110; btn_r <= 0; btn_l <= 0; btn_u <= 0; btn_d <= 0; btn_m <= 0; @(posedge clk);
        btn_u <= 1; @(posedge clk);
        @(posedge clk);
        $stop; // End the simulation.
        end
endmodule
