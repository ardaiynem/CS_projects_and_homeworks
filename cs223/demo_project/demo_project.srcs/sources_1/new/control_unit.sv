`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.04.2022 21:48:20
// Design Name: 
// Module Name: control_unit
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


module control_unit(clk, reset, sw_instruct, sw_data, btn_r, btn_l, btn_u, btn_d, btn_m, dp_mem_add, dp_mem_wd, dp_mem_rd, 
dp_reg_wd1, dp_reg_wd2, dp_reg_rd1, dp_reg_rd2, dp_mem_we, dp_mem_re, dp_reg_we, dp_reg_re, dp_reg_wa1, dp_reg_wa2, dp_reg_ra1, dp_reg_ra2,
a, b, result, remainder, activeState);
    input logic clk, btn_r, btn_l, btn_u, btn_d, btn_m;
    input logic [11:0] sw_instruct;
    input logic [6:0] sw_data;
    input logic [3:0] dp_reg_rd1, dp_reg_rd2, dp_mem_rd;
    output logic [3:0] dp_mem_add, dp_mem_wd, dp_reg_wd1, dp_reg_wd2;
    output logic dp_mem_we, reset, dp_mem_re, dp_reg_we, dp_reg_re;
    output logic [2:0] dp_reg_wa1, dp_reg_wa2, dp_reg_ra1, dp_reg_ra2;
    
    output logic [13:0] activeState;
    
    logic mem_we, mem_re, isexternal, load, load_reg;
    logic [11:0] mem_wd, mem_rd, reg_in, reg_out;
    logic [2:0] mem_add, pc_add;
    
    output logic [3:0] a, b, result, remainder;

    insturction_memory ins_mem(clk, reset, load, mem_we, mem_re, mem_add , mem_wd , mem_rd);
    instruction_register ins_reg(clk, reset, load_reg, reg_in, reg_out, isexternal, sw_instruct);
    program_counter pc(clk, reset, load, pc_add, isexternal);
    controlfsm fsm(clk, reset, sw_instruct, sw_data, btn_r, btn_l, btn_u, btn_d, btn_m, dp_mem_add, dp_mem_wd, dp_mem_rd, 
    dp_reg_wd1, dp_reg_wd2, dp_reg_rd1, dp_reg_rd2, dp_mem_we, dp_mem_re, dp_reg_we, dp_reg_re, dp_reg_wa1, dp_reg_wa2, dp_reg_ra1, dp_reg_ra2,
    mem_we, mem_re, isexternal, load, load_reg, mem_wd, mem_rd, reg_in, reg_out, mem_add, pc_add, a, b, result, remainder, activeState);
endmodule

module controlfsm(clk, reset, sw_instruct, sw_data, btn_r, btn_l, btn_u, btn_d, btn_m, dp_mem_add, dp_mem_wd, dp_mem_rd, 
dp_reg_wd1, dp_reg_wd2, dp_reg_rd1, dp_reg_rd2, dp_mem_we, dp_mem_re, dp_reg_we, dp_reg_re, dp_reg_wa1, dp_reg_wa2, dp_reg_ra1, dp_reg_ra2,
mem_we, mem_re, isexternal, load, load_reg, mem_wd, mem_rd, reg_in, reg_out, mem_add, pc_add, a, b, result, remainder, activeState);
    input logic clk, btn_r, btn_l, btn_u, btn_d, btn_m;
    input logic [11:0] sw_instruct, mem_rd, reg_out;
    input logic [6:0] sw_data;
    input logic [3:0] dp_reg_rd1, dp_reg_rd2, dp_mem_rd;
    output logic [3:0] dp_mem_add, dp_mem_wd, dp_reg_wd1, dp_reg_wd2;
    output logic dp_mem_we, reset, dp_mem_re, dp_reg_we, dp_reg_re;
    output logic [2:0] dp_reg_wa1, dp_reg_wa2, dp_reg_ra1, dp_reg_ra2;
    input logic [2:0] pc_add;
    output logic mem_we, mem_re, isexternal, load, load_reg;
    output logic [11:0] mem_wd, reg_in;
    output logic [2:0] mem_add;
    output logic [3:0] a, b, result, remainder;
    
    output logic [13:0] activeState;
    
    assign reg_in = mem_rd;
    
    
    typedef enum logic [3:0] {S0 = 4'b0000 , S1 = 4'b0001, S2 = 4'b0010, S3 = 4'b0011, S4 = 4'b0100,
                              S5 = 4'b0101, S6 = 4'b0110, S7 = 4'b0111, S8 = 4'b1000, S9 = 4'b1001, S10 = 4'b1010,
                              S11 = 4'b1011, S12 = 4'b1100, S13 = 4'b1101} statetype;
    statetype state, nextstate;
        
    // state register
    always_ff @ (posedge clk)
        state <= nextstate;
    
    // next state logic
    always_comb
        case (state)
        S0: nextstate = S1; 
        S1: begin 
                if(btn_m) nextstate = S2;
                else if (btn_d) nextstate = S0;
                else if (btn_u) nextstate = S3;
                else if (btn_r) nextstate = S4;
                else if (btn_l) nextstate = S5;
                else nextstate = S1;
            end
        S2: nextstate = S1;
        S3: nextstate = S1;
        S4: nextstate = S6;
        S5: nextstate = S6;
        S6:
            case (reg_out[11:9])
                3'b000: nextstate = S7;
                3'b001: nextstate = S8;
                3'b010: nextstate = S9;
                3'b011: nextstate = S10;
                3'b100: nextstate = S11;
                3'b101: nextstate = S12;
                3'b110: nextstate = S13;
            endcase
        S7: nextstate = S1;
        S8: nextstate = S1;
        S9: nextstate = S1;
        S10: nextstate = S1;
        S11: nextstate = S1;
        S12: nextstate = S1;
        S13: nextstate = S1;
        default: nextstate = S0;
    endcase
    
    always_comb begin
        case (state)
        S0: begin
            isexternal <= 0;
            reset <= 1;
            load <= 1;
            load_reg <= 1;
            mem_we <= 0;
            mem_re <= 0;
            dp_reg_we <= 0;
            dp_reg_re <= 0;
            dp_mem_we <= 0;
            dp_mem_re <= 0;
            dp_mem_add <= 0;
            dp_mem_wd <= 0;
            dp_reg_wd1 <= 0;
            dp_reg_wd2 <= 0;
            dp_reg_wa1 <= 0;
            dp_reg_wa2 <= 0;
            dp_reg_ra1 <= 0;
            dp_reg_ra2 <= 0;
            
            //a <= 4'b0000;
            //b <= 4'b0000;
            //result <= 4'b0000;
            //remainder <= 4'b0000;
            activeState <= 14'b00000000000000;
        end
        S1: begin
            reset <= 0;
            dp_reg_we <= 0;
            dp_reg_re <= 0;
            dp_mem_we <= 0;
            dp_mem_re <= 0;
            mem_we <= 0;
            mem_re <= 0;
            load_reg <= 1;
            load <= 1;
            dp_mem_add <= 0;
            dp_mem_wd <= 0;
            dp_reg_wd1 <= 0;
            // try to comment out wd = 0's
            dp_reg_wd2 <= 0;
            dp_reg_wa1 <= 0;
            dp_reg_wa2 <= 0;
            dp_reg_ra1 <= dp_reg_ra1;
            dp_reg_ra2 <= dp_reg_ra2;

            activeState <= 14'b00000000000001;
        end
        S2: begin
            isexternal <= 0;
            reset <= 0;
            load <= 1;
            mem_we <= 1;
            mem_re <= 0;
            load_reg <= 1;
            dp_reg_we <= 0;
            dp_reg_re <= 0;
            dp_mem_we <= 0;
            dp_mem_re <= 0;
            
            mem_wd <= sw_instruct;
            activeState <= 14'b00000000000010;
        end
        S3: begin
            isexternal <= 0;
            load <= 1;
            mem_we <= 0;
            mem_re <= 0;
            load_reg <= 1;
            dp_reg_we <= 1;
            dp_reg_re <= 0;
            dp_mem_we <= 0;
            dp_mem_re <= 0;
            dp_reg_wa1 <= sw_data[2:0];
            dp_reg_wd1 <= sw_data[6:3];
            
            activeState <= 14'b00000000000100;
            
            //a <= sw_data[6:3];
        end
        S4: begin
            isexternal <= 1;
            reset <= 0;
            load <= 1;
            mem_we <= 0;
            mem_re <= 0;
            load_reg <= 0;
            //mem_add <= pc_add;
            activeState <= 14'b00000000001000;
        end
        S5: begin
            isexternal <= 0;
            reset <= 0;
            load <= 0;
            mem_we <= 0;
            mem_re <= 1;
            load_reg <= 0;
            mem_add <= pc_add;
            
            activeState <= 14'b00000000010000;
        end
        S6: begin
        load <= 1;
        load_reg <= 1;
        activeState <= 14'b00000000100000;
        end
        S7: begin
        dp_reg_wa1 <= reg_out[6:4];
        dp_mem_add <= reg_out[3:0];
        dp_reg_we <= 1;
        dp_reg_re <= 0;
        dp_mem_we <= 0;
        dp_mem_re <= 1;
        
        dp_reg_wd1 <= dp_mem_rd;
        
        a <= 4'b0000;
        b <= 4'b0000;
        result <= 4'b0000;
        remainder <= 4'b0000;
        
        activeState <= 14'b00000001000000;
        end
        S8: begin
        dp_reg_ra1 <= reg_out[6:4];
        dp_mem_add <= reg_out[3:0];
        dp_reg_we <= 0;
        dp_reg_re <= 1;
        dp_mem_we <= 1;
        dp_mem_re <= 0;
        
        dp_mem_wd <= dp_reg_rd1;
        
        a <= 4'b0000;
        b <= 4'b0000;
        result <= 4'b0000;
        remainder <= 4'b0000;
        activeState <= 14'b00000010000000;
        end
        S9: begin
        dp_reg_wa1 <= reg_out[8:6];
        dp_reg_ra1 <= reg_out[5:3];
        dp_reg_ra2 <= reg_out[2:0];
        dp_reg_we <= 1;
        dp_reg_re <= 1;
        dp_mem_we <= 0;
        dp_mem_re <= 0;
        dp_reg_wd1 <= dp_reg_rd1 - dp_reg_rd2;
        result <= dp_reg_wd1;
        
        a <= dp_reg_rd1;
        b <= dp_reg_rd2;
        remainder <= 4'b0000;
        activeState <= 14'b00000100000000;
        end
        S10: begin
        dp_reg_wa1 <= reg_out[8:6];
        dp_reg_ra1 <= reg_out[5:3];
        dp_reg_ra2 <= reg_out[2:0];
        dp_reg_we <= 1;
        dp_reg_re <= 1;
        dp_mem_we <= 0;
        dp_mem_re <= 0;
        
        dp_reg_wd1 <= dp_reg_rd1 + dp_reg_rd2;
        result <= dp_reg_wd1;
        
        a <= dp_reg_rd1;
        b <= dp_reg_rd2;
        remainder <= 4'b0000;
        
        activeState <= 14'b00001000000000;
        end
        S11: begin
        dp_reg_wa1 <= reg_out[8:6];
        dp_reg_wa2 <= 0;
        dp_reg_ra1 <= reg_out[5:3];
        dp_reg_ra2 <= reg_out[2:0];
        dp_reg_we <= 1;
        dp_reg_re <= 1;
        dp_mem_we <= 0;
        dp_mem_re <= 0;
        
        dp_reg_wd1 <= dp_reg_rd1 * dp_reg_rd2;
        result <= dp_reg_wd1;
        
        a <= dp_reg_rd1;
        b <= dp_reg_rd2;
        remainder <= 4'b0000;
        
        activeState <= 14'b00010000000000;
        end
        S12: begin
        dp_reg_wa1 <= reg_out[8:6];
        dp_reg_wa2 <= reg_out[8:6] + 1'b1;
        dp_reg_ra1 <= reg_out[5:3];
        dp_reg_ra2 <= reg_out[2:0];
        dp_reg_we <= 1;
        dp_reg_re <= 1;
        dp_mem_we <= 0;
        dp_mem_re <= 0;
        dp_reg_wd1 <= dp_reg_rd1 / dp_reg_rd2;
        dp_reg_wd2 <= dp_reg_rd1 % dp_reg_rd2;
        
        a <= dp_reg_rd1;
        b <= dp_reg_rd2;
        result <= dp_reg_wd1;
        remainder <= dp_reg_wd2;
        activeState <= 14'b00100000000000;
        end
        S13: begin
        dp_reg_ra1 <= reg_out[2:0];
        dp_reg_we <= 0;
        dp_reg_re <= 1;
        dp_mem_we <= 0;
        dp_mem_re <= 0;
        load <= 1;
        load_reg <= 1;
    
        a <= 4'b0000;
        b <= 4'b0000;
        result <= dp_reg_rd1;
        remainder <= 4'b0000;
        activeState <= 14'b01000000000000;
        end
        /*
        default: begin
        isexternal <= 0;
        reset <= 1;
        load <= 1;
        load_reg <= 1;
        mem_we <= 0;
        mem_re <= 0;
        dp_reg_we <= 0;
        dp_reg_re <= 0;
        dp_mem_we <= 0;
        dp_mem_re <= 0;
        dp_mem_add <= 0;
        dp_mem_wd <= 0;
        dp_reg_wd1 <= 0;
        dp_reg_wd2 <= 0;
        dp_reg_wa1 <= 0;
        dp_reg_wa2 <= 0;
        dp_reg_ra1 <= 0;
        dp_reg_ra2 <= 0;
        
        a <= 4'b0000;
        b <= 4'b0000;
        result <= 4'b0000;
        remainder <= 4'b0000;
        activeState <= 14'b00000000000000;
        end
        */
        endcase
    end
endmodule

module insturction_memory(clk, reset, load, we, re, adr , wd , rd);
    input logic clk, we, reset, re, load;
    input logic [2:0] adr;
    input logic [11:0] wd;
    output logic [11:0] rd;
    logic [2:0] queue_add;
    integer i;
    
    logic [11:0] RAM[7:0];
    
    always_ff @(posedge clk)
        if (reset) begin
            for(i = 0; i < 8; i=i+1) 
            begin
                RAM[i] <= 'b0;
            end
            
            queue_add <= 0;
        end
        else if (we) begin
            RAM[queue_add] <= wd;
            queue_add <= queue_add + 1;
        end
        
        always_comb
            if (re) begin
                rd <= RAM[adr];
            end
            
            //assign rd = RAM[adr];
endmodule

module instruction_register(clk, reset, load, d, q, isexternal, ext);
    input logic clk, reset, isexternal, load;
    input logic [11:0] d;
    input logic [11:0] ext;
    output logic [11:0] q;
    
    always_ff @(posedge clk)
        if (reset)
            q <= 0;
        else if (!load && !isexternal)
            q <= d;
        else if (isexternal)
            q <= ext;
        else
            q <= q;
endmodule

module program_counter(clk, reset, load, q, isexternal);
    input logic clk, reset, isexternal, load;
    output logic [2:0] q;
    
    always_ff @(posedge clk)
    begin
        if (reset)
            q <= 0; 
        else if (!load && !isexternal)
            q <= q + 1;
        else q <= q;
    end
endmodule