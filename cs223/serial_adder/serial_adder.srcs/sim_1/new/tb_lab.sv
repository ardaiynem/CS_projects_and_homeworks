`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.04.2022 13:42:02
// Design Name: 
// Module Name: tb_lab
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


module tb_lab();
    logic shift, reset, load, inBit;
    logic [7:0] outBit;
    logic [7:0] prl;
    
    shift_register dut (shift, reset, load, prl, inBit, outBit);
    
        initial begin
            prl = 8'b01100110; shift = 0; inBit = 0; reset = 0; #10; load = 1; #10;
            load = 0; shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            prl = 8'b10101010; load = 1; #10; 
            load = 0; shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            reset = 1; #10; reset= 0; shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            /*
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            inBit = 0; shift = 1; #10; shift = 0; #10;
            inBit = 1; shift = 1; #10; shift = 0; #10;
            inBit = 0; shift = 1; #10; shift = 0; #10;
            inBit = 1; shift = 1; #10; shift = 0; #10
            inBit = 0; shift = 1; #10; shift = 0; #10;
            inBit = 1; shift = 1; #10; shift = 0; #10;
            inBit = 0; shift = 1; #10; shift = 0; #10;
            inBit = 1; shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            reset = 1; shift = 1; #10; shift = 0; #10; 
            reset = 0; shift = 1; #10; shift = 0; #10; 
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            load = 1; #10; load = 0; #10;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            */
        end
endmodule
