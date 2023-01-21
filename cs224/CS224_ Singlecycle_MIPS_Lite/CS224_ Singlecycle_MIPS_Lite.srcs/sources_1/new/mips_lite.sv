`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.11.2022 18:24:01
// Design Name: 
// Module Name: mipsLiteSimulator
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


module mips_tb( );
    
logic clk, reset;
    logic [31:0] writedata, dataadr, pc, instr, readdata;
    logic memwrite;
    
    top dut(clk, reset, writedata, dataadr, pc, instr, readdata, memwrite);
    
    always 
    begin
        clk = 1'b0; 
        #10; // high for 20 * timescale = 20 ns
    
        clk = 1'b1;
        #10; // low for 20 * timescale = 20 ns
    end
    
    // reset
    initial 
    begin 
        reset = 1;
        #20;
        reset = 0;
    end
    
    integer i  = 0, total_cycle = 16;
    always @(posedge clk)
    begin
        if (total_cycle == i) 
        begin
            $stop;
        end	
        i = i+1;
    end
	
endmodule
