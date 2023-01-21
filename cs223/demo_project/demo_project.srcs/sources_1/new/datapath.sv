`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.04.2022 22:40:46
// Design Name: 
// Module Name: datapath
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


module datapath(clk, reset, mem_add, mem_wd, mem_rd, reg_wd1, reg_wd2, reg_rd1, reg_rd2, mem_we, mem_re, reg_we, reg_re,
reg_wa1, reg_wa2, reg_ra1, reg_ra2);
    input logic clk, reset;
    input logic [3:0] mem_add, mem_wd, reg_wd1, reg_wd2;
    output logic [3:0] reg_rd1, reg_rd2, mem_rd;
    input logic mem_we, mem_re, reg_we, reg_re;
    input logic [2:0] reg_wa1, reg_wa2, reg_ra1, reg_ra2;
    
    
    data_memory data_mem(clk, reset, mem_we, mem_re, mem_add, mem_wd, mem_rd);
    reg_file rf(clk, reset, reg_we, reg_re, reg_wa1, reg_wa2, reg_ra1, reg_ra2, reg_wd1, reg_wd2, reg_rd1, reg_rd2);
    //alu(inst, reg_rd1, reg_rd2, result);
    
endmodule

module data_memory(clk, reset, we, re, adr, wd , rd);
    input logic clk, we, re, reset;
    input logic [3:0] adr;
    input logic [3:0] wd;
    output logic [3:0] rd;
    integer i;
        
    logic [3:0] RAM[15:0];
    always_ff @(posedge clk)
        if (reset)
            for(i = 0; i < 16; i=i+1) 
            begin
                RAM[i] <= 'b0;
            end
        else begin
            if (we) RAM[adr] <= wd;
        end
    
    /*
    always_comb
        if (1) rd <= RAM[adr];
    */
    assign rd = RAM[adr];
endmodule

module reg_file(clk, reset, we, re, wa1, wa2, ra1, ra2, wd1, wd2, rd1, rd2);
    input logic clk, we, re, reset;
    input logic [2:0] wa1, wa2;
    input logic [2:0] ra1, ra2;
    input logic [3:0] wd1, wd2;
    output logic [3:0] rd1, rd2;
    integer i;
    
    logic [3:0] RAM[7:0];
    always @(posedge clk)
        if (reset)
            for(i = 0; i < 8; i=i+1) 
            begin
                RAM[i] <= 'b0;
            end
        else begin
            if (we) begin
                RAM[wa1] <= wd1;
                RAM[wa2] <= wd2;
            end
        end
    
    /*
    always_comb
        if (1) begin
            rd1 <= RAM[ra1];
            rd2 <= RAM[ra2];
        end
        */
    
    assign rd1 = RAM[ra1];
    assign rd2 = RAM[ra2];
endmodule

/*
module ALU(input logic [2:0] sel, input logic [3:0] d1, d0,
                    output logic [3:0] res, output logic [3:0] remainder);
    always_comb
        begin
            case(sel)
            3'b010: begin  res = d1 - d0; 
                    remainder = 3'b0000; end
            3'b011: begin  res = d1 + d0; 
                    remainder = 3'b0000; end
            3'b100: begin  res = d1 * d0; 
                    remainder = 3'b0000; end
            3'b101: begin  res = d1 / d0; 
                    remainder = d1 % d0; end
            endcase
        end
endmodule
*/

/*
module alu(ins, a, b, result, remainder);
    input logic [2:0] ins;
    input logic [3:0] a;
    input logic [3:0] b;
    output logic [3:0] result;
    output logic [3:0] remainder
    
    always_comb
    begin
    case (ins)
        3'b011: result = a - b;
        3'b100: result = a + b;
        3'b101: result = a * b;
        3'b110: begin 
            result = a / b;
            remainder = d1 % d0; end
        end
        default: result = a + b;
    endcase
    end
endmodule
*/