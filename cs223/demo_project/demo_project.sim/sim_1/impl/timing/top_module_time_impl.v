// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
// Date        : Wed May 11 22:43:18 2022
// Host        : DESKTOP-K1EJB1R running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/innsolit/demo_project/demo_project.sim/sim_1/impl/timing/top_module_time_impl.v
// Design      : top_module
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module FlipFlop
   (q_reg_0,
    \state_reg[1] ,
    btn_u_IBUF,
    CLK,
    q2);
  output q_reg_0;
  output \state_reg[1] ;
  input btn_u_IBUF;
  input CLK;
  input q2;

  wire CLK;
  wire btn_u_IBUF;
  wire q2;
  wire q_reg_0;
  wire \state_reg[1] ;

  LUT2 #(
    .INIT(4'h2)) 
    \nextstate_reg[1]_i_4 
       (.I0(q_reg_0),
        .I1(q2),
        .O(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    q_reg
       (.C(CLK),
        .CE(1'b1),
        .D(btn_u_IBUF),
        .Q(q_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FlipFlop" *) 
module FlipFlop_10
   (q2,
    q1,
    CLK);
  output q2;
  input q1;
  input CLK;

  wire CLK;
  wire q1;
  wire q2;

  FDRE #(
    .INIT(1'b0)) 
    q_reg
       (.C(CLK),
        .CE(1'b1),
        .D(q1),
        .Q(q2),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FlipFlop" *) 
module FlipFlop_11
   (q1,
    \state_reg[0] ,
    btn_d_IBUF,
    CLK,
    q2,
    q1_0,
    q2_1,
    q_reg_0);
  output q1;
  output \state_reg[0] ;
  input btn_d_IBUF;
  input CLK;
  input q2;
  input q1_0;
  input q2_1;
  input q_reg_0;

  wire CLK;
  wire btn_d_IBUF;
  wire q1;
  wire q1_0;
  wire q2;
  wire q2_1;
  wire q_reg_0;
  wire \state_reg[0] ;

  LUT5 #(
    .INIT(32'h22F2FFFF)) 
    \nextstate_reg[0]_i_2 
       (.I0(q1),
        .I1(q2),
        .I2(q1_0),
        .I3(q2_1),
        .I4(q_reg_0),
        .O(\state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    q_reg
       (.C(CLK),
        .CE(1'b1),
        .D(btn_d_IBUF),
        .Q(q1),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FlipFlop" *) 
module FlipFlop_12
   (q2,
    q1,
    CLK);
  output q2;
  input q1;
  input CLK;

  wire CLK;
  wire q1;
  wire q2;

  FDRE #(
    .INIT(1'b0)) 
    q_reg
       (.C(CLK),
        .CE(1'b1),
        .D(q1),
        .Q(q2),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FlipFlop" *) 
module FlipFlop_4
   (q2,
    \state_reg[0] ,
    q1,
    CLK,
    q1_0,
    q2_1);
  output q2;
  output \state_reg[0] ;
  input q1;
  input CLK;
  input q1_0;
  input q2_1;

  wire CLK;
  wire q1;
  wire q1_0;
  wire q2;
  wire q2_1;
  wire \state_reg[0] ;

  LUT4 #(
    .INIT(16'hFF4F)) 
    \nextstate_reg[0]_i_3 
       (.I0(q2),
        .I1(q1),
        .I2(q1_0),
        .I3(q2_1),
        .O(\state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    q_reg
       (.C(CLK),
        .CE(1'b1),
        .D(q1),
        .Q(q2),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FlipFlop" *) 
module FlipFlop_5
   (q1,
    btn_r_IBUF,
    CLK);
  output q1;
  input btn_r_IBUF;
  input CLK;

  wire CLK;
  wire btn_r_IBUF;
  wire q1;

  FDRE #(
    .INIT(1'b0)) 
    q_reg
       (.C(CLK),
        .CE(1'b1),
        .D(btn_r_IBUF),
        .Q(q1),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FlipFlop" *) 
module FlipFlop_6
   (q2,
    \state_reg[2] ,
    q1,
    CLK,
    q1_0,
    q2_1,
    q1_2,
    q2_3);
  output q2;
  output \state_reg[2] ;
  input q1;
  input CLK;
  input q1_0;
  input q2_1;
  input q1_2;
  input q2_3;

  wire CLK;
  wire q1;
  wire q1_0;
  wire q1_2;
  wire q2;
  wire q2_1;
  wire q2_3;
  wire \state_reg[2] ;

  LUT6 #(
    .INIT(64'h44F444F4000044F4)) 
    \nextstate_reg[2]_i_4 
       (.I0(q2),
        .I1(q1),
        .I2(q1_0),
        .I3(q2_1),
        .I4(q1_2),
        .I5(q2_3),
        .O(\state_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    q_reg
       (.C(CLK),
        .CE(1'b1),
        .D(q1),
        .Q(q2),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FlipFlop" *) 
module FlipFlop_7
   (q_reg_0,
    \state_reg[1] ,
    btn_m_IBUF,
    CLK,
    \state_reg[1]_0 ,
    q2,
    q2_0,
    q1_1,
    q_reg_1);
  output q_reg_0;
  output \state_reg[1] ;
  input btn_m_IBUF;
  input CLK;
  input \state_reg[1]_0 ;
  input q2;
  input q2_0;
  input q1_1;
  input q_reg_1;

  wire CLK;
  wire btn_m_IBUF;
  wire q1_1;
  wire q2;
  wire q2_0;
  wire q_reg_0;
  wire q_reg_1;
  wire \state_reg[1] ;
  wire \state_reg[1]_0 ;

  LUT6 #(
    .INIT(64'hAA08AAAA08080808)) 
    \nextstate_reg[1]_i_2 
       (.I0(\state_reg[1]_0 ),
        .I1(q_reg_0),
        .I2(q2),
        .I3(q2_0),
        .I4(q1_1),
        .I5(q_reg_1),
        .O(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    q_reg
       (.C(CLK),
        .CE(1'b1),
        .D(btn_m_IBUF),
        .Q(q_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FlipFlop" *) 
module FlipFlop_8
   (q2,
    \state_reg[2] ,
    q1,
    CLK,
    q2_0,
    q1_1);
  output q2;
  output \state_reg[2] ;
  input q1;
  input CLK;
  input q2_0;
  input q1_1;

  wire CLK;
  wire q1;
  wire q1_1;
  wire q2;
  wire q2_0;
  wire \state_reg[2] ;

  LUT4 #(
    .INIT(16'h4F44)) 
    \nextstate_reg[2]_i_3 
       (.I0(q2),
        .I1(q1),
        .I2(q2_0),
        .I3(q1_1),
        .O(\state_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    q_reg
       (.C(CLK),
        .CE(1'b1),
        .D(q1),
        .Q(q2),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FlipFlop" *) 
module FlipFlop_9
   (q1,
    btn_l_IBUF,
    CLK);
  output q1;
  input btn_l_IBUF;
  input CLK;

  wire CLK;
  wire btn_l_IBUF;
  wire q1;

  FDRE #(
    .INIT(1'b0)) 
    q_reg
       (.C(CLK),
        .CE(1'b1),
        .D(btn_l_IBUF),
        .Q(q1),
        .R(1'b0));
endmodule

module control_unit
   (SR,
    O,
    Q,
    \RAM_reg[6][0] ,
    \RAM_reg[6][3] ,
    \state_reg[1] ,
    seg_OBUF,
    \RAM_reg[6][1] ,
    \RAM_reg[6][2] ,
    \activeState[12] ,
    E,
    \RAM_reg[6][0]_0 ,
    \RAM_reg[5][0] ,
    \RAM_reg[4][0] ,
    \RAM_reg[3][0] ,
    \RAM_reg[2][0] ,
    \RAM_reg[1][0] ,
    \RAM_reg[0][0] ,
    \RAM_reg[2][3] ,
    \RAM_reg[0][3] ,
    \RAM_reg[1][3] ,
    \RAM_reg[3][3] ,
    \RAM_reg[4][3] ,
    \RAM_reg[7][3] ,
    \RAM_reg[5][3] ,
    \RAM_reg[6][3]_0 ,
    DI,
    S,
    \RAM_reg[3][1] ,
    \RAM_reg[3][0]_0 ,
    \state_reg[1]_0 ,
    sw_IBUF,
    \state_reg[1]_1 ,
    \RAM_reg[3][3]_0 ,
    \RAM_reg[3][3]_1 ,
    \RAM_reg[3][2] ,
    \RAM_reg[3][0]_1 ,
    dp_reg_rd2,
    \RAM_reg[3][1]_0 ,
    \RAM_reg[3][0]_2 ,
    \RAM_reg[3][1]_1 ,
    q_reg,
    q_reg_0,
    q_reg_1,
    q_reg_2,
    \RAM_reg[7][2] ,
    \RAM_reg[3][1]_2 ,
    \RAM_reg[7][2]_0 ,
    dp_reg_rd1,
    \select_reg[0] ,
    \select_reg[1] ,
    D,
    \RAM_reg[3][2]_0 ,
    CLK);
  output [0:0]SR;
  output [1:0]O;
  output [0:0]Q;
  output \RAM_reg[6][0] ;
  output \RAM_reg[6][3] ;
  output \state_reg[1] ;
  output [6:0]seg_OBUF;
  output [2:0]\RAM_reg[6][1] ;
  output [2:0]\RAM_reg[6][2] ;
  output [12:0]\activeState[12] ;
  output [0:0]E;
  output [0:0]\RAM_reg[6][0]_0 ;
  output [0:0]\RAM_reg[5][0] ;
  output [0:0]\RAM_reg[4][0] ;
  output [0:0]\RAM_reg[3][0] ;
  output [0:0]\RAM_reg[2][0] ;
  output [0:0]\RAM_reg[1][0] ;
  output [0:0]\RAM_reg[0][0] ;
  output [3:0]\RAM_reg[2][3] ;
  output [3:0]\RAM_reg[0][3] ;
  output [3:0]\RAM_reg[1][3] ;
  output [3:0]\RAM_reg[3][3] ;
  output [3:0]\RAM_reg[4][3] ;
  output [3:0]\RAM_reg[7][3] ;
  output [3:0]\RAM_reg[5][3] ;
  output [3:0]\RAM_reg[6][3]_0 ;
  input [1:0]DI;
  input [3:0]S;
  input \RAM_reg[3][1] ;
  input \RAM_reg[3][0]_0 ;
  input \state_reg[1]_0 ;
  input [15:0]sw_IBUF;
  input \state_reg[1]_1 ;
  input \RAM_reg[3][3]_0 ;
  input \RAM_reg[3][3]_1 ;
  input \RAM_reg[3][2] ;
  input \RAM_reg[3][0]_1 ;
  input [3:0]dp_reg_rd2;
  input \RAM_reg[3][1]_0 ;
  input \RAM_reg[3][0]_2 ;
  input \RAM_reg[3][1]_1 ;
  input q_reg;
  input q_reg_0;
  input q_reg_1;
  input q_reg_2;
  input \RAM_reg[7][2] ;
  input \RAM_reg[3][1]_2 ;
  input \RAM_reg[7][2]_0 ;
  input [3:0]dp_reg_rd1;
  input \select_reg[0] ;
  input \select_reg[1] ;
  input [3:0]D;
  input [3:0]\RAM_reg[3][2]_0 ;
  input CLK;

  wire CLK;
  wire [3:0]D;
  wire [1:0]DI;
  wire [0:0]E;
  wire [1:0]O;
  wire [0:0]Q;
  wire [0:0]\RAM_reg[0][0] ;
  wire [3:0]\RAM_reg[0][3] ;
  wire [0:0]\RAM_reg[1][0] ;
  wire [3:0]\RAM_reg[1][3] ;
  wire [0:0]\RAM_reg[2][0] ;
  wire [3:0]\RAM_reg[2][3] ;
  wire [0:0]\RAM_reg[3][0] ;
  wire \RAM_reg[3][0]_0 ;
  wire \RAM_reg[3][0]_1 ;
  wire \RAM_reg[3][0]_2 ;
  wire \RAM_reg[3][1] ;
  wire \RAM_reg[3][1]_0 ;
  wire \RAM_reg[3][1]_1 ;
  wire \RAM_reg[3][1]_2 ;
  wire \RAM_reg[3][2] ;
  wire [3:0]\RAM_reg[3][2]_0 ;
  wire [3:0]\RAM_reg[3][3] ;
  wire \RAM_reg[3][3]_0 ;
  wire \RAM_reg[3][3]_1 ;
  wire [0:0]\RAM_reg[4][0] ;
  wire [3:0]\RAM_reg[4][3] ;
  wire [0:0]\RAM_reg[5][0] ;
  wire [3:0]\RAM_reg[5][3] ;
  wire \RAM_reg[6][0] ;
  wire [0:0]\RAM_reg[6][0]_0 ;
  wire [2:0]\RAM_reg[6][1] ;
  wire [2:0]\RAM_reg[6][2] ;
  wire \RAM_reg[6][3] ;
  wire [3:0]\RAM_reg[6][3]_0 ;
  wire \RAM_reg[7][2] ;
  wire \RAM_reg[7][2]_0 ;
  wire [3:0]\RAM_reg[7][3] ;
  wire [3:0]S;
  wire [0:0]SR;
  wire [12:0]\activeState[12] ;
  wire [2:0]data0;
  wire [3:0]dp_reg_rd1;
  wire [3:0]dp_reg_rd2;
  wire fsm_n_13;
  wire fsm_n_6;
  wire ins_mem_n_0;
  wire ins_mem_n_1;
  wire ins_mem_n_10;
  wire ins_mem_n_11;
  wire ins_mem_n_12;
  wire ins_mem_n_13;
  wire ins_mem_n_14;
  wire ins_mem_n_15;
  wire ins_mem_n_16;
  wire ins_mem_n_17;
  wire ins_mem_n_18;
  wire ins_mem_n_19;
  wire ins_mem_n_2;
  wire ins_mem_n_20;
  wire ins_mem_n_21;
  wire ins_mem_n_22;
  wire ins_mem_n_23;
  wire ins_mem_n_3;
  wire ins_mem_n_4;
  wire ins_mem_n_5;
  wire ins_mem_n_6;
  wire ins_mem_n_7;
  wire ins_mem_n_8;
  wire ins_mem_n_9;
  wire ins_reg_n_11;
  wire ins_reg_n_12;
  wire ins_reg_n_13;
  wire ins_reg_n_14;
  wire ins_reg_n_15;
  wire ins_reg_n_16;
  wire ins_reg_n_3;
  wire ins_reg_n_4;
  wire isexternal;
  wire load;
  wire [1:0]mem_add;
  wire [11:0]mem_wd;
  wire mem_we;
  wire [11:0]p_1_in;
  wire [2:0]pc_add;
  wire q_reg;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire [2:0]reg_out;
  wire [6:0]seg_OBUF;
  wire [2:0]sel0;
  wire \select_reg[0] ;
  wire \select_reg[1] ;
  wire [2:0]state;
  wire \state_reg[1] ;
  wire \state_reg[1]_0 ;
  wire \state_reg[1]_1 ;
  wire [15:0]sw_IBUF;

  controlfsm fsm
       (.CLK(CLK),
        .D(p_1_in),
        .DI(DI),
        .E(fsm_n_6),
        .O(O),
        .Q({Q,state}),
        .\RAM_reg[0][0] (\RAM_reg[0][0] ),
        .\RAM_reg[0][3] (\RAM_reg[0][3] ),
        .\RAM_reg[1][0] (\RAM_reg[1][0] ),
        .\RAM_reg[1][3] (\RAM_reg[1][3] ),
        .\RAM_reg[2][0] (\RAM_reg[2][0] ),
        .\RAM_reg[2][3] (\RAM_reg[2][3] ),
        .\RAM_reg[3][0] (\RAM_reg[3][0] ),
        .\RAM_reg[3][0]_0 (\RAM_reg[3][0]_0 ),
        .\RAM_reg[3][0]_1 (\RAM_reg[3][0]_1 ),
        .\RAM_reg[3][0]_2 (\RAM_reg[3][0]_2 ),
        .\RAM_reg[3][0]_3 (ins_mem_n_22),
        .\RAM_reg[3][10] (ins_mem_n_2),
        .\RAM_reg[3][11] (ins_mem_n_0),
        .\RAM_reg[3][1] (\RAM_reg[3][1] ),
        .\RAM_reg[3][1]_0 (\RAM_reg[3][1]_0 ),
        .\RAM_reg[3][1]_1 (\RAM_reg[3][1]_1 ),
        .\RAM_reg[3][1]_2 (ins_mem_n_20),
        .\RAM_reg[3][1]_3 (\RAM_reg[3][1]_2 ),
        .\RAM_reg[3][2] (\RAM_reg[3][2] ),
        .\RAM_reg[3][2]_0 (ins_mem_n_18),
        .\RAM_reg[3][2]_1 (\RAM_reg[3][2]_0 ),
        .\RAM_reg[3][3] (\RAM_reg[3][3] ),
        .\RAM_reg[3][3]_0 (\RAM_reg[3][3]_0 ),
        .\RAM_reg[3][3]_1 (\RAM_reg[3][3]_1 ),
        .\RAM_reg[3][3]_2 (ins_mem_n_16),
        .\RAM_reg[3][4] (ins_mem_n_14),
        .\RAM_reg[3][5] (ins_mem_n_12),
        .\RAM_reg[3][6] (ins_mem_n_10),
        .\RAM_reg[3][7] (ins_mem_n_8),
        .\RAM_reg[3][8] (ins_mem_n_7),
        .\RAM_reg[3][9] (ins_mem_n_5),
        .\RAM_reg[4][0] (\RAM_reg[4][0] ),
        .\RAM_reg[4][3] (\RAM_reg[4][3] ),
        .\RAM_reg[5][0] (\RAM_reg[5][0] ),
        .\RAM_reg[5][3] (\RAM_reg[5][3] ),
        .\RAM_reg[6][0] (\RAM_reg[6][0] ),
        .\RAM_reg[6][0]_0 (\RAM_reg[6][0]_0 ),
        .\RAM_reg[6][1] (\RAM_reg[6][1] ),
        .\RAM_reg[6][2] (\RAM_reg[6][2] ),
        .\RAM_reg[6][3] (\RAM_reg[6][3] ),
        .\RAM_reg[6][3]_0 (\RAM_reg[6][3]_0 ),
        .\RAM_reg[7][0] (E),
        .\RAM_reg[7][0]_0 (ins_mem_n_23),
        .\RAM_reg[7][10] (ins_mem_n_3),
        .\RAM_reg[7][11] (mem_wd),
        .\RAM_reg[7][11]_0 (ins_mem_n_1),
        .\RAM_reg[7][1] (ins_mem_n_21),
        .\RAM_reg[7][2] (ins_mem_n_19),
        .\RAM_reg[7][2]_0 (\RAM_reg[7][2] ),
        .\RAM_reg[7][2]_1 (\RAM_reg[7][2]_0 ),
        .\RAM_reg[7][3] (\RAM_reg[7][3] ),
        .\RAM_reg[7][3]_0 (ins_mem_n_17),
        .\RAM_reg[7][4] (ins_mem_n_15),
        .\RAM_reg[7][5] (ins_mem_n_13),
        .\RAM_reg[7][6] (ins_mem_n_11),
        .\RAM_reg[7][7] (ins_mem_n_9),
        .\RAM_reg[7][8] (ins_mem_n_6),
        .\RAM_reg[7][9] (ins_mem_n_4),
        .S(S),
        .\activeState[12] (\activeState[12] ),
        .dp_reg_rd1(dp_reg_rd1),
        .dp_reg_rd2(dp_reg_rd2),
        .isexternal(isexternal),
        .load(load),
        .mem_we(mem_we),
        .q_reg(q_reg),
        .\q_reg[0] (SR),
        .\q_reg[11] (mem_add),
        .\q_reg[11]_0 ({sel0,ins_reg_n_3,ins_reg_n_4,data0,reg_out}),
        .\q_reg[2] (pc_add),
        .\q_reg[9] (ins_reg_n_11),
        .q_reg_0(q_reg_0),
        .q_reg_1(q_reg_1),
        .q_reg_2(q_reg_2),
        .seg_OBUF(seg_OBUF),
        .\select_reg[0] (\select_reg[0] ),
        .\select_reg[1] (\select_reg[1] ),
        .\state_reg[1]_0 (fsm_n_13),
        .\state_reg[1]_1 (\state_reg[1] ),
        .\state_reg[1]_2 (\state_reg[1]_0 ),
        .\state_reg[1]_3 (\state_reg[1]_1 ),
        .\state_reg[2]_0 ({ins_reg_n_12,ins_reg_n_13}),
        .\state_reg[3]_0 (D),
        .\state_reg[3]_1 ({ins_reg_n_14,ins_reg_n_15,ins_reg_n_16}),
        .sw_IBUF(sw_IBUF));
  insturction_memory ins_mem
       (.CLK(CLK),
        .D(mem_wd),
        .mem_we(mem_we),
        .\q_reg[0] (ins_mem_n_22),
        .\q_reg[0]_0 (ins_mem_n_23),
        .\q_reg[10] (ins_mem_n_2),
        .\q_reg[10]_0 (ins_mem_n_3),
        .\q_reg[11] (ins_mem_n_0),
        .\q_reg[11]_0 (ins_mem_n_1),
        .\q_reg[1] (ins_mem_n_20),
        .\q_reg[1]_0 (ins_mem_n_21),
        .\q_reg[1]_1 (mem_add),
        .\q_reg[2] (ins_mem_n_18),
        .\q_reg[2]_0 (ins_mem_n_19),
        .\q_reg[3] (ins_mem_n_16),
        .\q_reg[3]_0 (ins_mem_n_17),
        .\q_reg[4] (ins_mem_n_14),
        .\q_reg[4]_0 (ins_mem_n_15),
        .\q_reg[5] (ins_mem_n_12),
        .\q_reg[5]_0 (ins_mem_n_13),
        .\q_reg[6] (ins_mem_n_10),
        .\q_reg[6]_0 (ins_mem_n_11),
        .\q_reg[7] (ins_mem_n_8),
        .\q_reg[7]_0 (ins_mem_n_9),
        .\q_reg[8] (ins_mem_n_6),
        .\q_reg[8]_0 (ins_mem_n_7),
        .\q_reg[9] (ins_mem_n_4),
        .\q_reg[9]_0 (ins_mem_n_5),
        .\state_reg[1] (SR));
  instruction_register ins_reg
       (.CLK(CLK),
        .D(p_1_in),
        .E(fsm_n_6),
        .Q({sel0,ins_reg_n_3,ins_reg_n_4,data0,reg_out}),
        .\RAM_reg[6][1] ({ins_reg_n_14,ins_reg_n_15,ins_reg_n_16}),
        .\RAM_reg[6][3] ({ins_reg_n_12,ins_reg_n_13}),
        .SR(SR),
        .\state_reg[2] (fsm_n_13),
        .\state_reg[3] (ins_reg_n_11),
        .\state_reg[3]_0 ({Q,state}));
  program_counter pc
       (.CLK(CLK),
        .isexternal(isexternal),
        .load(load),
        .\q_reg[2]_0 (pc_add),
        .\state_reg[1] (SR));
endmodule

module controlfsm
   (\q_reg[0] ,
    mem_we,
    isexternal,
    load,
    O,
    E,
    Q,
    \RAM_reg[6][0] ,
    \RAM_reg[6][3] ,
    \state_reg[1]_0 ,
    \state_reg[1]_1 ,
    D,
    \q_reg[11] ,
    seg_OBUF,
    \RAM_reg[6][1] ,
    \RAM_reg[6][2] ,
    \RAM_reg[7][11] ,
    \activeState[12] ,
    \RAM_reg[7][0] ,
    \RAM_reg[6][0]_0 ,
    \RAM_reg[5][0] ,
    \RAM_reg[4][0] ,
    \RAM_reg[3][0] ,
    \RAM_reg[2][0] ,
    \RAM_reg[1][0] ,
    \RAM_reg[0][0] ,
    \RAM_reg[2][3] ,
    \RAM_reg[0][3] ,
    \RAM_reg[1][3] ,
    \RAM_reg[3][3] ,
    \RAM_reg[4][3] ,
    \RAM_reg[7][3] ,
    \RAM_reg[5][3] ,
    \RAM_reg[6][3]_0 ,
    DI,
    S,
    \RAM_reg[3][1] ,
    \RAM_reg[3][0]_0 ,
    \state_reg[1]_2 ,
    sw_IBUF,
    \state_reg[1]_3 ,
    \RAM_reg[3][3]_0 ,
    \RAM_reg[3][3]_1 ,
    \RAM_reg[3][2] ,
    \RAM_reg[3][0]_1 ,
    dp_reg_rd2,
    \RAM_reg[3][1]_0 ,
    \RAM_reg[3][0]_2 ,
    \RAM_reg[3][1]_1 ,
    q_reg,
    \q_reg[11]_0 ,
    q_reg_0,
    q_reg_1,
    q_reg_2,
    \RAM_reg[7][0]_0 ,
    \RAM_reg[3][0]_3 ,
    \RAM_reg[7][1] ,
    \RAM_reg[3][1]_2 ,
    \RAM_reg[7][2] ,
    \RAM_reg[3][2]_0 ,
    \RAM_reg[7][3]_0 ,
    \RAM_reg[3][3]_2 ,
    \RAM_reg[7][4] ,
    \RAM_reg[3][4] ,
    \RAM_reg[7][5] ,
    \RAM_reg[3][5] ,
    \RAM_reg[7][6] ,
    \RAM_reg[3][6] ,
    \RAM_reg[7][7] ,
    \RAM_reg[3][7] ,
    \RAM_reg[7][8] ,
    \RAM_reg[3][8] ,
    \RAM_reg[7][9] ,
    \RAM_reg[3][9] ,
    \RAM_reg[7][10] ,
    \RAM_reg[3][10] ,
    \RAM_reg[7][11]_0 ,
    \RAM_reg[3][11] ,
    \RAM_reg[7][2]_0 ,
    \RAM_reg[3][1]_3 ,
    \RAM_reg[7][2]_1 ,
    dp_reg_rd1,
    \select_reg[0] ,
    \select_reg[1] ,
    \state_reg[3]_0 ,
    \state_reg[2]_0 ,
    \state_reg[3]_1 ,
    \q_reg[2] ,
    \RAM_reg[3][2]_1 ,
    \q_reg[9] ,
    CLK);
  output \q_reg[0] ;
  output mem_we;
  output isexternal;
  output load;
  output [1:0]O;
  output [0:0]E;
  output [3:0]Q;
  output \RAM_reg[6][0] ;
  output \RAM_reg[6][3] ;
  output \state_reg[1]_0 ;
  output \state_reg[1]_1 ;
  output [11:0]D;
  output [1:0]\q_reg[11] ;
  output [6:0]seg_OBUF;
  output [2:0]\RAM_reg[6][1] ;
  output [2:0]\RAM_reg[6][2] ;
  output [11:0]\RAM_reg[7][11] ;
  output [12:0]\activeState[12] ;
  output [0:0]\RAM_reg[7][0] ;
  output [0:0]\RAM_reg[6][0]_0 ;
  output [0:0]\RAM_reg[5][0] ;
  output [0:0]\RAM_reg[4][0] ;
  output [0:0]\RAM_reg[3][0] ;
  output [0:0]\RAM_reg[2][0] ;
  output [0:0]\RAM_reg[1][0] ;
  output [0:0]\RAM_reg[0][0] ;
  output [3:0]\RAM_reg[2][3] ;
  output [3:0]\RAM_reg[0][3] ;
  output [3:0]\RAM_reg[1][3] ;
  output [3:0]\RAM_reg[3][3] ;
  output [3:0]\RAM_reg[4][3] ;
  output [3:0]\RAM_reg[7][3] ;
  output [3:0]\RAM_reg[5][3] ;
  output [3:0]\RAM_reg[6][3]_0 ;
  input [1:0]DI;
  input [3:0]S;
  input \RAM_reg[3][1] ;
  input \RAM_reg[3][0]_0 ;
  input \state_reg[1]_2 ;
  input [15:0]sw_IBUF;
  input \state_reg[1]_3 ;
  input \RAM_reg[3][3]_0 ;
  input \RAM_reg[3][3]_1 ;
  input \RAM_reg[3][2] ;
  input \RAM_reg[3][0]_1 ;
  input [3:0]dp_reg_rd2;
  input \RAM_reg[3][1]_0 ;
  input \RAM_reg[3][0]_2 ;
  input \RAM_reg[3][1]_1 ;
  input q_reg;
  input [10:0]\q_reg[11]_0 ;
  input q_reg_0;
  input q_reg_1;
  input q_reg_2;
  input \RAM_reg[7][0]_0 ;
  input \RAM_reg[3][0]_3 ;
  input \RAM_reg[7][1] ;
  input \RAM_reg[3][1]_2 ;
  input \RAM_reg[7][2] ;
  input \RAM_reg[3][2]_0 ;
  input \RAM_reg[7][3]_0 ;
  input \RAM_reg[3][3]_2 ;
  input \RAM_reg[7][4] ;
  input \RAM_reg[3][4] ;
  input \RAM_reg[7][5] ;
  input \RAM_reg[3][5] ;
  input \RAM_reg[7][6] ;
  input \RAM_reg[3][6] ;
  input \RAM_reg[7][7] ;
  input \RAM_reg[3][7] ;
  input \RAM_reg[7][8] ;
  input \RAM_reg[3][8] ;
  input \RAM_reg[7][9] ;
  input \RAM_reg[3][9] ;
  input \RAM_reg[7][10] ;
  input \RAM_reg[3][10] ;
  input \RAM_reg[7][11]_0 ;
  input \RAM_reg[3][11] ;
  input \RAM_reg[7][2]_0 ;
  input \RAM_reg[3][1]_3 ;
  input \RAM_reg[7][2]_1 ;
  input [3:0]dp_reg_rd1;
  input \select_reg[0] ;
  input \select_reg[1] ;
  input [3:0]\state_reg[3]_0 ;
  input [1:0]\state_reg[2]_0 ;
  input [2:0]\state_reg[3]_1 ;
  input [2:0]\q_reg[2] ;
  input [3:0]\RAM_reg[3][2]_1 ;
  input [0:0]\q_reg[9] ;
  input CLK;

  wire CLK;
  wire [11:0]D;
  wire [1:0]DI;
  wire [0:0]E;
  wire [1:0]O;
  wire [3:0]Q;
  wire \RAM[0][3]_i_3_n_0 ;
  wire \RAM[1][3]_i_3_n_0 ;
  wire \RAM[2][3]_i_3_n_0 ;
  wire \RAM[3][3]_i_3_n_0 ;
  wire \RAM[4][3]_i_3_n_0 ;
  wire \RAM[5][3]_i_3_n_0 ;
  wire \RAM[6][3]_i_3_n_0 ;
  wire \RAM[7][3]_i_3_n_0 ;
  wire [0:0]\RAM_reg[0][0] ;
  wire [3:0]\RAM_reg[0][3] ;
  wire [0:0]\RAM_reg[1][0] ;
  wire [3:0]\RAM_reg[1][3] ;
  wire [0:0]\RAM_reg[2][0] ;
  wire [3:0]\RAM_reg[2][3] ;
  wire [0:0]\RAM_reg[3][0] ;
  wire \RAM_reg[3][0]_0 ;
  wire \RAM_reg[3][0]_1 ;
  wire \RAM_reg[3][0]_2 ;
  wire \RAM_reg[3][0]_3 ;
  wire \RAM_reg[3][10] ;
  wire \RAM_reg[3][11] ;
  wire \RAM_reg[3][1] ;
  wire \RAM_reg[3][1]_0 ;
  wire \RAM_reg[3][1]_1 ;
  wire \RAM_reg[3][1]_2 ;
  wire \RAM_reg[3][1]_3 ;
  wire \RAM_reg[3][2] ;
  wire \RAM_reg[3][2]_0 ;
  wire [3:0]\RAM_reg[3][2]_1 ;
  wire [3:0]\RAM_reg[3][3] ;
  wire \RAM_reg[3][3]_0 ;
  wire \RAM_reg[3][3]_1 ;
  wire \RAM_reg[3][3]_2 ;
  wire \RAM_reg[3][4] ;
  wire \RAM_reg[3][5] ;
  wire \RAM_reg[3][6] ;
  wire \RAM_reg[3][7] ;
  wire \RAM_reg[3][8] ;
  wire \RAM_reg[3][9] ;
  wire [0:0]\RAM_reg[4][0] ;
  wire [3:0]\RAM_reg[4][3] ;
  wire [0:0]\RAM_reg[5][0] ;
  wire [3:0]\RAM_reg[5][3] ;
  wire \RAM_reg[6][0] ;
  wire [0:0]\RAM_reg[6][0]_0 ;
  wire [2:0]\RAM_reg[6][1] ;
  wire [2:0]\RAM_reg[6][2] ;
  wire \RAM_reg[6][3] ;
  wire [3:0]\RAM_reg[6][3]_0 ;
  wire [0:0]\RAM_reg[7][0] ;
  wire \RAM_reg[7][0]_0 ;
  wire \RAM_reg[7][10] ;
  wire [11:0]\RAM_reg[7][11] ;
  wire \RAM_reg[7][11]_0 ;
  wire \RAM_reg[7][1] ;
  wire \RAM_reg[7][2] ;
  wire \RAM_reg[7][2]_0 ;
  wire \RAM_reg[7][2]_1 ;
  wire [3:0]\RAM_reg[7][3] ;
  wire \RAM_reg[7][3]_0 ;
  wire \RAM_reg[7][4] ;
  wire \RAM_reg[7][5] ;
  wire \RAM_reg[7][6] ;
  wire \RAM_reg[7][7] ;
  wire \RAM_reg[7][8] ;
  wire \RAM_reg[7][9] ;
  wire [3:0]S;
  wire [3:0]a;
  wire \a_reg[3]_i_2_n_0 ;
  wire [12:0]\activeState[12] ;
  wire \activeState_reg[0]_i_1_n_0 ;
  wire \activeState_reg[10]_i_1_n_0 ;
  wire \activeState_reg[11]_i_1_n_0 ;
  wire \activeState_reg[12]_i_1_n_0 ;
  wire \activeState_reg[12]_i_2_n_0 ;
  wire \activeState_reg[2]_i_1_n_0 ;
  wire \activeState_reg[3]_i_1_n_0 ;
  wire \activeState_reg[5]_i_1_n_0 ;
  wire \activeState_reg[6]_i_1_n_0 ;
  wire \activeState_reg[7]_i_1_n_0 ;
  wire \activeState_reg[8]_i_1_n_0 ;
  wire \activeState_reg[9]_i_1_n_0 ;
  wire [3:0]b;
  wire \dp_reg_ra1_reg[2]_i_2_n_0 ;
  wire \dp_reg_ra2_reg[0]_i_1_n_0 ;
  wire \dp_reg_ra2_reg[1]_i_1_n_0 ;
  wire \dp_reg_ra2_reg[2]_i_1_n_0 ;
  wire \dp_reg_ra2_reg[2]_i_2_n_0 ;
  wire [3:0]dp_reg_rd1;
  wire [3:0]dp_reg_rd2;
  wire [2:0]dp_reg_wa1;
  wire \dp_reg_wa1_reg[0]_i_1_n_0 ;
  wire \dp_reg_wa1_reg[1]_i_1_n_0 ;
  wire \dp_reg_wa1_reg[2]_i_1_n_0 ;
  wire \dp_reg_wa1_reg[2]_i_2_n_0 ;
  wire [2:0]dp_reg_wa2;
  wire \dp_reg_wa2_reg[0]_i_1_n_0 ;
  wire \dp_reg_wa2_reg[2]_i_2_n_0 ;
  wire [3:0]dp_reg_wd1;
  wire dp_reg_wd10_inferred__1__0_carry_n_4;
  wire dp_reg_wd10_inferred__1__0_carry_n_7;
  wire \dp_reg_wd1_reg[0]_i_1_n_0 ;
  wire \dp_reg_wd1_reg[0]_i_3_n_0 ;
  wire \dp_reg_wd1_reg[1]_i_1_n_0 ;
  wire \dp_reg_wd1_reg[2]_i_1_n_0 ;
  wire \dp_reg_wd1_reg[3]_i_1_n_0 ;
  wire \dp_reg_wd1_reg[3]_i_2_n_0 ;
  wire \dp_reg_wd1_reg[3]_i_3_n_0 ;
  wire [3:0]dp_reg_wd2;
  wire \dp_reg_wd2_reg[3]_i_2_n_0 ;
  wire dp_reg_we;
  wire dp_reg_we_reg_i_1_n_0;
  wire dp_reg_we_reg_i_2_n_0;
  wire isexternal;
  wire isexternal_reg_i_1_n_0;
  wire isexternal_reg_i_2_n_0;
  wire load;
  wire load_reg;
  wire load_reg__0_i_1_n_0;
  wire load_reg__0_i_2_n_0;
  wire load_reg_reg_i_1_n_0;
  wire [2:2]mem_add;
  wire \mem_add_reg[2]_i_1_n_0 ;
  wire \mem_wd_reg[11]_i_1_n_0 ;
  wire mem_we;
  wire mem_we_reg_i_1_n_0;
  wire mem_we_reg_i_2_n_0;
  wire [3:0]nextstate;
  wire \nextstate_reg[0]_i_1_n_0 ;
  wire \nextstate_reg[1]_i_1_n_0 ;
  wire \nextstate_reg[2]_i_1_n_0 ;
  wire \nextstate_reg[2]_i_2_n_0 ;
  wire \nextstate_reg[3]_i_2_n_0 ;
  wire q_reg;
  wire \q_reg[0] ;
  wire [1:0]\q_reg[11] ;
  wire [10:0]\q_reg[11]_0 ;
  wire [2:0]\q_reg[2] ;
  wire [0:0]\q_reg[9] ;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire [3:0]remainder;
  wire \remainder_reg[3]_i_2_n_0 ;
  wire reset_reg_i_1_n_0;
  wire reset_reg_i_2_n_0;
  wire [3:0]result;
  wire \result_reg[0]_i_1_n_0 ;
  wire \result_reg[0]_i_2_n_0 ;
  wire \result_reg[1]_i_10_n_0 ;
  wire \result_reg[1]_i_1_n_0 ;
  wire \result_reg[1]_i_3_n_0 ;
  wire \result_reg[2]_i_1_n_0 ;
  wire \result_reg[2]_i_3_n_0 ;
  wire \result_reg[3]_i_1_n_0 ;
  wire \result_reg[3]_i_2_n_0 ;
  wire \result_reg[3]_i_4_n_0 ;
  wire [6:0]seg_OBUF;
  wire \seg_OBUF[0]_inst_i_2_n_0 ;
  wire \seg_OBUF[0]_inst_i_3_n_0 ;
  wire \seg_OBUF[0]_inst_i_4_n_0 ;
  wire \seg_OBUF[0]_inst_i_5_n_0 ;
  wire \seg_OBUF[0]_inst_i_6_n_0 ;
  wire \seg_OBUF[0]_inst_i_7_n_0 ;
  wire \seg_OBUF[1]_inst_i_2_n_0 ;
  wire \seg_OBUF[1]_inst_i_3_n_0 ;
  wire \seg_OBUF[1]_inst_i_4_n_0 ;
  wire \seg_OBUF[1]_inst_i_5_n_0 ;
  wire \seg_OBUF[2]_inst_i_2_n_0 ;
  wire \seg_OBUF[2]_inst_i_3_n_0 ;
  wire \seg_OBUF[2]_inst_i_4_n_0 ;
  wire \seg_OBUF[2]_inst_i_5_n_0 ;
  wire \seg_OBUF[3]_inst_i_2_n_0 ;
  wire \seg_OBUF[3]_inst_i_3_n_0 ;
  wire \seg_OBUF[3]_inst_i_4_n_0 ;
  wire \seg_OBUF[3]_inst_i_5_n_0 ;
  wire \seg_OBUF[4]_inst_i_2_n_0 ;
  wire \seg_OBUF[4]_inst_i_3_n_0 ;
  wire \seg_OBUF[4]_inst_i_4_n_0 ;
  wire \seg_OBUF[4]_inst_i_5_n_0 ;
  wire \seg_OBUF[5]_inst_i_2_n_0 ;
  wire \seg_OBUF[5]_inst_i_3_n_0 ;
  wire \seg_OBUF[5]_inst_i_4_n_0 ;
  wire \seg_OBUF[5]_inst_i_5_n_0 ;
  wire \seg_OBUF[6]_inst_i_2_n_0 ;
  wire \seg_OBUF[6]_inst_i_3_n_0 ;
  wire \seg_OBUF[6]_inst_i_4_n_0 ;
  wire \seg_OBUF[6]_inst_i_5_n_0 ;
  wire \select_reg[0] ;
  wire \select_reg[1] ;
  wire \state_reg[1]_0 ;
  wire \state_reg[1]_1 ;
  wire \state_reg[1]_2 ;
  wire \state_reg[1]_3 ;
  wire [1:0]\state_reg[2]_0 ;
  wire [3:0]\state_reg[3]_0 ;
  wire [2:0]\state_reg[3]_1 ;
  wire [15:0]sw_IBUF;
  wire [3:0]NLW_dp_reg_wd10_inferred__1__0_carry_CO_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    \RAM[0][0]_i_1 
       (.I0(dp_reg_wd2[0]),
        .I1(dp_reg_wa2[1]),
        .I2(dp_reg_wa2[0]),
        .I3(dp_reg_wa2[2]),
        .I4(dp_reg_wd1[0]),
        .O(\RAM_reg[0][3] [0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    \RAM[0][1]_i_1 
       (.I0(dp_reg_wd2[1]),
        .I1(dp_reg_wa2[1]),
        .I2(dp_reg_wa2[0]),
        .I3(dp_reg_wa2[2]),
        .I4(dp_reg_wd1[1]),
        .O(\RAM_reg[0][3] [1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    \RAM[0][2]_i_1 
       (.I0(dp_reg_wd2[2]),
        .I1(dp_reg_wa2[1]),
        .I2(dp_reg_wa2[0]),
        .I3(dp_reg_wa2[2]),
        .I4(dp_reg_wd1[2]),
        .O(\RAM_reg[0][3] [2]));
  LUT5 #(
    .INIT(32'h8888888A)) 
    \RAM[0][3]_i_1 
       (.I0(dp_reg_we),
        .I1(\RAM[0][3]_i_3_n_0 ),
        .I2(dp_reg_wa1[1]),
        .I3(dp_reg_wa1[0]),
        .I4(dp_reg_wa1[2]),
        .O(\RAM_reg[0][0] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    \RAM[0][3]_i_2 
       (.I0(dp_reg_wd2[3]),
        .I1(dp_reg_wa2[1]),
        .I2(dp_reg_wa2[0]),
        .I3(dp_reg_wa2[2]),
        .I4(dp_reg_wd1[3]),
        .O(\RAM_reg[0][3] [3]));
  LUT3 #(
    .INIT(8'h01)) 
    \RAM[0][3]_i_3 
       (.I0(dp_reg_wa2[1]),
        .I1(dp_reg_wa2[0]),
        .I2(dp_reg_wa2[2]),
        .O(\RAM[0][3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \RAM[1][0]_i_1 
       (.I0(dp_reg_wd2[0]),
        .I1(dp_reg_wa2[0]),
        .I2(dp_reg_wa2[2]),
        .I3(dp_reg_wa2[1]),
        .I4(dp_reg_wd1[0]),
        .O(\RAM_reg[1][3] [0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \RAM[1][1]_i_1 
       (.I0(dp_reg_wd2[1]),
        .I1(dp_reg_wa2[0]),
        .I2(dp_reg_wa2[2]),
        .I3(dp_reg_wa2[1]),
        .I4(dp_reg_wd1[1]),
        .O(\RAM_reg[1][3] [1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \RAM[1][2]_i_1 
       (.I0(dp_reg_wd2[2]),
        .I1(dp_reg_wa2[0]),
        .I2(dp_reg_wa2[2]),
        .I3(dp_reg_wa2[1]),
        .I4(dp_reg_wd1[2]),
        .O(\RAM_reg[1][3] [2]));
  LUT5 #(
    .INIT(32'h888888A8)) 
    \RAM[1][3]_i_1 
       (.I0(dp_reg_we),
        .I1(\RAM[1][3]_i_3_n_0 ),
        .I2(dp_reg_wa1[0]),
        .I3(dp_reg_wa1[2]),
        .I4(dp_reg_wa1[1]),
        .O(\RAM_reg[1][0] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \RAM[1][3]_i_2 
       (.I0(dp_reg_wd2[3]),
        .I1(dp_reg_wa2[0]),
        .I2(dp_reg_wa2[2]),
        .I3(dp_reg_wa2[1]),
        .I4(dp_reg_wd1[3]),
        .O(\RAM_reg[1][3] [3]));
  LUT3 #(
    .INIT(8'h02)) 
    \RAM[1][3]_i_3 
       (.I0(dp_reg_wa2[0]),
        .I1(dp_reg_wa2[2]),
        .I2(dp_reg_wa2[1]),
        .O(\RAM[1][3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \RAM[2][0]_i_1 
       (.I0(dp_reg_wd2[0]),
        .I1(dp_reg_wa2[1]),
        .I2(dp_reg_wa2[0]),
        .I3(dp_reg_wa2[2]),
        .I4(dp_reg_wd1[0]),
        .O(\RAM_reg[2][3] [0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \RAM[2][1]_i_1 
       (.I0(dp_reg_wd2[1]),
        .I1(dp_reg_wa2[1]),
        .I2(dp_reg_wa2[0]),
        .I3(dp_reg_wa2[2]),
        .I4(dp_reg_wd1[1]),
        .O(\RAM_reg[2][3] [1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \RAM[2][2]_i_1 
       (.I0(dp_reg_wd2[2]),
        .I1(dp_reg_wa2[1]),
        .I2(dp_reg_wa2[0]),
        .I3(dp_reg_wa2[2]),
        .I4(dp_reg_wd1[2]),
        .O(\RAM_reg[2][3] [2]));
  LUT5 #(
    .INIT(32'h888888A8)) 
    \RAM[2][3]_i_1 
       (.I0(dp_reg_we),
        .I1(\RAM[2][3]_i_3_n_0 ),
        .I2(dp_reg_wa1[1]),
        .I3(dp_reg_wa1[0]),
        .I4(dp_reg_wa1[2]),
        .O(\RAM_reg[2][0] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \RAM[2][3]_i_2 
       (.I0(dp_reg_wd2[3]),
        .I1(dp_reg_wa2[1]),
        .I2(dp_reg_wa2[0]),
        .I3(dp_reg_wa2[2]),
        .I4(dp_reg_wd1[3]),
        .O(\RAM_reg[2][3] [3]));
  LUT3 #(
    .INIT(8'h02)) 
    \RAM[2][3]_i_3 
       (.I0(dp_reg_wa2[1]),
        .I1(dp_reg_wa2[0]),
        .I2(dp_reg_wa2[2]),
        .O(\RAM[2][3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \RAM[3][0]_i_1 
       (.I0(dp_reg_wd2[0]),
        .I1(dp_reg_wa2[2]),
        .I2(dp_reg_wa2[0]),
        .I3(dp_reg_wa2[1]),
        .I4(dp_reg_wd1[0]),
        .O(\RAM_reg[3][3] [0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \RAM[3][1]_i_1 
       (.I0(dp_reg_wd2[1]),
        .I1(dp_reg_wa2[2]),
        .I2(dp_reg_wa2[0]),
        .I3(dp_reg_wa2[1]),
        .I4(dp_reg_wd1[1]),
        .O(\RAM_reg[3][3] [1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \RAM[3][2]_i_1 
       (.I0(dp_reg_wd2[2]),
        .I1(dp_reg_wa2[2]),
        .I2(dp_reg_wa2[0]),
        .I3(dp_reg_wa2[1]),
        .I4(dp_reg_wd1[2]),
        .O(\RAM_reg[3][3] [2]));
  LUT5 #(
    .INIT(32'h8A888888)) 
    \RAM[3][3]_i_1 
       (.I0(dp_reg_we),
        .I1(\RAM[3][3]_i_3_n_0 ),
        .I2(dp_reg_wa1[2]),
        .I3(dp_reg_wa1[0]),
        .I4(dp_reg_wa1[1]),
        .O(\RAM_reg[3][0] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \RAM[3][3]_i_2 
       (.I0(dp_reg_wd2[3]),
        .I1(dp_reg_wa2[2]),
        .I2(dp_reg_wa2[0]),
        .I3(dp_reg_wa2[1]),
        .I4(dp_reg_wd1[3]),
        .O(\RAM_reg[3][3] [3]));
  LUT3 #(
    .INIT(8'h40)) 
    \RAM[3][3]_i_3 
       (.I0(dp_reg_wa2[2]),
        .I1(dp_reg_wa2[0]),
        .I2(dp_reg_wa2[1]),
        .O(\RAM[3][3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \RAM[4][0]_i_1 
       (.I0(dp_reg_wd2[0]),
        .I1(dp_reg_wa2[2]),
        .I2(dp_reg_wa2[0]),
        .I3(dp_reg_wa2[1]),
        .I4(dp_reg_wd1[0]),
        .O(\RAM_reg[4][3] [0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \RAM[4][1]_i_1 
       (.I0(dp_reg_wd2[1]),
        .I1(dp_reg_wa2[2]),
        .I2(dp_reg_wa2[0]),
        .I3(dp_reg_wa2[1]),
        .I4(dp_reg_wd1[1]),
        .O(\RAM_reg[4][3] [1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \RAM[4][2]_i_1 
       (.I0(dp_reg_wd2[2]),
        .I1(dp_reg_wa2[2]),
        .I2(dp_reg_wa2[0]),
        .I3(dp_reg_wa2[1]),
        .I4(dp_reg_wd1[2]),
        .O(\RAM_reg[4][3] [2]));
  LUT5 #(
    .INIT(32'h888888A8)) 
    \RAM[4][3]_i_1 
       (.I0(dp_reg_we),
        .I1(\RAM[4][3]_i_3_n_0 ),
        .I2(dp_reg_wa1[2]),
        .I3(dp_reg_wa1[0]),
        .I4(dp_reg_wa1[1]),
        .O(\RAM_reg[4][0] ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \RAM[4][3]_i_2 
       (.I0(dp_reg_wd2[3]),
        .I1(dp_reg_wa2[2]),
        .I2(dp_reg_wa2[0]),
        .I3(dp_reg_wa2[1]),
        .I4(dp_reg_wd1[3]),
        .O(\RAM_reg[4][3] [3]));
  LUT3 #(
    .INIT(8'h02)) 
    \RAM[4][3]_i_3 
       (.I0(dp_reg_wa2[2]),
        .I1(dp_reg_wa2[0]),
        .I2(dp_reg_wa2[1]),
        .O(\RAM[4][3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \RAM[5][0]_i_1 
       (.I0(dp_reg_wd2[0]),
        .I1(dp_reg_wa2[1]),
        .I2(dp_reg_wa2[0]),
        .I3(dp_reg_wa2[2]),
        .I4(dp_reg_wd1[0]),
        .O(\RAM_reg[5][3] [0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \RAM[5][1]_i_1 
       (.I0(dp_reg_wd2[1]),
        .I1(dp_reg_wa2[1]),
        .I2(dp_reg_wa2[0]),
        .I3(dp_reg_wa2[2]),
        .I4(dp_reg_wd1[1]),
        .O(\RAM_reg[5][3] [1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \RAM[5][2]_i_1 
       (.I0(dp_reg_wd2[2]),
        .I1(dp_reg_wa2[1]),
        .I2(dp_reg_wa2[0]),
        .I3(dp_reg_wa2[2]),
        .I4(dp_reg_wd1[2]),
        .O(\RAM_reg[5][3] [2]));
  LUT5 #(
    .INIT(32'h8A888888)) 
    \RAM[5][3]_i_1 
       (.I0(dp_reg_we),
        .I1(\RAM[5][3]_i_3_n_0 ),
        .I2(dp_reg_wa1[1]),
        .I3(dp_reg_wa1[0]),
        .I4(dp_reg_wa1[2]),
        .O(\RAM_reg[5][0] ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \RAM[5][3]_i_2 
       (.I0(dp_reg_wd2[3]),
        .I1(dp_reg_wa2[1]),
        .I2(dp_reg_wa2[0]),
        .I3(dp_reg_wa2[2]),
        .I4(dp_reg_wd1[3]),
        .O(\RAM_reg[5][3] [3]));
  LUT3 #(
    .INIT(8'h40)) 
    \RAM[5][3]_i_3 
       (.I0(dp_reg_wa2[1]),
        .I1(dp_reg_wa2[0]),
        .I2(dp_reg_wa2[2]),
        .O(\RAM[5][3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \RAM[6][0]_i_1 
       (.I0(dp_reg_wd2[0]),
        .I1(dp_reg_wa2[0]),
        .I2(dp_reg_wa2[2]),
        .I3(dp_reg_wa2[1]),
        .I4(dp_reg_wd1[0]),
        .O(\RAM_reg[6][3]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \RAM[6][1]_i_1 
       (.I0(dp_reg_wd2[1]),
        .I1(dp_reg_wa2[0]),
        .I2(dp_reg_wa2[2]),
        .I3(dp_reg_wa2[1]),
        .I4(dp_reg_wd1[1]),
        .O(\RAM_reg[6][3]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \RAM[6][2]_i_1 
       (.I0(dp_reg_wd2[2]),
        .I1(dp_reg_wa2[0]),
        .I2(dp_reg_wa2[2]),
        .I3(dp_reg_wa2[1]),
        .I4(dp_reg_wd1[2]),
        .O(\RAM_reg[6][3]_0 [2]));
  LUT5 #(
    .INIT(32'h8A888888)) 
    \RAM[6][3]_i_1 
       (.I0(dp_reg_we),
        .I1(\RAM[6][3]_i_3_n_0 ),
        .I2(dp_reg_wa1[0]),
        .I3(dp_reg_wa1[2]),
        .I4(dp_reg_wa1[1]),
        .O(\RAM_reg[6][0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \RAM[6][3]_i_2 
       (.I0(dp_reg_wd2[3]),
        .I1(dp_reg_wa2[0]),
        .I2(dp_reg_wa2[2]),
        .I3(dp_reg_wa2[1]),
        .I4(dp_reg_wd1[3]),
        .O(\RAM_reg[6][3]_0 [3]));
  LUT3 #(
    .INIT(8'h40)) 
    \RAM[6][3]_i_3 
       (.I0(dp_reg_wa2[0]),
        .I1(dp_reg_wa2[2]),
        .I2(dp_reg_wa2[1]),
        .O(\RAM[6][3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \RAM[7][0]_i_1 
       (.I0(dp_reg_wd2[0]),
        .I1(dp_reg_wa2[1]),
        .I2(dp_reg_wa2[0]),
        .I3(dp_reg_wa2[2]),
        .I4(dp_reg_wd1[0]),
        .O(\RAM_reg[7][3] [0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \RAM[7][1]_i_1 
       (.I0(dp_reg_wd2[1]),
        .I1(dp_reg_wa2[1]),
        .I2(dp_reg_wa2[0]),
        .I3(dp_reg_wa2[2]),
        .I4(dp_reg_wd1[1]),
        .O(\RAM_reg[7][3] [1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \RAM[7][2]_i_1 
       (.I0(dp_reg_wd2[2]),
        .I1(dp_reg_wa2[1]),
        .I2(dp_reg_wa2[0]),
        .I3(dp_reg_wa2[2]),
        .I4(dp_reg_wd1[2]),
        .O(\RAM_reg[7][3] [2]));
  LUT5 #(
    .INIT(32'hA8888888)) 
    \RAM[7][3]_i_1 
       (.I0(dp_reg_we),
        .I1(\RAM[7][3]_i_3_n_0 ),
        .I2(dp_reg_wa1[1]),
        .I3(dp_reg_wa1[0]),
        .I4(dp_reg_wa1[2]),
        .O(\RAM_reg[7][0] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \RAM[7][3]_i_2 
       (.I0(dp_reg_wd2[3]),
        .I1(dp_reg_wa2[1]),
        .I2(dp_reg_wa2[0]),
        .I3(dp_reg_wa2[2]),
        .I4(dp_reg_wd1[3]),
        .O(\RAM_reg[7][3] [3]));
  LUT3 #(
    .INIT(8'h80)) 
    \RAM[7][3]_i_3 
       (.I0(dp_reg_wa2[1]),
        .I1(dp_reg_wa2[0]),
        .I2(dp_reg_wa2[2]),
        .O(\RAM[7][3]_i_3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_reg[0] 
       (.CLR(1'b0),
        .D(dp_reg_rd1[0]),
        .G(\a_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(a[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_reg[1] 
       (.CLR(1'b0),
        .D(dp_reg_rd1[1]),
        .G(\a_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(a[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_reg[2] 
       (.CLR(1'b0),
        .D(dp_reg_rd1[2]),
        .G(\a_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(a[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_reg[3] 
       (.CLR(1'b0),
        .D(dp_reg_rd1[3]),
        .G(\a_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(a[3]));
  LUT4 #(
    .INIT(16'h5600)) 
    \a_reg[3]_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(\a_reg[3]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \activeState_reg[0] 
       (.CLR(1'b0),
        .D(\activeState_reg[0]_i_1_n_0 ),
        .G(\activeState_reg[12]_i_2_n_0 ),
        .GE(1'b1),
        .Q(\activeState[12] [0]));
  LUT4 #(
    .INIT(16'h0004)) 
    \activeState_reg[0]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(\activeState_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \activeState_reg[10] 
       (.CLR(1'b0),
        .D(\activeState_reg[10]_i_1_n_0 ),
        .G(\activeState_reg[12]_i_2_n_0 ),
        .GE(1'b1),
        .Q(\activeState[12] [10]));
  LUT3 #(
    .INIT(8'h80)) 
    \activeState_reg[10]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .O(\activeState_reg[10]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \activeState_reg[11] 
       (.CLR(1'b0),
        .D(\activeState_reg[11]_i_1_n_0 ),
        .G(\activeState_reg[12]_i_2_n_0 ),
        .GE(1'b1),
        .Q(\activeState[12] [11]));
  LUT3 #(
    .INIT(8'h40)) 
    \activeState_reg[11]_i_1 
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(Q[2]),
        .O(\activeState_reg[11]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \activeState_reg[12] 
       (.CLR(1'b0),
        .D(\activeState_reg[12]_i_1_n_0 ),
        .G(\activeState_reg[12]_i_2_n_0 ),
        .GE(1'b1),
        .Q(\activeState[12] [12]));
  LUT3 #(
    .INIT(8'h80)) 
    \activeState_reg[12]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[3]),
        .O(\activeState_reg[12]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \activeState_reg[12]_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[3]),
        .O(\activeState_reg[12]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \activeState_reg[1] 
       (.CLR(1'b0),
        .D(\mem_wd_reg[11]_i_1_n_0 ),
        .G(\activeState_reg[12]_i_2_n_0 ),
        .GE(1'b1),
        .Q(\activeState[12] [1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \activeState_reg[2] 
       (.CLR(1'b0),
        .D(\activeState_reg[2]_i_1_n_0 ),
        .G(\activeState_reg[12]_i_2_n_0 ),
        .GE(1'b1),
        .Q(\activeState[12] [2]));
  LUT4 #(
    .INIT(16'h0008)) 
    \activeState_reg[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(\activeState_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \activeState_reg[3] 
       (.CLR(1'b0),
        .D(\activeState_reg[3]_i_1_n_0 ),
        .G(\activeState_reg[12]_i_2_n_0 ),
        .GE(1'b1),
        .Q(\activeState[12] [3]));
  LUT4 #(
    .INIT(16'h0100)) 
    \activeState_reg[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(\activeState_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \activeState_reg[4] 
       (.CLR(1'b0),
        .D(\mem_add_reg[2]_i_1_n_0 ),
        .G(\activeState_reg[12]_i_2_n_0 ),
        .GE(1'b1),
        .Q(\activeState[12] [4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \activeState_reg[5] 
       (.CLR(1'b0),
        .D(\activeState_reg[5]_i_1_n_0 ),
        .G(\activeState_reg[12]_i_2_n_0 ),
        .GE(1'b1),
        .Q(\activeState[12] [5]));
  LUT3 #(
    .INIT(8'h08)) 
    \activeState_reg[5]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\activeState_reg[5]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \activeState_reg[6] 
       (.CLR(1'b0),
        .D(\activeState_reg[6]_i_1_n_0 ),
        .G(\activeState_reg[12]_i_2_n_0 ),
        .GE(1'b1),
        .Q(\activeState[12] [6]));
  LUT3 #(
    .INIT(8'h80)) 
    \activeState_reg[6]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(\activeState_reg[6]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \activeState_reg[7] 
       (.CLR(1'b0),
        .D(\activeState_reg[7]_i_1_n_0 ),
        .G(\activeState_reg[12]_i_2_n_0 ),
        .GE(1'b1),
        .Q(\activeState[12] [7]));
  LUT4 #(
    .INIT(16'h0004)) 
    \activeState_reg[7]_i_1 
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(\activeState_reg[7]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \activeState_reg[8] 
       (.CLR(1'b0),
        .D(\activeState_reg[8]_i_1_n_0 ),
        .G(\activeState_reg[12]_i_2_n_0 ),
        .GE(1'b1),
        .Q(\activeState[12] [8]));
  LUT4 #(
    .INIT(16'h0400)) 
    \activeState_reg[8]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\activeState_reg[8]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \activeState_reg[9] 
       (.CLR(1'b0),
        .D(\activeState_reg[9]_i_1_n_0 ),
        .G(\activeState_reg[12]_i_2_n_0 ),
        .GE(1'b1),
        .Q(\activeState[12] [9]));
  LUT3 #(
    .INIT(8'h08)) 
    \activeState_reg[9]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\activeState_reg[9]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \b_reg[0] 
       (.CLR(1'b0),
        .D(dp_reg_rd2[0]),
        .G(\a_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(b[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \b_reg[1] 
       (.CLR(1'b0),
        .D(dp_reg_rd2[1]),
        .G(\a_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(b[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \b_reg[2] 
       (.CLR(1'b0),
        .D(dp_reg_rd2[2]),
        .G(\a_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(b[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \b_reg[3] 
       (.CLR(1'b0),
        .D(dp_reg_rd2[3]),
        .G(\a_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(b[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dp_reg_ra1_reg[0] 
       (.CLR(1'b0),
        .D(\state_reg[3]_1 [0]),
        .G(\dp_reg_ra1_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(\RAM_reg[6][1] [0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dp_reg_ra1_reg[1] 
       (.CLR(1'b0),
        .D(\state_reg[3]_1 [1]),
        .G(\dp_reg_ra1_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(\RAM_reg[6][1] [1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dp_reg_ra1_reg[2] 
       (.CLR(1'b0),
        .D(\state_reg[3]_1 [2]),
        .G(\dp_reg_ra1_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(\RAM_reg[6][1] [2]));
  LUT3 #(
    .INIT(8'h2B)) 
    \dp_reg_ra1_reg[2]_i_2 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(\dp_reg_ra1_reg[2]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dp_reg_ra2_reg[0] 
       (.CLR(1'b0),
        .D(\dp_reg_ra2_reg[0]_i_1_n_0 ),
        .G(\dp_reg_ra2_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(\RAM_reg[6][2] [0]));
  LUT2 #(
    .INIT(4'h8)) 
    \dp_reg_ra2_reg[0]_i_1 
       (.I0(Q[3]),
        .I1(\q_reg[11]_0 [0]),
        .O(\dp_reg_ra2_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dp_reg_ra2_reg[1] 
       (.CLR(1'b0),
        .D(\dp_reg_ra2_reg[1]_i_1_n_0 ),
        .G(\dp_reg_ra2_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(\RAM_reg[6][2] [1]));
  LUT2 #(
    .INIT(4'h8)) 
    \dp_reg_ra2_reg[1]_i_1 
       (.I0(Q[3]),
        .I1(\q_reg[11]_0 [1]),
        .O(\dp_reg_ra2_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dp_reg_ra2_reg[2] 
       (.CLR(1'b0),
        .D(\dp_reg_ra2_reg[2]_i_1_n_0 ),
        .G(\dp_reg_ra2_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(\RAM_reg[6][2] [2]));
  LUT2 #(
    .INIT(4'h8)) 
    \dp_reg_ra2_reg[2]_i_1 
       (.I0(Q[3]),
        .I1(\q_reg[11]_0 [2]),
        .O(\dp_reg_ra2_reg[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h5611)) 
    \dp_reg_ra2_reg[2]_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(\dp_reg_ra2_reg[2]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dp_reg_wa1_reg[0] 
       (.CLR(1'b0),
        .D(\dp_reg_wa1_reg[0]_i_1_n_0 ),
        .G(\dp_reg_wa1_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(dp_reg_wa1[0]));
  LUT6 #(
    .INIT(64'hFFF0FF8800F00088)) 
    \dp_reg_wa1_reg[0]_i_1 
       (.I0(Q[1]),
        .I1(sw_IBUF[9]),
        .I2(\q_reg[11]_0 [3]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(\q_reg[11]_0 [5]),
        .O(\dp_reg_wa1_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dp_reg_wa1_reg[1] 
       (.CLR(1'b0),
        .D(\dp_reg_wa1_reg[1]_i_1_n_0 ),
        .G(\dp_reg_wa1_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(dp_reg_wa1[1]));
  LUT6 #(
    .INIT(64'hFFF0FF8800F00088)) 
    \dp_reg_wa1_reg[1]_i_1 
       (.I0(Q[1]),
        .I1(sw_IBUF[10]),
        .I2(\q_reg[11]_0 [4]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(\q_reg[11]_0 [6]),
        .O(\dp_reg_wa1_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dp_reg_wa1_reg[2] 
       (.CLR(1'b0),
        .D(\dp_reg_wa1_reg[2]_i_1_n_0 ),
        .G(\dp_reg_wa1_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(dp_reg_wa1[2]));
  LUT6 #(
    .INIT(64'hFFF0FF8800F00088)) 
    \dp_reg_wa1_reg[2]_i_1 
       (.I0(Q[1]),
        .I1(sw_IBUF[11]),
        .I2(\q_reg[11]_0 [5]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(\q_reg[11]_0 [7]),
        .O(\dp_reg_wa1_reg[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7459)) 
    \dp_reg_wa1_reg[2]_i_2 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\dp_reg_wa1_reg[2]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dp_reg_wa2_reg[0] 
       (.CLR(1'b0),
        .D(\dp_reg_wa2_reg[0]_i_1_n_0 ),
        .G(\dp_reg_wa2_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(dp_reg_wa2[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \dp_reg_wa2_reg[0]_i_1 
       (.I0(Q[2]),
        .I1(\q_reg[11]_0 [5]),
        .O(\dp_reg_wa2_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dp_reg_wa2_reg[1] 
       (.CLR(1'b0),
        .D(\state_reg[2]_0 [0]),
        .G(\dp_reg_wa2_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(dp_reg_wa2[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dp_reg_wa2_reg[2] 
       (.CLR(1'b0),
        .D(\state_reg[2]_0 [1]),
        .G(\dp_reg_wa2_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(dp_reg_wa2[2]));
  LUT4 #(
    .INIT(16'h1083)) 
    \dp_reg_wa2_reg[2]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(\dp_reg_wa2_reg[2]_i_2_n_0 ));
  CARRY4 dp_reg_wd10_inferred__1__0_carry
       (.CI(1'b0),
        .CO(NLW_dp_reg_wd10_inferred__1__0_carry_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,DI,1'b0}),
        .O({dp_reg_wd10_inferred__1__0_carry_n_4,O,dp_reg_wd10_inferred__1__0_carry_n_7}),
        .S(S));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dp_reg_wd1_reg[0] 
       (.CLR(1'b0),
        .D(\dp_reg_wd1_reg[0]_i_1_n_0 ),
        .G(\dp_reg_wd1_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(dp_reg_wd1[0]));
  LUT6 #(
    .INIT(64'hF8F8F0F0F8FFF0F0)) 
    \dp_reg_wd1_reg[0]_i_1 
       (.I0(\RAM_reg[3][1] ),
        .I1(Q[2]),
        .I2(\dp_reg_wd1_reg[0]_i_3_n_0 ),
        .I3(\RAM_reg[6][0] ),
        .I4(Q[3]),
        .I5(\RAM_reg[3][0]_0 ),
        .O(\dp_reg_wd1_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h30000000AA00AA00)) 
    \dp_reg_wd1_reg[0]_i_3 
       (.I0(sw_IBUF[12]),
        .I1(Q[2]),
        .I2(dp_reg_wd10_inferred__1__0_carry_n_7),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[3]),
        .O(\dp_reg_wd1_reg[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \dp_reg_wd1_reg[0]_i_4 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\RAM_reg[6][0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dp_reg_wd1_reg[1] 
       (.CLR(1'b0),
        .D(\dp_reg_wd1_reg[1]_i_1_n_0 ),
        .G(\dp_reg_wd1_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(dp_reg_wd1[1]));
  LUT4 #(
    .INIT(16'hB888)) 
    \dp_reg_wd1_reg[1]_i_1 
       (.I0(\state_reg[1]_2 ),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(sw_IBUF[13]),
        .O(\dp_reg_wd1_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dp_reg_wd1_reg[2] 
       (.CLR(1'b0),
        .D(\dp_reg_wd1_reg[2]_i_1_n_0 ),
        .G(\dp_reg_wd1_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(dp_reg_wd1[2]));
  LUT4 #(
    .INIT(16'hB888)) 
    \dp_reg_wd1_reg[2]_i_1 
       (.I0(\state_reg[1]_3 ),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(sw_IBUF[14]),
        .O(\dp_reg_wd1_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dp_reg_wd1_reg[3] 
       (.CLR(1'b0),
        .D(\dp_reg_wd1_reg[3]_i_1_n_0 ),
        .G(\dp_reg_wd1_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(dp_reg_wd1[3]));
  LUT4 #(
    .INIT(16'hB888)) 
    \dp_reg_wd1_reg[3]_i_1 
       (.I0(\dp_reg_wd1_reg[3]_i_3_n_0 ),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(sw_IBUF[15]),
        .O(\dp_reg_wd1_reg[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h02F9)) 
    \dp_reg_wd1_reg[3]_i_2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\dp_reg_wd1_reg[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0AFAFC0CFC0CF)) 
    \dp_reg_wd1_reg[3]_i_3 
       (.I0(dp_reg_wd10_inferred__1__0_carry_n_4),
        .I1(\RAM_reg[3][3]_0 ),
        .I2(\RAM_reg[6][3] ),
        .I3(\RAM_reg[3][3]_1 ),
        .I4(\RAM_reg[3][2] ),
        .I5(\RAM_reg[6][0] ),
        .O(\dp_reg_wd1_reg[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dp_reg_wd1_reg[3]_i_5 
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(\RAM_reg[6][3] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dp_reg_wd2_reg[0] 
       (.CLR(1'b0),
        .D(\state_reg[3]_0 [0]),
        .G(\dp_reg_wd2_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(dp_reg_wd2[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dp_reg_wd2_reg[1] 
       (.CLR(1'b0),
        .D(\state_reg[3]_0 [1]),
        .G(\dp_reg_wd2_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(dp_reg_wd2[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dp_reg_wd2_reg[2] 
       (.CLR(1'b0),
        .D(\state_reg[3]_0 [2]),
        .G(\dp_reg_wd2_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(dp_reg_wd2[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dp_reg_wd2_reg[3] 
       (.CLR(1'b0),
        .D(\state_reg[3]_0 [3]),
        .G(\dp_reg_wd2_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(dp_reg_wd2[3]));
  LUT4 #(
    .INIT(16'h0141)) 
    \dp_reg_wd2_reg[3]_i_2 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .O(\dp_reg_wd2_reg[3]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    dp_reg_we_reg
       (.CLR(1'b0),
        .D(dp_reg_we_reg_i_1_n_0),
        .G(dp_reg_we_reg_i_2_n_0),
        .GE(1'b1),
        .Q(dp_reg_we));
  LUT4 #(
    .INIT(16'h7448)) 
    dp_reg_we_reg_i_1
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(dp_reg_we_reg_i_1_n_0));
  LUT4 #(
    .INIT(16'hF8FF)) 
    dp_reg_we_reg_i_2
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(dp_reg_we_reg_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    isexternal_reg
       (.CLR(1'b0),
        .D(isexternal_reg_i_1_n_0),
        .G(isexternal_reg_i_2_n_0),
        .GE(1'b1),
        .Q(isexternal));
  LUT3 #(
    .INIT(8'h04)) 
    isexternal_reg_i_1
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .O(isexternal_reg_i_1_n_0));
  LUT4 #(
    .INIT(16'hC03D)) 
    isexternal_reg_i_2
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(isexternal_reg_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    load_reg__0
       (.CLR(1'b0),
        .D(load_reg__0_i_1_n_0),
        .G(load_reg__0_i_2_n_0),
        .GE(1'b1),
        .Q(load));
  LUT3 #(
    .INIT(8'hDF)) 
    load_reg__0_i_1
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(Q[2]),
        .O(load_reg__0_i_1_n_0));
  LUT4 #(
    .INIT(16'hA78F)) 
    load_reg__0_i_2
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[0]),
        .O(load_reg__0_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    load_reg_reg
       (.CLR(1'b0),
        .D(load_reg_reg_i_1_n_0),
        .G(load_reg__0_i_2_n_0),
        .GE(1'b1),
        .Q(load_reg));
  LUT3 #(
    .INIT(8'hEF)) 
    load_reg_reg_i_1
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(Q[2]),
        .O(load_reg_reg_i_1_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_add_reg[0] 
       (.CLR(1'b0),
        .D(\q_reg[2] [0]),
        .G(\mem_add_reg[2]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\q_reg[11] [0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_add_reg[1] 
       (.CLR(1'b0),
        .D(\q_reg[2] [1]),
        .G(\mem_add_reg[2]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\q_reg[11] [1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_add_reg[2] 
       (.CLR(1'b0),
        .D(\q_reg[2] [2]),
        .G(\mem_add_reg[2]_i_1_n_0 ),
        .GE(1'b1),
        .Q(mem_add));
  LUT4 #(
    .INIT(16'h0400)) 
    \mem_add_reg[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(\mem_add_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_wd_reg[0] 
       (.CLR(1'b0),
        .D(sw_IBUF[0]),
        .G(\mem_wd_reg[11]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\RAM_reg[7][11] [0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_wd_reg[10] 
       (.CLR(1'b0),
        .D(sw_IBUF[10]),
        .G(\mem_wd_reg[11]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\RAM_reg[7][11] [10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_wd_reg[11] 
       (.CLR(1'b0),
        .D(sw_IBUF[11]),
        .G(\mem_wd_reg[11]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\RAM_reg[7][11] [11]));
  LUT4 #(
    .INIT(16'h0100)) 
    \mem_wd_reg[11]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[1]),
        .O(\mem_wd_reg[11]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_wd_reg[1] 
       (.CLR(1'b0),
        .D(sw_IBUF[1]),
        .G(\mem_wd_reg[11]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\RAM_reg[7][11] [1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_wd_reg[2] 
       (.CLR(1'b0),
        .D(sw_IBUF[2]),
        .G(\mem_wd_reg[11]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\RAM_reg[7][11] [2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_wd_reg[3] 
       (.CLR(1'b0),
        .D(sw_IBUF[3]),
        .G(\mem_wd_reg[11]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\RAM_reg[7][11] [3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_wd_reg[4] 
       (.CLR(1'b0),
        .D(sw_IBUF[4]),
        .G(\mem_wd_reg[11]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\RAM_reg[7][11] [4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_wd_reg[5] 
       (.CLR(1'b0),
        .D(sw_IBUF[5]),
        .G(\mem_wd_reg[11]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\RAM_reg[7][11] [5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_wd_reg[6] 
       (.CLR(1'b0),
        .D(sw_IBUF[6]),
        .G(\mem_wd_reg[11]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\RAM_reg[7][11] [6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_wd_reg[7] 
       (.CLR(1'b0),
        .D(sw_IBUF[7]),
        .G(\mem_wd_reg[11]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\RAM_reg[7][11] [7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_wd_reg[8] 
       (.CLR(1'b0),
        .D(sw_IBUF[8]),
        .G(\mem_wd_reg[11]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\RAM_reg[7][11] [8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_wd_reg[9] 
       (.CLR(1'b0),
        .D(sw_IBUF[9]),
        .G(\mem_wd_reg[11]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\RAM_reg[7][11] [9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    mem_we_reg
       (.CLR(1'b0),
        .D(mem_we_reg_i_1_n_0),
        .G(mem_we_reg_i_2_n_0),
        .GE(1'b1),
        .Q(mem_we));
  LUT3 #(
    .INIT(8'h04)) 
    mem_we_reg_i_1
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(mem_we_reg_i_1_n_0));
  LUT3 #(
    .INIT(8'h87)) 
    mem_we_reg_i_2
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[3]),
        .O(mem_we_reg_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \nextstate_reg[0] 
       (.CLR(1'b0),
        .D(\nextstate_reg[0]_i_1_n_0 ),
        .G(\nextstate_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(nextstate[0]));
  LUT6 #(
    .INIT(64'h00FFFFFFF300FF5F)) 
    \nextstate_reg[0]_i_1 
       (.I0(q_reg),
        .I1(\q_reg[11]_0 [8]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\nextstate_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \nextstate_reg[1] 
       (.CLR(1'b0),
        .D(\nextstate_reg[1]_i_1_n_0 ),
        .G(\nextstate_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(nextstate[1]));
  LUT6 #(
    .INIT(64'h0E0E0E0EEE0E0EEE)) 
    \nextstate_reg[1]_i_1 
       (.I0(q_reg_2),
        .I1(\state_reg[1]_0 ),
        .I2(Q[1]),
        .I3(\q_reg[11]_0 [8]),
        .I4(\q_reg[11]_0 [9]),
        .I5(Q[0]),
        .O(\nextstate_reg[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \nextstate_reg[1]_i_3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .O(\state_reg[1]_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \nextstate_reg[2] 
       (.CLR(1'b0),
        .D(\nextstate_reg[2]_i_1_n_0 ),
        .G(\nextstate_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(nextstate[2]));
  LUT6 #(
    .INIT(64'h0505070505050505)) 
    \nextstate_reg[2]_i_1 
       (.I0(\nextstate_reg[2]_i_2_n_0 ),
        .I1(q_reg_0),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(q_reg_1),
        .O(\nextstate_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBE0000FFFFFFFF)) 
    \nextstate_reg[2]_i_2 
       (.I0(Q[0]),
        .I1(\q_reg[11]_0 [10]),
        .I2(\q_reg[11]_0 [9]),
        .I3(\q_reg[11]_0 [8]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\nextstate_reg[2]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \nextstate_reg[3] 
       (.CLR(1'b0),
        .D(\q_reg[9] ),
        .G(\nextstate_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(nextstate[3]));
  LUT6 #(
    .INIT(64'hDFFFFFFFFFFFFFFF)) 
    \nextstate_reg[3]_i_2 
       (.I0(\state_reg[1]_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\q_reg[11]_0 [10]),
        .I4(\q_reg[11]_0 [8]),
        .I5(\q_reg[11]_0 [9]),
        .O(\nextstate_reg[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \nextstate_reg[3]_i_3 
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(\state_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \q[0]_i_1 
       (.I0(sw_IBUF[0]),
        .I1(isexternal),
        .I2(load_reg),
        .I3(\RAM_reg[7][0]_0 ),
        .I4(mem_add),
        .I5(\RAM_reg[3][0]_3 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \q[10]_i_1 
       (.I0(sw_IBUF[10]),
        .I1(isexternal),
        .I2(load_reg),
        .I3(\RAM_reg[7][10] ),
        .I4(mem_add),
        .I5(\RAM_reg[3][10] ),
        .O(D[10]));
  LUT2 #(
    .INIT(4'hB)) 
    \q[11]_i_1 
       (.I0(isexternal),
        .I1(load_reg),
        .O(E));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \q[11]_i_2 
       (.I0(sw_IBUF[11]),
        .I1(isexternal),
        .I2(load_reg),
        .I3(\RAM_reg[7][11]_0 ),
        .I4(mem_add),
        .I5(\RAM_reg[3][11] ),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \q[1]_i_1 
       (.I0(sw_IBUF[1]),
        .I1(isexternal),
        .I2(load_reg),
        .I3(\RAM_reg[7][1] ),
        .I4(mem_add),
        .I5(\RAM_reg[3][1]_2 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \q[2]_i_1 
       (.I0(sw_IBUF[2]),
        .I1(isexternal),
        .I2(load_reg),
        .I3(\RAM_reg[7][2] ),
        .I4(mem_add),
        .I5(\RAM_reg[3][2]_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \q[3]_i_1 
       (.I0(sw_IBUF[3]),
        .I1(isexternal),
        .I2(load_reg),
        .I3(\RAM_reg[7][3]_0 ),
        .I4(mem_add),
        .I5(\RAM_reg[3][3]_2 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \q[4]_i_1 
       (.I0(sw_IBUF[4]),
        .I1(isexternal),
        .I2(load_reg),
        .I3(\RAM_reg[7][4] ),
        .I4(mem_add),
        .I5(\RAM_reg[3][4] ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \q[5]_i_1 
       (.I0(sw_IBUF[5]),
        .I1(isexternal),
        .I2(load_reg),
        .I3(\RAM_reg[7][5] ),
        .I4(mem_add),
        .I5(\RAM_reg[3][5] ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \q[6]_i_1 
       (.I0(sw_IBUF[6]),
        .I1(isexternal),
        .I2(load_reg),
        .I3(\RAM_reg[7][6] ),
        .I4(mem_add),
        .I5(\RAM_reg[3][6] ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \q[7]_i_1 
       (.I0(sw_IBUF[7]),
        .I1(isexternal),
        .I2(load_reg),
        .I3(\RAM_reg[7][7] ),
        .I4(mem_add),
        .I5(\RAM_reg[3][7] ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \q[8]_i_1 
       (.I0(sw_IBUF[8]),
        .I1(isexternal),
        .I2(load_reg),
        .I3(\RAM_reg[7][8] ),
        .I4(mem_add),
        .I5(\RAM_reg[3][8] ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \q[9]_i_1 
       (.I0(sw_IBUF[9]),
        .I1(isexternal),
        .I2(load_reg),
        .I3(\RAM_reg[7][9] ),
        .I4(mem_add),
        .I5(\RAM_reg[3][9] ),
        .O(D[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \remainder_reg[0] 
       (.CLR(1'b0),
        .D(\RAM_reg[3][2]_1 [0]),
        .G(\remainder_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(remainder[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \remainder_reg[1] 
       (.CLR(1'b0),
        .D(\RAM_reg[3][2]_1 [1]),
        .G(\remainder_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(remainder[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \remainder_reg[2] 
       (.CLR(1'b0),
        .D(\RAM_reg[3][2]_1 [2]),
        .G(\remainder_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(remainder[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \remainder_reg[3] 
       (.CLR(1'b0),
        .D(\RAM_reg[3][2]_1 [3]),
        .G(\remainder_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(remainder[3]));
  LUT4 #(
    .INIT(16'h0008)) 
    \remainder_reg[3]_i_2 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\remainder_reg[3]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    reset_reg
       (.CLR(1'b0),
        .D(reset_reg_i_1_n_0),
        .G(reset_reg_i_2_n_0),
        .GE(1'b1),
        .Q(\q_reg[0] ));
  LUT3 #(
    .INIT(8'hA1)) 
    reset_reg_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(reset_reg_i_1_n_0));
  LUT4 #(
    .INIT(16'hA057)) 
    reset_reg_i_2
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(reset_reg_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[0] 
       (.CLR(1'b0),
        .D(\result_reg[0]_i_1_n_0 ),
        .G(\result_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(result[0]));
  LUT5 #(
    .INIT(32'h2EFF2E00)) 
    \result_reg[0]_i_1 
       (.I0(\RAM_reg[3][1] ),
        .I1(Q[0]),
        .I2(\RAM_reg[3][0]_1 ),
        .I3(Q[2]),
        .I4(\result_reg[0]_i_2_n_0 ),
        .O(\result_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBF88808880BBBF)) 
    \result_reg[0]_i_2 
       (.I0(dp_reg_wd10_inferred__1__0_carry_n_7),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(\RAM_reg[3][0]_1 ),
        .I5(dp_reg_rd2[0]),
        .O(\result_reg[0]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[1] 
       (.CLR(1'b0),
        .D(\result_reg[1]_i_1_n_0 ),
        .G(\result_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(result[1]));
  LUT5 #(
    .INIT(32'h2EFF2E00)) 
    \result_reg[1]_i_1 
       (.I0(\RAM_reg[7][2]_0 ),
        .I1(Q[0]),
        .I2(\RAM_reg[3][1]_3 ),
        .I3(Q[2]),
        .I4(\result_reg[1]_i_3_n_0 ),
        .O(\result_reg[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \result_reg[1]_i_10 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .O(\result_reg[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h45EAEFEFEA454040)) 
    \result_reg[1]_i_3 
       (.I0(\result_reg[1]_i_10_n_0 ),
        .I1(O[0]),
        .I2(Q[0]),
        .I3(\RAM_reg[3][0]_1 ),
        .I4(dp_reg_rd2[0]),
        .I5(\RAM_reg[3][1]_0 ),
        .O(\result_reg[1]_i_3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[2] 
       (.CLR(1'b0),
        .D(\result_reg[2]_i_1_n_0 ),
        .G(\result_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(result[2]));
  LUT5 #(
    .INIT(32'hE2FFE200)) 
    \result_reg[2]_i_1 
       (.I0(\RAM_reg[7][2]_1 ),
        .I1(Q[0]),
        .I2(dp_reg_rd1[2]),
        .I3(Q[2]),
        .I4(\result_reg[2]_i_3_n_0 ),
        .O(\result_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEAE02AEFEA202A2)) 
    \result_reg[2]_i_3 
       (.I0(\RAM_reg[3][0]_2 ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(O[1]),
        .I5(\RAM_reg[3][1]_1 ),
        .O(\result_reg[2]_i_3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[3] 
       (.CLR(1'b0),
        .D(\result_reg[3]_i_1_n_0 ),
        .G(\result_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(result[3]));
  LUT5 #(
    .INIT(32'hD1FFD100)) 
    \result_reg[3]_i_1 
       (.I0(\RAM_reg[3][2] ),
        .I1(Q[0]),
        .I2(dp_reg_rd1[3]),
        .I3(Q[2]),
        .I4(\result_reg[3]_i_4_n_0 ),
        .O(\result_reg[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h22A8)) 
    \result_reg[3]_i_2 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\result_reg[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFD5D015DFD510151)) 
    \result_reg[3]_i_4 
       (.I0(\RAM_reg[3][3]_1 ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(dp_reg_wd10_inferred__1__0_carry_n_4),
        .I5(\RAM_reg[3][3]_0 ),
        .O(\result_reg[3]_i_4_n_0 ));
  MUXF7 \seg_OBUF[0]_inst_i_1 
       (.I0(\seg_OBUF[0]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[0]_inst_i_3_n_0 ),
        .O(seg_OBUF[0]),
        .S(\select_reg[0] ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \seg_OBUF[0]_inst_i_2 
       (.I0(\seg_OBUF[0]_inst_i_4_n_0 ),
        .I1(b[1]),
        .I2(\select_reg[1] ),
        .I3(\seg_OBUF[0]_inst_i_5_n_0 ),
        .I4(remainder[1]),
        .O(\seg_OBUF[0]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \seg_OBUF[0]_inst_i_3 
       (.I0(\seg_OBUF[0]_inst_i_6_n_0 ),
        .I1(a[1]),
        .I2(\select_reg[1] ),
        .I3(\seg_OBUF[0]_inst_i_7_n_0 ),
        .I4(result[1]),
        .O(\seg_OBUF[0]_inst_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \seg_OBUF[0]_inst_i_4 
       (.I0(b[0]),
        .I1(b[2]),
        .I2(b[3]),
        .O(\seg_OBUF[0]_inst_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \seg_OBUF[0]_inst_i_5 
       (.I0(remainder[2]),
        .I1(remainder[0]),
        .I2(remainder[3]),
        .O(\seg_OBUF[0]_inst_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \seg_OBUF[0]_inst_i_6 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[3]),
        .O(\seg_OBUF[0]_inst_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \seg_OBUF[0]_inst_i_7 
       (.I0(result[0]),
        .I1(result[2]),
        .I2(result[3]),
        .O(\seg_OBUF[0]_inst_i_7_n_0 ));
  MUXF7 \seg_OBUF[1]_inst_i_1 
       (.I0(\seg_OBUF[1]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[1]_inst_i_3_n_0 ),
        .O(seg_OBUF[1]),
        .S(\select_reg[0] ));
  LUT6 #(
    .INIT(64'h1020FFFF10200000)) 
    \seg_OBUF[1]_inst_i_2 
       (.I0(b[1]),
        .I1(b[3]),
        .I2(b[2]),
        .I3(b[0]),
        .I4(\select_reg[1] ),
        .I5(\seg_OBUF[1]_inst_i_4_n_0 ),
        .O(\seg_OBUF[1]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1200FFFF12000000)) 
    \seg_OBUF[1]_inst_i_3 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(\select_reg[1] ),
        .I5(\seg_OBUF[1]_inst_i_5_n_0 ),
        .O(\seg_OBUF[1]_inst_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h1200)) 
    \seg_OBUF[1]_inst_i_4 
       (.I0(remainder[1]),
        .I1(remainder[3]),
        .I2(remainder[0]),
        .I3(remainder[2]),
        .O(\seg_OBUF[1]_inst_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h1020)) 
    \seg_OBUF[1]_inst_i_5 
       (.I0(result[1]),
        .I1(result[3]),
        .I2(result[2]),
        .I3(result[0]),
        .O(\seg_OBUF[1]_inst_i_5_n_0 ));
  MUXF7 \seg_OBUF[2]_inst_i_1 
       (.I0(\seg_OBUF[2]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[2]_inst_i_3_n_0 ),
        .O(seg_OBUF[2]),
        .S(\select_reg[0] ));
  LUT6 #(
    .INIT(64'h0100FFFF01000000)) 
    \seg_OBUF[2]_inst_i_2 
       (.I0(b[0]),
        .I1(b[3]),
        .I2(b[2]),
        .I3(b[1]),
        .I4(\select_reg[1] ),
        .I5(\seg_OBUF[2]_inst_i_4_n_0 ),
        .O(\seg_OBUF[2]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0100FFFF01000000)) 
    \seg_OBUF[2]_inst_i_3 
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(\select_reg[1] ),
        .I5(\seg_OBUF[2]_inst_i_5_n_0 ),
        .O(\seg_OBUF[2]_inst_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \seg_OBUF[2]_inst_i_4 
       (.I0(remainder[2]),
        .I1(remainder[3]),
        .I2(remainder[0]),
        .I3(remainder[1]),
        .O(\seg_OBUF[2]_inst_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \seg_OBUF[2]_inst_i_5 
       (.I0(result[0]),
        .I1(result[2]),
        .I2(result[3]),
        .I3(result[1]),
        .O(\seg_OBUF[2]_inst_i_5_n_0 ));
  MUXF7 \seg_OBUF[3]_inst_i_1 
       (.I0(\seg_OBUF[3]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[3]_inst_i_3_n_0 ),
        .O(seg_OBUF[3]),
        .S(\select_reg[0] ));
  LUT6 #(
    .INIT(64'h0094FFFF00940000)) 
    \seg_OBUF[3]_inst_i_2 
       (.I0(b[1]),
        .I1(b[0]),
        .I2(b[2]),
        .I3(b[3]),
        .I4(\select_reg[1] ),
        .I5(\seg_OBUF[3]_inst_i_4_n_0 ),
        .O(\seg_OBUF[3]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0094FFFF00940000)) 
    \seg_OBUF[3]_inst_i_3 
       (.I0(a[1]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(\select_reg[1] ),
        .I5(\seg_OBUF[3]_inst_i_5_n_0 ),
        .O(\seg_OBUF[3]_inst_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0094)) 
    \seg_OBUF[3]_inst_i_4 
       (.I0(remainder[1]),
        .I1(remainder[2]),
        .I2(remainder[0]),
        .I3(remainder[3]),
        .O(\seg_OBUF[3]_inst_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0094)) 
    \seg_OBUF[3]_inst_i_5 
       (.I0(result[1]),
        .I1(result[0]),
        .I2(result[2]),
        .I3(result[3]),
        .O(\seg_OBUF[3]_inst_i_5_n_0 ));
  MUXF7 \seg_OBUF[4]_inst_i_1 
       (.I0(\seg_OBUF[4]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[4]_inst_i_3_n_0 ),
        .O(seg_OBUF[4]),
        .S(\select_reg[0] ));
  LUT6 #(
    .INIT(64'h04DCFFFF04DC0000)) 
    \seg_OBUF[4]_inst_i_2 
       (.I0(b[1]),
        .I1(b[0]),
        .I2(b[2]),
        .I3(b[3]),
        .I4(\select_reg[1] ),
        .I5(\seg_OBUF[4]_inst_i_4_n_0 ),
        .O(\seg_OBUF[4]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3710FFFF37100000)) 
    \seg_OBUF[4]_inst_i_3 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(\select_reg[1] ),
        .I5(\seg_OBUF[4]_inst_i_5_n_0 ),
        .O(\seg_OBUF[4]_inst_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h3710)) 
    \seg_OBUF[4]_inst_i_4 
       (.I0(remainder[1]),
        .I1(remainder[3]),
        .I2(remainder[2]),
        .I3(remainder[0]),
        .O(\seg_OBUF[4]_inst_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h04DC)) 
    \seg_OBUF[4]_inst_i_5 
       (.I0(result[1]),
        .I1(result[0]),
        .I2(result[2]),
        .I3(result[3]),
        .O(\seg_OBUF[4]_inst_i_5_n_0 ));
  MUXF7 \seg_OBUF[5]_inst_i_1 
       (.I0(\seg_OBUF[5]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_3_n_0 ),
        .O(seg_OBUF[5]),
        .S(\select_reg[0] ));
  LUT6 #(
    .INIT(64'h0B02FFFF0B020000)) 
    \seg_OBUF[5]_inst_i_2 
       (.I0(b[1]),
        .I1(b[2]),
        .I2(b[3]),
        .I3(b[0]),
        .I4(\select_reg[1] ),
        .I5(\seg_OBUF[5]_inst_i_4_n_0 ),
        .O(\seg_OBUF[5]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2032FFFF20320000)) 
    \seg_OBUF[5]_inst_i_3 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(\select_reg[1] ),
        .I5(\seg_OBUF[5]_inst_i_5_n_0 ),
        .O(\seg_OBUF[5]_inst_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2032)) 
    \seg_OBUF[5]_inst_i_4 
       (.I0(remainder[1]),
        .I1(remainder[3]),
        .I2(remainder[0]),
        .I3(remainder[2]),
        .O(\seg_OBUF[5]_inst_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h2302)) 
    \seg_OBUF[5]_inst_i_5 
       (.I0(result[1]),
        .I1(result[3]),
        .I2(result[2]),
        .I3(result[0]),
        .O(\seg_OBUF[5]_inst_i_5_n_0 ));
  MUXF7 \seg_OBUF[6]_inst_i_1 
       (.I0(\seg_OBUF[6]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_3_n_0 ),
        .O(seg_OBUF[6]),
        .S(\select_reg[0] ));
  LUT6 #(
    .INIT(64'hF8C3FFFFF8C30000)) 
    \seg_OBUF[6]_inst_i_2 
       (.I0(b[0]),
        .I1(b[1]),
        .I2(b[3]),
        .I3(b[2]),
        .I4(\select_reg[1] ),
        .I5(\seg_OBUF[6]_inst_i_4_n_0 ),
        .O(\seg_OBUF[6]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFC83FFFFFC830000)) 
    \seg_OBUF[6]_inst_i_3 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(\select_reg[1] ),
        .I5(\seg_OBUF[6]_inst_i_5_n_0 ),
        .O(\seg_OBUF[6]_inst_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFC83)) 
    \seg_OBUF[6]_inst_i_4 
       (.I0(remainder[0]),
        .I1(remainder[1]),
        .I2(remainder[2]),
        .I3(remainder[3]),
        .O(\seg_OBUF[6]_inst_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFC83)) 
    \seg_OBUF[6]_inst_i_5 
       (.I0(result[0]),
        .I1(result[1]),
        .I2(result[2]),
        .I3(result[3]),
        .O(\seg_OBUF[6]_inst_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(nextstate[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(nextstate[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(nextstate[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(nextstate[3]),
        .Q(Q[3]),
        .R(1'b0));
endmodule

module datapath
   (\seg[1] ,
    dp_reg_rd2,
    \RAM_reg[6][1] ,
    \RAM_reg[6][1]_0 ,
    \RAM_reg[6][1]_1 ,
    \RAM_reg[6][3] ,
    \RAM_reg[6][1]_2 ,
    dp_reg_rd1,
    \RAM_reg[6][2] ,
    \RAM_reg[6][2]_0 ,
    \RAM_reg[6][2]_1 ,
    \RAM_reg[6][2]_2 ,
    DI,
    S,
    \RAM_reg[6][0] ,
    \RAM_reg[6][3]_0 ,
    \RAM_reg[6][3]_1 ,
    \seg[2] ,
    D,
    \RAM_reg[6][3]_2 ,
    O,
    \state_reg[1] ,
    \state_reg[2] ,
    \state_reg[3] ,
    \state_reg[3]_0 ,
    Q,
    SR,
    E,
    \state_reg[3]_1 ,
    CLK,
    \state_reg[2]_0 ,
    \state_reg[3]_2 ,
    \state_reg[2]_1 ,
    \state_reg[3]_3 ,
    \state_reg[2]_2 ,
    \state_reg[3]_4 ,
    \state_reg[2]_3 ,
    \state_reg[3]_5 ,
    \state_reg[2]_4 ,
    \state_reg[3]_6 ,
    \state_reg[2]_5 ,
    \state_reg[3]_7 ,
    \state_reg[2]_6 ,
    \state_reg[3]_8 );
  output [3:0]\seg[1] ;
  output [3:0]dp_reg_rd2;
  output \RAM_reg[6][1] ;
  output \RAM_reg[6][1]_0 ;
  output \RAM_reg[6][1]_1 ;
  output \RAM_reg[6][3] ;
  output \RAM_reg[6][1]_2 ;
  output [3:0]dp_reg_rd1;
  output \RAM_reg[6][2] ;
  output \RAM_reg[6][2]_0 ;
  output \RAM_reg[6][2]_1 ;
  output \RAM_reg[6][2]_2 ;
  output [1:0]DI;
  output [3:0]S;
  output \RAM_reg[6][0] ;
  output \RAM_reg[6][3]_0 ;
  output \RAM_reg[6][3]_1 ;
  output \seg[2] ;
  output [3:0]D;
  output \RAM_reg[6][3]_2 ;
  input [1:0]O;
  input \state_reg[1] ;
  input \state_reg[2] ;
  input [2:0]\state_reg[3] ;
  input [2:0]\state_reg[3]_0 ;
  input [0:0]Q;
  input [0:0]SR;
  input [0:0]E;
  input [3:0]\state_reg[3]_1 ;
  input CLK;
  input [0:0]\state_reg[2]_0 ;
  input [3:0]\state_reg[3]_2 ;
  input [0:0]\state_reg[2]_1 ;
  input [3:0]\state_reg[3]_3 ;
  input [0:0]\state_reg[2]_2 ;
  input [3:0]\state_reg[3]_4 ;
  input [0:0]\state_reg[2]_3 ;
  input [3:0]\state_reg[3]_5 ;
  input [0:0]\state_reg[2]_4 ;
  input [3:0]\state_reg[3]_6 ;
  input [0:0]\state_reg[2]_5 ;
  input [3:0]\state_reg[3]_7 ;
  input [0:0]\state_reg[2]_6 ;
  input [3:0]\state_reg[3]_8 ;

  wire CLK;
  wire [3:0]D;
  wire [1:0]DI;
  wire [0:0]E;
  wire [1:0]O;
  wire [0:0]Q;
  wire \RAM_reg[6][0] ;
  wire \RAM_reg[6][1] ;
  wire \RAM_reg[6][1]_0 ;
  wire \RAM_reg[6][1]_1 ;
  wire \RAM_reg[6][1]_2 ;
  wire \RAM_reg[6][2] ;
  wire \RAM_reg[6][2]_0 ;
  wire \RAM_reg[6][2]_1 ;
  wire \RAM_reg[6][2]_2 ;
  wire \RAM_reg[6][3] ;
  wire \RAM_reg[6][3]_0 ;
  wire \RAM_reg[6][3]_1 ;
  wire \RAM_reg[6][3]_2 ;
  wire [3:0]S;
  wire [0:0]SR;
  wire [3:0]dp_reg_rd1;
  wire [3:0]dp_reg_rd2;
  wire [3:0]\seg[1] ;
  wire \seg[2] ;
  wire \state_reg[1] ;
  wire \state_reg[2] ;
  wire [0:0]\state_reg[2]_0 ;
  wire [0:0]\state_reg[2]_1 ;
  wire [0:0]\state_reg[2]_2 ;
  wire [0:0]\state_reg[2]_3 ;
  wire [0:0]\state_reg[2]_4 ;
  wire [0:0]\state_reg[2]_5 ;
  wire [0:0]\state_reg[2]_6 ;
  wire [2:0]\state_reg[3] ;
  wire [2:0]\state_reg[3]_0 ;
  wire [3:0]\state_reg[3]_1 ;
  wire [3:0]\state_reg[3]_2 ;
  wire [3:0]\state_reg[3]_3 ;
  wire [3:0]\state_reg[3]_4 ;
  wire [3:0]\state_reg[3]_5 ;
  wire [3:0]\state_reg[3]_6 ;
  wire [3:0]\state_reg[3]_7 ;
  wire [3:0]\state_reg[3]_8 ;

  reg_file rf
       (.CLK(CLK),
        .D(D),
        .DI(DI),
        .E(E),
        .O(O),
        .Q(Q),
        .\RAM_reg[6][0]_0 (\RAM_reg[6][0] ),
        .\RAM_reg[6][1]_0 (dp_reg_rd2[0]),
        .\RAM_reg[6][1]_1 (\RAM_reg[6][1] ),
        .\RAM_reg[6][1]_2 (\RAM_reg[6][1]_0 ),
        .\RAM_reg[6][1]_3 (\RAM_reg[6][1]_1 ),
        .\RAM_reg[6][1]_4 (\RAM_reg[6][1]_2 ),
        .\RAM_reg[6][2]_0 (dp_reg_rd1[2]),
        .\RAM_reg[6][2]_1 (\RAM_reg[6][2] ),
        .\RAM_reg[6][2]_2 (\RAM_reg[6][2]_0 ),
        .\RAM_reg[6][2]_3 (\RAM_reg[6][2]_1 ),
        .\RAM_reg[6][2]_4 (\RAM_reg[6][2]_2 ),
        .\RAM_reg[6][3]_0 (\RAM_reg[6][3] ),
        .\RAM_reg[6][3]_1 (dp_reg_rd1[3]),
        .\RAM_reg[6][3]_2 (\RAM_reg[6][3]_0 ),
        .\RAM_reg[6][3]_3 (\RAM_reg[6][3]_1 ),
        .\RAM_reg[6][3]_4 (\RAM_reg[6][3]_2 ),
        .S(S),
        .SR(SR),
        .dp_reg_rd1(dp_reg_rd1[1:0]),
        .dp_reg_rd2(dp_reg_rd2[3:1]),
        .\seg[1] (\seg[1] ),
        .\seg[2] (\seg[2] ),
        .\state_reg[1] (\state_reg[1] ),
        .\state_reg[2] (\state_reg[2] ),
        .\state_reg[2]_0 (\state_reg[2]_0 ),
        .\state_reg[2]_1 (\state_reg[2]_1 ),
        .\state_reg[2]_2 (\state_reg[2]_2 ),
        .\state_reg[2]_3 (\state_reg[2]_3 ),
        .\state_reg[2]_4 (\state_reg[2]_4 ),
        .\state_reg[2]_5 (\state_reg[2]_5 ),
        .\state_reg[2]_6 (\state_reg[2]_6 ),
        .\state_reg[3] (\state_reg[3] ),
        .\state_reg[3]_0 (\state_reg[3]_0 ),
        .\state_reg[3]_1 (\state_reg[3]_1 ),
        .\state_reg[3]_2 (\state_reg[3]_2 ),
        .\state_reg[3]_3 (\state_reg[3]_3 ),
        .\state_reg[3]_4 (\state_reg[3]_4 ),
        .\state_reg[3]_5 (\state_reg[3]_5 ),
        .\state_reg[3]_6 (\state_reg[3]_6 ),
        .\state_reg[3]_7 (\state_reg[3]_7 ),
        .\state_reg[3]_8 (\state_reg[3]_8 ));
endmodule

module debouncer
   (q1,
    q2,
    \state_reg[0] ,
    btn_d_IBUF,
    CLK,
    q1_0,
    q2_1,
    q_reg);
  output q1;
  output q2;
  output \state_reg[0] ;
  input btn_d_IBUF;
  input CLK;
  input q1_0;
  input q2_1;
  input q_reg;

  wire CLK;
  wire btn_d_IBUF;
  wire q1;
  wire q1_0;
  wire q2;
  wire q2_1;
  wire q_reg;
  wire \state_reg[0] ;

  FlipFlop_11 ff1
       (.CLK(CLK),
        .btn_d_IBUF(btn_d_IBUF),
        .q1(q1),
        .q1_0(q1_0),
        .q2(q2),
        .q2_1(q2_1),
        .q_reg_0(q_reg),
        .\state_reg[0] (\state_reg[0] ));
  FlipFlop_12 ff2
       (.CLK(CLK),
        .q1(q1),
        .q2(q2));
endmodule

(* ORIG_REF_NAME = "debouncer" *) 
module debouncer_0
   (q1,
    q2,
    btn_l_IBUF,
    CLK);
  output q1;
  output q2;
  input btn_l_IBUF;
  input CLK;

  wire CLK;
  wire btn_l_IBUF;
  wire q1;
  wire q2;

  FlipFlop_9 ff1
       (.CLK(CLK),
        .btn_l_IBUF(btn_l_IBUF),
        .q1(q1));
  FlipFlop_10 ff2
       (.CLK(CLK),
        .q1(q1),
        .q2(q2));
endmodule

(* ORIG_REF_NAME = "debouncer" *) 
module debouncer_1
   (q1,
    q2,
    \state_reg[1] ,
    \state_reg[2] ,
    btn_m_IBUF,
    CLK,
    \state_reg[1]_0 ,
    q2_0,
    q1_1,
    q_reg);
  output q1;
  output q2;
  output \state_reg[1] ;
  output \state_reg[2] ;
  input btn_m_IBUF;
  input CLK;
  input \state_reg[1]_0 ;
  input q2_0;
  input q1_1;
  input q_reg;

  wire CLK;
  wire btn_m_IBUF;
  wire q1;
  wire q1_1;
  wire q2;
  wire q2_0;
  wire q_reg;
  wire \state_reg[1] ;
  wire \state_reg[1]_0 ;
  wire \state_reg[2] ;

  FlipFlop_7 ff1
       (.CLK(CLK),
        .btn_m_IBUF(btn_m_IBUF),
        .q1_1(q1_1),
        .q2(q2),
        .q2_0(q2_0),
        .q_reg_0(q1),
        .q_reg_1(q_reg),
        .\state_reg[1] (\state_reg[1] ),
        .\state_reg[1]_0 (\state_reg[1]_0 ));
  FlipFlop_8 ff2
       (.CLK(CLK),
        .q1(q1),
        .q1_1(q1_1),
        .q2(q2),
        .q2_0(q2_0),
        .\state_reg[2] (\state_reg[2] ));
endmodule

(* ORIG_REF_NAME = "debouncer" *) 
module debouncer_2
   (q1,
    q2,
    \state_reg[2] ,
    btn_r_IBUF,
    CLK,
    q1_0,
    q2_1,
    q1_2,
    q2_3);
  output q1;
  output q2;
  output \state_reg[2] ;
  input btn_r_IBUF;
  input CLK;
  input q1_0;
  input q2_1;
  input q1_2;
  input q2_3;

  wire CLK;
  wire btn_r_IBUF;
  wire q1;
  wire q1_0;
  wire q1_2;
  wire q2;
  wire q2_1;
  wire q2_3;
  wire \state_reg[2] ;

  FlipFlop_5 ff1
       (.CLK(CLK),
        .btn_r_IBUF(btn_r_IBUF),
        .q1(q1));
  FlipFlop_6 ff2
       (.CLK(CLK),
        .q1(q1),
        .q1_0(q1_0),
        .q1_2(q1_2),
        .q2(q2),
        .q2_1(q2_1),
        .q2_3(q2_3),
        .\state_reg[2] (\state_reg[2] ));
endmodule

(* ORIG_REF_NAME = "debouncer" *) 
module debouncer_3
   (q1,
    q2,
    \state_reg[0] ,
    \state_reg[1] ,
    btn_u_IBUF,
    CLK,
    q1_0,
    q2_1);
  output q1;
  output q2;
  output \state_reg[0] ;
  output \state_reg[1] ;
  input btn_u_IBUF;
  input CLK;
  input q1_0;
  input q2_1;

  wire CLK;
  wire btn_u_IBUF;
  wire q1;
  wire q1_0;
  wire q2;
  wire q2_1;
  wire \state_reg[0] ;
  wire \state_reg[1] ;

  FlipFlop ff1
       (.CLK(CLK),
        .btn_u_IBUF(btn_u_IBUF),
        .q2(q2),
        .q_reg_0(q1),
        .\state_reg[1] (\state_reg[1] ));
  FlipFlop_4 ff2
       (.CLK(CLK),
        .q1(q1),
        .q1_0(q1_0),
        .q2(q2),
        .q2_1(q2_1),
        .\state_reg[0] (\state_reg[0] ));
endmodule

module instruction_register
   (Q,
    \state_reg[3] ,
    \RAM_reg[6][3] ,
    \RAM_reg[6][1] ,
    \state_reg[3]_0 ,
    \state_reg[2] ,
    SR,
    E,
    D,
    CLK);
  output [10:0]Q;
  output [0:0]\state_reg[3] ;
  output [1:0]\RAM_reg[6][3] ;
  output [2:0]\RAM_reg[6][1] ;
  input [3:0]\state_reg[3]_0 ;
  input \state_reg[2] ;
  input [0:0]SR;
  input [0:0]E;
  input [11:0]D;
  input CLK;

  wire CLK;
  wire [11:0]D;
  wire [0:0]E;
  wire [10:0]Q;
  wire [2:0]\RAM_reg[6][1] ;
  wire [1:0]\RAM_reg[6][3] ;
  wire [0:0]SR;
  wire \dp_reg_ra1_reg[0]_i_2_n_0 ;
  wire \dp_reg_ra1_reg[1]_i_2_n_0 ;
  wire \dp_reg_ra1_reg[2]_i_3_n_0 ;
  wire [3:3]reg_out;
  wire \state_reg[2] ;
  wire [0:0]\state_reg[3] ;
  wire [3:0]\state_reg[3]_0 ;

  LUT2 #(
    .INIT(4'h8)) 
    \dp_reg_ra1_reg[0]_i_1 
       (.I0(\dp_reg_ra1_reg[0]_i_2_n_0 ),
        .I1(\state_reg[3]_0 [3]),
        .O(\RAM_reg[6][1] [0]));
  LUT6 #(
    .INIT(64'hBBBBFFFC88880030)) 
    \dp_reg_ra1_reg[0]_i_2 
       (.I0(Q[0]),
        .I1(\state_reg[3]_0 [2]),
        .I2(Q[3]),
        .I3(\state_reg[3]_0 [1]),
        .I4(\state_reg[3]_0 [0]),
        .I5(reg_out),
        .O(\dp_reg_ra1_reg[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \dp_reg_ra1_reg[1]_i_1 
       (.I0(\dp_reg_ra1_reg[1]_i_2_n_0 ),
        .I1(\state_reg[3]_0 [3]),
        .O(\RAM_reg[6][1] [1]));
  LUT6 #(
    .INIT(64'hBBBBFFFC88880030)) 
    \dp_reg_ra1_reg[1]_i_2 
       (.I0(Q[1]),
        .I1(\state_reg[3]_0 [2]),
        .I2(Q[4]),
        .I3(\state_reg[3]_0 [1]),
        .I4(\state_reg[3]_0 [0]),
        .I5(Q[3]),
        .O(\dp_reg_ra1_reg[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \dp_reg_ra1_reg[2]_i_1 
       (.I0(\dp_reg_ra1_reg[2]_i_3_n_0 ),
        .I1(\state_reg[3]_0 [3]),
        .O(\RAM_reg[6][1] [2]));
  LUT6 #(
    .INIT(64'hBBBBFFFC88880030)) 
    \dp_reg_ra1_reg[2]_i_3 
       (.I0(Q[2]),
        .I1(\state_reg[3]_0 [2]),
        .I2(Q[5]),
        .I3(\state_reg[3]_0 [1]),
        .I4(\state_reg[3]_0 [0]),
        .I5(Q[4]),
        .O(\dp_reg_ra1_reg[2]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \dp_reg_wa2_reg[1]_i_1 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(\state_reg[3]_0 [2]),
        .O(\RAM_reg[6][3] [0]));
  LUT4 #(
    .INIT(16'h2A80)) 
    \dp_reg_wa2_reg[2]_i_1 
       (.I0(\state_reg[3]_0 [2]),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\RAM_reg[6][3] [1]));
  LUT6 #(
    .INIT(64'h0000FE0000000000)) 
    \nextstate_reg[3]_i_1 
       (.I0(Q[8]),
        .I1(Q[9]),
        .I2(Q[10]),
        .I3(\state_reg[2] ),
        .I4(\state_reg[3]_0 [0]),
        .I5(\state_reg[3]_0 [1]),
        .O(\state_reg[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[10] 
       (.C(CLK),
        .CE(E),
        .D(D[10]),
        .Q(Q[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[11] 
       (.C(CLK),
        .CE(E),
        .D(D[11]),
        .Q(Q[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(D[3]),
        .Q(reg_out),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(D[4]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(D[5]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(D[6]),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(D[7]),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[8] 
       (.C(CLK),
        .CE(E),
        .D(D[8]),
        .Q(Q[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[9] 
       (.C(CLK),
        .CE(E),
        .D(D[9]),
        .Q(Q[8]),
        .R(SR));
endmodule

module insturction_memory
   (\q_reg[11] ,
    \q_reg[11]_0 ,
    \q_reg[10] ,
    \q_reg[10]_0 ,
    \q_reg[9] ,
    \q_reg[9]_0 ,
    \q_reg[8] ,
    \q_reg[8]_0 ,
    \q_reg[7] ,
    \q_reg[7]_0 ,
    \q_reg[6] ,
    \q_reg[6]_0 ,
    \q_reg[5] ,
    \q_reg[5]_0 ,
    \q_reg[4] ,
    \q_reg[4]_0 ,
    \q_reg[3] ,
    \q_reg[3]_0 ,
    \q_reg[2] ,
    \q_reg[2]_0 ,
    \q_reg[1] ,
    \q_reg[1]_0 ,
    \q_reg[0] ,
    \q_reg[0]_0 ,
    \q_reg[1]_1 ,
    mem_we,
    \state_reg[1] ,
    CLK,
    D);
  output \q_reg[11] ;
  output \q_reg[11]_0 ;
  output \q_reg[10] ;
  output \q_reg[10]_0 ;
  output \q_reg[9] ;
  output \q_reg[9]_0 ;
  output \q_reg[8] ;
  output \q_reg[8]_0 ;
  output \q_reg[7] ;
  output \q_reg[7]_0 ;
  output \q_reg[6] ;
  output \q_reg[6]_0 ;
  output \q_reg[5] ;
  output \q_reg[5]_0 ;
  output \q_reg[4] ;
  output \q_reg[4]_0 ;
  output \q_reg[3] ;
  output \q_reg[3]_0 ;
  output \q_reg[2] ;
  output \q_reg[2]_0 ;
  output \q_reg[1] ;
  output \q_reg[1]_0 ;
  output \q_reg[0] ;
  output \q_reg[0]_0 ;
  input [1:0]\q_reg[1]_1 ;
  input mem_we;
  input \state_reg[1] ;
  input CLK;
  input [11:0]D;

  wire CLK;
  wire [11:0]D;
  wire RAM;
  wire \RAM[0][11]_i_1_n_0 ;
  wire \RAM[1][11]_i_1_n_0 ;
  wire \RAM[2][11]_i_1_n_0 ;
  wire \RAM[3][11]_i_1_n_0 ;
  wire \RAM[4][11]_i_1_n_0 ;
  wire \RAM[5][11]_i_1_n_0 ;
  wire \RAM[6][11]_i_1_n_0 ;
  wire \RAM_reg_n_0_[0][0] ;
  wire \RAM_reg_n_0_[0][10] ;
  wire \RAM_reg_n_0_[0][11] ;
  wire \RAM_reg_n_0_[0][1] ;
  wire \RAM_reg_n_0_[0][2] ;
  wire \RAM_reg_n_0_[0][3] ;
  wire \RAM_reg_n_0_[0][4] ;
  wire \RAM_reg_n_0_[0][5] ;
  wire \RAM_reg_n_0_[0][6] ;
  wire \RAM_reg_n_0_[0][7] ;
  wire \RAM_reg_n_0_[0][8] ;
  wire \RAM_reg_n_0_[0][9] ;
  wire \RAM_reg_n_0_[1][0] ;
  wire \RAM_reg_n_0_[1][10] ;
  wire \RAM_reg_n_0_[1][11] ;
  wire \RAM_reg_n_0_[1][1] ;
  wire \RAM_reg_n_0_[1][2] ;
  wire \RAM_reg_n_0_[1][3] ;
  wire \RAM_reg_n_0_[1][4] ;
  wire \RAM_reg_n_0_[1][5] ;
  wire \RAM_reg_n_0_[1][6] ;
  wire \RAM_reg_n_0_[1][7] ;
  wire \RAM_reg_n_0_[1][8] ;
  wire \RAM_reg_n_0_[1][9] ;
  wire \RAM_reg_n_0_[2][0] ;
  wire \RAM_reg_n_0_[2][10] ;
  wire \RAM_reg_n_0_[2][11] ;
  wire \RAM_reg_n_0_[2][1] ;
  wire \RAM_reg_n_0_[2][2] ;
  wire \RAM_reg_n_0_[2][3] ;
  wire \RAM_reg_n_0_[2][4] ;
  wire \RAM_reg_n_0_[2][5] ;
  wire \RAM_reg_n_0_[2][6] ;
  wire \RAM_reg_n_0_[2][7] ;
  wire \RAM_reg_n_0_[2][8] ;
  wire \RAM_reg_n_0_[2][9] ;
  wire \RAM_reg_n_0_[3][0] ;
  wire \RAM_reg_n_0_[3][10] ;
  wire \RAM_reg_n_0_[3][11] ;
  wire \RAM_reg_n_0_[3][1] ;
  wire \RAM_reg_n_0_[3][2] ;
  wire \RAM_reg_n_0_[3][3] ;
  wire \RAM_reg_n_0_[3][4] ;
  wire \RAM_reg_n_0_[3][5] ;
  wire \RAM_reg_n_0_[3][6] ;
  wire \RAM_reg_n_0_[3][7] ;
  wire \RAM_reg_n_0_[3][8] ;
  wire \RAM_reg_n_0_[3][9] ;
  wire \RAM_reg_n_0_[4][0] ;
  wire \RAM_reg_n_0_[4][10] ;
  wire \RAM_reg_n_0_[4][11] ;
  wire \RAM_reg_n_0_[4][1] ;
  wire \RAM_reg_n_0_[4][2] ;
  wire \RAM_reg_n_0_[4][3] ;
  wire \RAM_reg_n_0_[4][4] ;
  wire \RAM_reg_n_0_[4][5] ;
  wire \RAM_reg_n_0_[4][6] ;
  wire \RAM_reg_n_0_[4][7] ;
  wire \RAM_reg_n_0_[4][8] ;
  wire \RAM_reg_n_0_[4][9] ;
  wire \RAM_reg_n_0_[5][0] ;
  wire \RAM_reg_n_0_[5][10] ;
  wire \RAM_reg_n_0_[5][11] ;
  wire \RAM_reg_n_0_[5][1] ;
  wire \RAM_reg_n_0_[5][2] ;
  wire \RAM_reg_n_0_[5][3] ;
  wire \RAM_reg_n_0_[5][4] ;
  wire \RAM_reg_n_0_[5][5] ;
  wire \RAM_reg_n_0_[5][6] ;
  wire \RAM_reg_n_0_[5][7] ;
  wire \RAM_reg_n_0_[5][8] ;
  wire \RAM_reg_n_0_[5][9] ;
  wire \RAM_reg_n_0_[6][0] ;
  wire \RAM_reg_n_0_[6][10] ;
  wire \RAM_reg_n_0_[6][11] ;
  wire \RAM_reg_n_0_[6][1] ;
  wire \RAM_reg_n_0_[6][2] ;
  wire \RAM_reg_n_0_[6][3] ;
  wire \RAM_reg_n_0_[6][4] ;
  wire \RAM_reg_n_0_[6][5] ;
  wire \RAM_reg_n_0_[6][6] ;
  wire \RAM_reg_n_0_[6][7] ;
  wire \RAM_reg_n_0_[6][8] ;
  wire \RAM_reg_n_0_[6][9] ;
  wire \RAM_reg_n_0_[7][0] ;
  wire \RAM_reg_n_0_[7][10] ;
  wire \RAM_reg_n_0_[7][11] ;
  wire \RAM_reg_n_0_[7][1] ;
  wire \RAM_reg_n_0_[7][2] ;
  wire \RAM_reg_n_0_[7][3] ;
  wire \RAM_reg_n_0_[7][4] ;
  wire \RAM_reg_n_0_[7][5] ;
  wire \RAM_reg_n_0_[7][6] ;
  wire \RAM_reg_n_0_[7][7] ;
  wire \RAM_reg_n_0_[7][8] ;
  wire \RAM_reg_n_0_[7][9] ;
  wire mem_we;
  wire \q_reg[0] ;
  wire \q_reg[0]_0 ;
  wire \q_reg[10] ;
  wire \q_reg[10]_0 ;
  wire \q_reg[11] ;
  wire \q_reg[11]_0 ;
  wire \q_reg[1] ;
  wire \q_reg[1]_0 ;
  wire [1:0]\q_reg[1]_1 ;
  wire \q_reg[2] ;
  wire \q_reg[2]_0 ;
  wire \q_reg[3] ;
  wire \q_reg[3]_0 ;
  wire \q_reg[4] ;
  wire \q_reg[4]_0 ;
  wire \q_reg[5] ;
  wire \q_reg[5]_0 ;
  wire \q_reg[6] ;
  wire \q_reg[6]_0 ;
  wire \q_reg[7] ;
  wire \q_reg[7]_0 ;
  wire \q_reg[8] ;
  wire \q_reg[8]_0 ;
  wire \q_reg[9] ;
  wire \q_reg[9]_0 ;
  wire [2:0]queue_add;
  wire \queue_add[0]_i_1_n_0 ;
  wire \queue_add[1]_i_1_n_0 ;
  wire \queue_add[2]_i_1_n_0 ;
  wire \state_reg[1] ;

  LUT4 #(
    .INIT(16'h0002)) 
    \RAM[0][11]_i_1 
       (.I0(mem_we),
        .I1(queue_add[2]),
        .I2(queue_add[0]),
        .I3(queue_add[1]),
        .O(\RAM[0][11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \RAM[1][11]_i_1 
       (.I0(mem_we),
        .I1(queue_add[1]),
        .I2(queue_add[2]),
        .I3(queue_add[0]),
        .O(\RAM[1][11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \RAM[2][11]_i_1 
       (.I0(mem_we),
        .I1(queue_add[2]),
        .I2(queue_add[0]),
        .I3(queue_add[1]),
        .O(\RAM[2][11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \RAM[3][11]_i_1 
       (.I0(mem_we),
        .I1(queue_add[1]),
        .I2(queue_add[0]),
        .I3(queue_add[2]),
        .O(\RAM[3][11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \RAM[4][11]_i_1 
       (.I0(mem_we),
        .I1(queue_add[1]),
        .I2(queue_add[0]),
        .I3(queue_add[2]),
        .O(\RAM[4][11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \RAM[5][11]_i_1 
       (.I0(mem_we),
        .I1(queue_add[2]),
        .I2(queue_add[0]),
        .I3(queue_add[1]),
        .O(\RAM[5][11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \RAM[6][11]_i_1 
       (.I0(mem_we),
        .I1(queue_add[1]),
        .I2(queue_add[2]),
        .I3(queue_add[0]),
        .O(\RAM[6][11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \RAM[7][11]_i_1 
       (.I0(mem_we),
        .I1(queue_add[2]),
        .I2(queue_add[0]),
        .I3(queue_add[1]),
        .O(RAM));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[0][0] 
       (.C(CLK),
        .CE(\RAM[0][11]_i_1_n_0 ),
        .D(D[0]),
        .Q(\RAM_reg_n_0_[0][0] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[0][10] 
       (.C(CLK),
        .CE(\RAM[0][11]_i_1_n_0 ),
        .D(D[10]),
        .Q(\RAM_reg_n_0_[0][10] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[0][11] 
       (.C(CLK),
        .CE(\RAM[0][11]_i_1_n_0 ),
        .D(D[11]),
        .Q(\RAM_reg_n_0_[0][11] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[0][1] 
       (.C(CLK),
        .CE(\RAM[0][11]_i_1_n_0 ),
        .D(D[1]),
        .Q(\RAM_reg_n_0_[0][1] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[0][2] 
       (.C(CLK),
        .CE(\RAM[0][11]_i_1_n_0 ),
        .D(D[2]),
        .Q(\RAM_reg_n_0_[0][2] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[0][3] 
       (.C(CLK),
        .CE(\RAM[0][11]_i_1_n_0 ),
        .D(D[3]),
        .Q(\RAM_reg_n_0_[0][3] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[0][4] 
       (.C(CLK),
        .CE(\RAM[0][11]_i_1_n_0 ),
        .D(D[4]),
        .Q(\RAM_reg_n_0_[0][4] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[0][5] 
       (.C(CLK),
        .CE(\RAM[0][11]_i_1_n_0 ),
        .D(D[5]),
        .Q(\RAM_reg_n_0_[0][5] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[0][6] 
       (.C(CLK),
        .CE(\RAM[0][11]_i_1_n_0 ),
        .D(D[6]),
        .Q(\RAM_reg_n_0_[0][6] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[0][7] 
       (.C(CLK),
        .CE(\RAM[0][11]_i_1_n_0 ),
        .D(D[7]),
        .Q(\RAM_reg_n_0_[0][7] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[0][8] 
       (.C(CLK),
        .CE(\RAM[0][11]_i_1_n_0 ),
        .D(D[8]),
        .Q(\RAM_reg_n_0_[0][8] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[0][9] 
       (.C(CLK),
        .CE(\RAM[0][11]_i_1_n_0 ),
        .D(D[9]),
        .Q(\RAM_reg_n_0_[0][9] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[1][0] 
       (.C(CLK),
        .CE(\RAM[1][11]_i_1_n_0 ),
        .D(D[0]),
        .Q(\RAM_reg_n_0_[1][0] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[1][10] 
       (.C(CLK),
        .CE(\RAM[1][11]_i_1_n_0 ),
        .D(D[10]),
        .Q(\RAM_reg_n_0_[1][10] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[1][11] 
       (.C(CLK),
        .CE(\RAM[1][11]_i_1_n_0 ),
        .D(D[11]),
        .Q(\RAM_reg_n_0_[1][11] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[1][1] 
       (.C(CLK),
        .CE(\RAM[1][11]_i_1_n_0 ),
        .D(D[1]),
        .Q(\RAM_reg_n_0_[1][1] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[1][2] 
       (.C(CLK),
        .CE(\RAM[1][11]_i_1_n_0 ),
        .D(D[2]),
        .Q(\RAM_reg_n_0_[1][2] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[1][3] 
       (.C(CLK),
        .CE(\RAM[1][11]_i_1_n_0 ),
        .D(D[3]),
        .Q(\RAM_reg_n_0_[1][3] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[1][4] 
       (.C(CLK),
        .CE(\RAM[1][11]_i_1_n_0 ),
        .D(D[4]),
        .Q(\RAM_reg_n_0_[1][4] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[1][5] 
       (.C(CLK),
        .CE(\RAM[1][11]_i_1_n_0 ),
        .D(D[5]),
        .Q(\RAM_reg_n_0_[1][5] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[1][6] 
       (.C(CLK),
        .CE(\RAM[1][11]_i_1_n_0 ),
        .D(D[6]),
        .Q(\RAM_reg_n_0_[1][6] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[1][7] 
       (.C(CLK),
        .CE(\RAM[1][11]_i_1_n_0 ),
        .D(D[7]),
        .Q(\RAM_reg_n_0_[1][7] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[1][8] 
       (.C(CLK),
        .CE(\RAM[1][11]_i_1_n_0 ),
        .D(D[8]),
        .Q(\RAM_reg_n_0_[1][8] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[1][9] 
       (.C(CLK),
        .CE(\RAM[1][11]_i_1_n_0 ),
        .D(D[9]),
        .Q(\RAM_reg_n_0_[1][9] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[2][0] 
       (.C(CLK),
        .CE(\RAM[2][11]_i_1_n_0 ),
        .D(D[0]),
        .Q(\RAM_reg_n_0_[2][0] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[2][10] 
       (.C(CLK),
        .CE(\RAM[2][11]_i_1_n_0 ),
        .D(D[10]),
        .Q(\RAM_reg_n_0_[2][10] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[2][11] 
       (.C(CLK),
        .CE(\RAM[2][11]_i_1_n_0 ),
        .D(D[11]),
        .Q(\RAM_reg_n_0_[2][11] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[2][1] 
       (.C(CLK),
        .CE(\RAM[2][11]_i_1_n_0 ),
        .D(D[1]),
        .Q(\RAM_reg_n_0_[2][1] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[2][2] 
       (.C(CLK),
        .CE(\RAM[2][11]_i_1_n_0 ),
        .D(D[2]),
        .Q(\RAM_reg_n_0_[2][2] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[2][3] 
       (.C(CLK),
        .CE(\RAM[2][11]_i_1_n_0 ),
        .D(D[3]),
        .Q(\RAM_reg_n_0_[2][3] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[2][4] 
       (.C(CLK),
        .CE(\RAM[2][11]_i_1_n_0 ),
        .D(D[4]),
        .Q(\RAM_reg_n_0_[2][4] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[2][5] 
       (.C(CLK),
        .CE(\RAM[2][11]_i_1_n_0 ),
        .D(D[5]),
        .Q(\RAM_reg_n_0_[2][5] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[2][6] 
       (.C(CLK),
        .CE(\RAM[2][11]_i_1_n_0 ),
        .D(D[6]),
        .Q(\RAM_reg_n_0_[2][6] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[2][7] 
       (.C(CLK),
        .CE(\RAM[2][11]_i_1_n_0 ),
        .D(D[7]),
        .Q(\RAM_reg_n_0_[2][7] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[2][8] 
       (.C(CLK),
        .CE(\RAM[2][11]_i_1_n_0 ),
        .D(D[8]),
        .Q(\RAM_reg_n_0_[2][8] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[2][9] 
       (.C(CLK),
        .CE(\RAM[2][11]_i_1_n_0 ),
        .D(D[9]),
        .Q(\RAM_reg_n_0_[2][9] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[3][0] 
       (.C(CLK),
        .CE(\RAM[3][11]_i_1_n_0 ),
        .D(D[0]),
        .Q(\RAM_reg_n_0_[3][0] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[3][10] 
       (.C(CLK),
        .CE(\RAM[3][11]_i_1_n_0 ),
        .D(D[10]),
        .Q(\RAM_reg_n_0_[3][10] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[3][11] 
       (.C(CLK),
        .CE(\RAM[3][11]_i_1_n_0 ),
        .D(D[11]),
        .Q(\RAM_reg_n_0_[3][11] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[3][1] 
       (.C(CLK),
        .CE(\RAM[3][11]_i_1_n_0 ),
        .D(D[1]),
        .Q(\RAM_reg_n_0_[3][1] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[3][2] 
       (.C(CLK),
        .CE(\RAM[3][11]_i_1_n_0 ),
        .D(D[2]),
        .Q(\RAM_reg_n_0_[3][2] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[3][3] 
       (.C(CLK),
        .CE(\RAM[3][11]_i_1_n_0 ),
        .D(D[3]),
        .Q(\RAM_reg_n_0_[3][3] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[3][4] 
       (.C(CLK),
        .CE(\RAM[3][11]_i_1_n_0 ),
        .D(D[4]),
        .Q(\RAM_reg_n_0_[3][4] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[3][5] 
       (.C(CLK),
        .CE(\RAM[3][11]_i_1_n_0 ),
        .D(D[5]),
        .Q(\RAM_reg_n_0_[3][5] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[3][6] 
       (.C(CLK),
        .CE(\RAM[3][11]_i_1_n_0 ),
        .D(D[6]),
        .Q(\RAM_reg_n_0_[3][6] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[3][7] 
       (.C(CLK),
        .CE(\RAM[3][11]_i_1_n_0 ),
        .D(D[7]),
        .Q(\RAM_reg_n_0_[3][7] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[3][8] 
       (.C(CLK),
        .CE(\RAM[3][11]_i_1_n_0 ),
        .D(D[8]),
        .Q(\RAM_reg_n_0_[3][8] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[3][9] 
       (.C(CLK),
        .CE(\RAM[3][11]_i_1_n_0 ),
        .D(D[9]),
        .Q(\RAM_reg_n_0_[3][9] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[4][0] 
       (.C(CLK),
        .CE(\RAM[4][11]_i_1_n_0 ),
        .D(D[0]),
        .Q(\RAM_reg_n_0_[4][0] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[4][10] 
       (.C(CLK),
        .CE(\RAM[4][11]_i_1_n_0 ),
        .D(D[10]),
        .Q(\RAM_reg_n_0_[4][10] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[4][11] 
       (.C(CLK),
        .CE(\RAM[4][11]_i_1_n_0 ),
        .D(D[11]),
        .Q(\RAM_reg_n_0_[4][11] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[4][1] 
       (.C(CLK),
        .CE(\RAM[4][11]_i_1_n_0 ),
        .D(D[1]),
        .Q(\RAM_reg_n_0_[4][1] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[4][2] 
       (.C(CLK),
        .CE(\RAM[4][11]_i_1_n_0 ),
        .D(D[2]),
        .Q(\RAM_reg_n_0_[4][2] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[4][3] 
       (.C(CLK),
        .CE(\RAM[4][11]_i_1_n_0 ),
        .D(D[3]),
        .Q(\RAM_reg_n_0_[4][3] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[4][4] 
       (.C(CLK),
        .CE(\RAM[4][11]_i_1_n_0 ),
        .D(D[4]),
        .Q(\RAM_reg_n_0_[4][4] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[4][5] 
       (.C(CLK),
        .CE(\RAM[4][11]_i_1_n_0 ),
        .D(D[5]),
        .Q(\RAM_reg_n_0_[4][5] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[4][6] 
       (.C(CLK),
        .CE(\RAM[4][11]_i_1_n_0 ),
        .D(D[6]),
        .Q(\RAM_reg_n_0_[4][6] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[4][7] 
       (.C(CLK),
        .CE(\RAM[4][11]_i_1_n_0 ),
        .D(D[7]),
        .Q(\RAM_reg_n_0_[4][7] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[4][8] 
       (.C(CLK),
        .CE(\RAM[4][11]_i_1_n_0 ),
        .D(D[8]),
        .Q(\RAM_reg_n_0_[4][8] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[4][9] 
       (.C(CLK),
        .CE(\RAM[4][11]_i_1_n_0 ),
        .D(D[9]),
        .Q(\RAM_reg_n_0_[4][9] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[5][0] 
       (.C(CLK),
        .CE(\RAM[5][11]_i_1_n_0 ),
        .D(D[0]),
        .Q(\RAM_reg_n_0_[5][0] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[5][10] 
       (.C(CLK),
        .CE(\RAM[5][11]_i_1_n_0 ),
        .D(D[10]),
        .Q(\RAM_reg_n_0_[5][10] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[5][11] 
       (.C(CLK),
        .CE(\RAM[5][11]_i_1_n_0 ),
        .D(D[11]),
        .Q(\RAM_reg_n_0_[5][11] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[5][1] 
       (.C(CLK),
        .CE(\RAM[5][11]_i_1_n_0 ),
        .D(D[1]),
        .Q(\RAM_reg_n_0_[5][1] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[5][2] 
       (.C(CLK),
        .CE(\RAM[5][11]_i_1_n_0 ),
        .D(D[2]),
        .Q(\RAM_reg_n_0_[5][2] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[5][3] 
       (.C(CLK),
        .CE(\RAM[5][11]_i_1_n_0 ),
        .D(D[3]),
        .Q(\RAM_reg_n_0_[5][3] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[5][4] 
       (.C(CLK),
        .CE(\RAM[5][11]_i_1_n_0 ),
        .D(D[4]),
        .Q(\RAM_reg_n_0_[5][4] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[5][5] 
       (.C(CLK),
        .CE(\RAM[5][11]_i_1_n_0 ),
        .D(D[5]),
        .Q(\RAM_reg_n_0_[5][5] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[5][6] 
       (.C(CLK),
        .CE(\RAM[5][11]_i_1_n_0 ),
        .D(D[6]),
        .Q(\RAM_reg_n_0_[5][6] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[5][7] 
       (.C(CLK),
        .CE(\RAM[5][11]_i_1_n_0 ),
        .D(D[7]),
        .Q(\RAM_reg_n_0_[5][7] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[5][8] 
       (.C(CLK),
        .CE(\RAM[5][11]_i_1_n_0 ),
        .D(D[8]),
        .Q(\RAM_reg_n_0_[5][8] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[5][9] 
       (.C(CLK),
        .CE(\RAM[5][11]_i_1_n_0 ),
        .D(D[9]),
        .Q(\RAM_reg_n_0_[5][9] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[6][0] 
       (.C(CLK),
        .CE(\RAM[6][11]_i_1_n_0 ),
        .D(D[0]),
        .Q(\RAM_reg_n_0_[6][0] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[6][10] 
       (.C(CLK),
        .CE(\RAM[6][11]_i_1_n_0 ),
        .D(D[10]),
        .Q(\RAM_reg_n_0_[6][10] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[6][11] 
       (.C(CLK),
        .CE(\RAM[6][11]_i_1_n_0 ),
        .D(D[11]),
        .Q(\RAM_reg_n_0_[6][11] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[6][1] 
       (.C(CLK),
        .CE(\RAM[6][11]_i_1_n_0 ),
        .D(D[1]),
        .Q(\RAM_reg_n_0_[6][1] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[6][2] 
       (.C(CLK),
        .CE(\RAM[6][11]_i_1_n_0 ),
        .D(D[2]),
        .Q(\RAM_reg_n_0_[6][2] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[6][3] 
       (.C(CLK),
        .CE(\RAM[6][11]_i_1_n_0 ),
        .D(D[3]),
        .Q(\RAM_reg_n_0_[6][3] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[6][4] 
       (.C(CLK),
        .CE(\RAM[6][11]_i_1_n_0 ),
        .D(D[4]),
        .Q(\RAM_reg_n_0_[6][4] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[6][5] 
       (.C(CLK),
        .CE(\RAM[6][11]_i_1_n_0 ),
        .D(D[5]),
        .Q(\RAM_reg_n_0_[6][5] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[6][6] 
       (.C(CLK),
        .CE(\RAM[6][11]_i_1_n_0 ),
        .D(D[6]),
        .Q(\RAM_reg_n_0_[6][6] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[6][7] 
       (.C(CLK),
        .CE(\RAM[6][11]_i_1_n_0 ),
        .D(D[7]),
        .Q(\RAM_reg_n_0_[6][7] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[6][8] 
       (.C(CLK),
        .CE(\RAM[6][11]_i_1_n_0 ),
        .D(D[8]),
        .Q(\RAM_reg_n_0_[6][8] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[6][9] 
       (.C(CLK),
        .CE(\RAM[6][11]_i_1_n_0 ),
        .D(D[9]),
        .Q(\RAM_reg_n_0_[6][9] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[7][0] 
       (.C(CLK),
        .CE(RAM),
        .D(D[0]),
        .Q(\RAM_reg_n_0_[7][0] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[7][10] 
       (.C(CLK),
        .CE(RAM),
        .D(D[10]),
        .Q(\RAM_reg_n_0_[7][10] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[7][11] 
       (.C(CLK),
        .CE(RAM),
        .D(D[11]),
        .Q(\RAM_reg_n_0_[7][11] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[7][1] 
       (.C(CLK),
        .CE(RAM),
        .D(D[1]),
        .Q(\RAM_reg_n_0_[7][1] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[7][2] 
       (.C(CLK),
        .CE(RAM),
        .D(D[2]),
        .Q(\RAM_reg_n_0_[7][2] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[7][3] 
       (.C(CLK),
        .CE(RAM),
        .D(D[3]),
        .Q(\RAM_reg_n_0_[7][3] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[7][4] 
       (.C(CLK),
        .CE(RAM),
        .D(D[4]),
        .Q(\RAM_reg_n_0_[7][4] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[7][5] 
       (.C(CLK),
        .CE(RAM),
        .D(D[5]),
        .Q(\RAM_reg_n_0_[7][5] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[7][6] 
       (.C(CLK),
        .CE(RAM),
        .D(D[6]),
        .Q(\RAM_reg_n_0_[7][6] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[7][7] 
       (.C(CLK),
        .CE(RAM),
        .D(D[7]),
        .Q(\RAM_reg_n_0_[7][7] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[7][8] 
       (.C(CLK),
        .CE(RAM),
        .D(D[8]),
        .Q(\RAM_reg_n_0_[7][8] ),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[7][9] 
       (.C(CLK),
        .CE(RAM),
        .D(D[9]),
        .Q(\RAM_reg_n_0_[7][9] ),
        .R(\state_reg[1] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[0]_i_2 
       (.I0(\RAM_reg_n_0_[7][0] ),
        .I1(\RAM_reg_n_0_[6][0] ),
        .I2(\q_reg[1]_1 [1]),
        .I3(\RAM_reg_n_0_[5][0] ),
        .I4(\q_reg[1]_1 [0]),
        .I5(\RAM_reg_n_0_[4][0] ),
        .O(\q_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[0]_i_3 
       (.I0(\RAM_reg_n_0_[3][0] ),
        .I1(\RAM_reg_n_0_[2][0] ),
        .I2(\q_reg[1]_1 [1]),
        .I3(\RAM_reg_n_0_[1][0] ),
        .I4(\q_reg[1]_1 [0]),
        .I5(\RAM_reg_n_0_[0][0] ),
        .O(\q_reg[0] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[10]_i_2 
       (.I0(\RAM_reg_n_0_[7][10] ),
        .I1(\RAM_reg_n_0_[6][10] ),
        .I2(\q_reg[1]_1 [1]),
        .I3(\RAM_reg_n_0_[5][10] ),
        .I4(\q_reg[1]_1 [0]),
        .I5(\RAM_reg_n_0_[4][10] ),
        .O(\q_reg[10]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[10]_i_3 
       (.I0(\RAM_reg_n_0_[3][10] ),
        .I1(\RAM_reg_n_0_[2][10] ),
        .I2(\q_reg[1]_1 [1]),
        .I3(\RAM_reg_n_0_[1][10] ),
        .I4(\q_reg[1]_1 [0]),
        .I5(\RAM_reg_n_0_[0][10] ),
        .O(\q_reg[10] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[11]_i_3 
       (.I0(\RAM_reg_n_0_[7][11] ),
        .I1(\RAM_reg_n_0_[6][11] ),
        .I2(\q_reg[1]_1 [1]),
        .I3(\RAM_reg_n_0_[5][11] ),
        .I4(\q_reg[1]_1 [0]),
        .I5(\RAM_reg_n_0_[4][11] ),
        .O(\q_reg[11]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[11]_i_4 
       (.I0(\RAM_reg_n_0_[3][11] ),
        .I1(\RAM_reg_n_0_[2][11] ),
        .I2(\q_reg[1]_1 [1]),
        .I3(\RAM_reg_n_0_[1][11] ),
        .I4(\q_reg[1]_1 [0]),
        .I5(\RAM_reg_n_0_[0][11] ),
        .O(\q_reg[11] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[1]_i_2 
       (.I0(\RAM_reg_n_0_[7][1] ),
        .I1(\RAM_reg_n_0_[6][1] ),
        .I2(\q_reg[1]_1 [1]),
        .I3(\RAM_reg_n_0_[5][1] ),
        .I4(\q_reg[1]_1 [0]),
        .I5(\RAM_reg_n_0_[4][1] ),
        .O(\q_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[1]_i_3 
       (.I0(\RAM_reg_n_0_[3][1] ),
        .I1(\RAM_reg_n_0_[2][1] ),
        .I2(\q_reg[1]_1 [1]),
        .I3(\RAM_reg_n_0_[1][1] ),
        .I4(\q_reg[1]_1 [0]),
        .I5(\RAM_reg_n_0_[0][1] ),
        .O(\q_reg[1] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[2]_i_2 
       (.I0(\RAM_reg_n_0_[7][2] ),
        .I1(\RAM_reg_n_0_[6][2] ),
        .I2(\q_reg[1]_1 [1]),
        .I3(\RAM_reg_n_0_[5][2] ),
        .I4(\q_reg[1]_1 [0]),
        .I5(\RAM_reg_n_0_[4][2] ),
        .O(\q_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[2]_i_3 
       (.I0(\RAM_reg_n_0_[3][2] ),
        .I1(\RAM_reg_n_0_[2][2] ),
        .I2(\q_reg[1]_1 [1]),
        .I3(\RAM_reg_n_0_[1][2] ),
        .I4(\q_reg[1]_1 [0]),
        .I5(\RAM_reg_n_0_[0][2] ),
        .O(\q_reg[2] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[3]_i_2 
       (.I0(\RAM_reg_n_0_[7][3] ),
        .I1(\RAM_reg_n_0_[6][3] ),
        .I2(\q_reg[1]_1 [1]),
        .I3(\RAM_reg_n_0_[5][3] ),
        .I4(\q_reg[1]_1 [0]),
        .I5(\RAM_reg_n_0_[4][3] ),
        .O(\q_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[3]_i_3 
       (.I0(\RAM_reg_n_0_[3][3] ),
        .I1(\RAM_reg_n_0_[2][3] ),
        .I2(\q_reg[1]_1 [1]),
        .I3(\RAM_reg_n_0_[1][3] ),
        .I4(\q_reg[1]_1 [0]),
        .I5(\RAM_reg_n_0_[0][3] ),
        .O(\q_reg[3] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[4]_i_2 
       (.I0(\RAM_reg_n_0_[7][4] ),
        .I1(\RAM_reg_n_0_[6][4] ),
        .I2(\q_reg[1]_1 [1]),
        .I3(\RAM_reg_n_0_[5][4] ),
        .I4(\q_reg[1]_1 [0]),
        .I5(\RAM_reg_n_0_[4][4] ),
        .O(\q_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[4]_i_3 
       (.I0(\RAM_reg_n_0_[3][4] ),
        .I1(\RAM_reg_n_0_[2][4] ),
        .I2(\q_reg[1]_1 [1]),
        .I3(\RAM_reg_n_0_[1][4] ),
        .I4(\q_reg[1]_1 [0]),
        .I5(\RAM_reg_n_0_[0][4] ),
        .O(\q_reg[4] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[5]_i_2 
       (.I0(\RAM_reg_n_0_[7][5] ),
        .I1(\RAM_reg_n_0_[6][5] ),
        .I2(\q_reg[1]_1 [1]),
        .I3(\RAM_reg_n_0_[5][5] ),
        .I4(\q_reg[1]_1 [0]),
        .I5(\RAM_reg_n_0_[4][5] ),
        .O(\q_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[5]_i_3 
       (.I0(\RAM_reg_n_0_[3][5] ),
        .I1(\RAM_reg_n_0_[2][5] ),
        .I2(\q_reg[1]_1 [1]),
        .I3(\RAM_reg_n_0_[1][5] ),
        .I4(\q_reg[1]_1 [0]),
        .I5(\RAM_reg_n_0_[0][5] ),
        .O(\q_reg[5] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[6]_i_2 
       (.I0(\RAM_reg_n_0_[7][6] ),
        .I1(\RAM_reg_n_0_[6][6] ),
        .I2(\q_reg[1]_1 [1]),
        .I3(\RAM_reg_n_0_[5][6] ),
        .I4(\q_reg[1]_1 [0]),
        .I5(\RAM_reg_n_0_[4][6] ),
        .O(\q_reg[6]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[6]_i_3 
       (.I0(\RAM_reg_n_0_[3][6] ),
        .I1(\RAM_reg_n_0_[2][6] ),
        .I2(\q_reg[1]_1 [1]),
        .I3(\RAM_reg_n_0_[1][6] ),
        .I4(\q_reg[1]_1 [0]),
        .I5(\RAM_reg_n_0_[0][6] ),
        .O(\q_reg[6] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[7]_i_2 
       (.I0(\RAM_reg_n_0_[7][7] ),
        .I1(\RAM_reg_n_0_[6][7] ),
        .I2(\q_reg[1]_1 [1]),
        .I3(\RAM_reg_n_0_[5][7] ),
        .I4(\q_reg[1]_1 [0]),
        .I5(\RAM_reg_n_0_[4][7] ),
        .O(\q_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[7]_i_3 
       (.I0(\RAM_reg_n_0_[3][7] ),
        .I1(\RAM_reg_n_0_[2][7] ),
        .I2(\q_reg[1]_1 [1]),
        .I3(\RAM_reg_n_0_[1][7] ),
        .I4(\q_reg[1]_1 [0]),
        .I5(\RAM_reg_n_0_[0][7] ),
        .O(\q_reg[7] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[8]_i_2 
       (.I0(\RAM_reg_n_0_[7][8] ),
        .I1(\RAM_reg_n_0_[6][8] ),
        .I2(\q_reg[1]_1 [1]),
        .I3(\RAM_reg_n_0_[5][8] ),
        .I4(\q_reg[1]_1 [0]),
        .I5(\RAM_reg_n_0_[4][8] ),
        .O(\q_reg[8] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[8]_i_3 
       (.I0(\RAM_reg_n_0_[3][8] ),
        .I1(\RAM_reg_n_0_[2][8] ),
        .I2(\q_reg[1]_1 [1]),
        .I3(\RAM_reg_n_0_[1][8] ),
        .I4(\q_reg[1]_1 [0]),
        .I5(\RAM_reg_n_0_[0][8] ),
        .O(\q_reg[8]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[9]_i_2 
       (.I0(\RAM_reg_n_0_[7][9] ),
        .I1(\RAM_reg_n_0_[6][9] ),
        .I2(\q_reg[1]_1 [1]),
        .I3(\RAM_reg_n_0_[5][9] ),
        .I4(\q_reg[1]_1 [0]),
        .I5(\RAM_reg_n_0_[4][9] ),
        .O(\q_reg[9] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[9]_i_3 
       (.I0(\RAM_reg_n_0_[3][9] ),
        .I1(\RAM_reg_n_0_[2][9] ),
        .I2(\q_reg[1]_1 [1]),
        .I3(\RAM_reg_n_0_[1][9] ),
        .I4(\q_reg[1]_1 [0]),
        .I5(\RAM_reg_n_0_[0][9] ),
        .O(\q_reg[9]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \queue_add[0]_i_1 
       (.I0(mem_we),
        .I1(queue_add[0]),
        .O(\queue_add[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \queue_add[1]_i_1 
       (.I0(queue_add[0]),
        .I1(mem_we),
        .I2(queue_add[1]),
        .O(\queue_add[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \queue_add[2]_i_1 
       (.I0(queue_add[0]),
        .I1(queue_add[1]),
        .I2(mem_we),
        .I3(queue_add[2]),
        .O(\queue_add[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \queue_add_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\queue_add[0]_i_1_n_0 ),
        .Q(queue_add[0]),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \queue_add_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\queue_add[1]_i_1_n_0 ),
        .Q(queue_add[1]),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \queue_add_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\queue_add[2]_i_1_n_0 ),
        .Q(queue_add[2]),
        .R(\state_reg[1] ));
endmodule

module processor
   (\state_reg[1] ,
    seg_OBUF,
    Q,
    sw_IBUF,
    q_reg,
    q_reg_0,
    q_reg_1,
    q_reg_2,
    \select_reg[0] ,
    \select_reg[1] ,
    CLK);
  output \state_reg[1] ;
  output [6:0]seg_OBUF;
  output [12:0]Q;
  input [15:0]sw_IBUF;
  input q_reg;
  input q_reg_0;
  input q_reg_1;
  input q_reg_2;
  input \select_reg[0] ;
  input \select_reg[1] ;
  input CLK;

  wire CLK;
  wire [12:0]Q;
  wire controller_n_1;
  wire controller_n_2;
  wire controller_n_34;
  wire controller_n_35;
  wire controller_n_36;
  wire controller_n_37;
  wire controller_n_38;
  wire controller_n_39;
  wire controller_n_4;
  wire controller_n_40;
  wire controller_n_41;
  wire controller_n_42;
  wire controller_n_43;
  wire controller_n_44;
  wire controller_n_45;
  wire controller_n_46;
  wire controller_n_47;
  wire controller_n_48;
  wire controller_n_49;
  wire controller_n_5;
  wire controller_n_50;
  wire controller_n_51;
  wire controller_n_52;
  wire controller_n_53;
  wire controller_n_54;
  wire controller_n_55;
  wire controller_n_56;
  wire controller_n_57;
  wire controller_n_58;
  wire controller_n_59;
  wire controller_n_60;
  wire controller_n_61;
  wire controller_n_62;
  wire controller_n_63;
  wire controller_n_64;
  wire controller_n_65;
  wire controller_n_66;
  wire controller_n_67;
  wire controller_n_68;
  wire controller_n_69;
  wire controller_n_70;
  wire controller_n_71;
  wire controller_n_72;
  wire dp_n_0;
  wire dp_n_1;
  wire dp_n_10;
  wire dp_n_11;
  wire dp_n_12;
  wire dp_n_17;
  wire dp_n_18;
  wire dp_n_19;
  wire dp_n_2;
  wire dp_n_20;
  wire dp_n_21;
  wire dp_n_22;
  wire dp_n_23;
  wire dp_n_24;
  wire dp_n_25;
  wire dp_n_26;
  wire dp_n_27;
  wire dp_n_28;
  wire dp_n_29;
  wire dp_n_3;
  wire dp_n_30;
  wire dp_n_31;
  wire dp_n_32;
  wire dp_n_33;
  wire dp_n_34;
  wire dp_n_35;
  wire dp_n_8;
  wire dp_n_9;
  wire [2:0]dp_reg_ra1;
  wire [2:0]dp_reg_ra2;
  wire [3:0]dp_reg_rd1;
  wire [3:0]dp_reg_rd2;
  wire [3:3]\fsm/state ;
  wire q_reg;
  wire q_reg_0;
  wire q_reg_1;
  wire q_reg_2;
  wire reset;
  wire \rf/RAM ;
  wire [6:0]seg_OBUF;
  wire \select_reg[0] ;
  wire \select_reg[1] ;
  wire \state_reg[1] ;
  wire [15:0]sw_IBUF;

  control_unit controller
       (.CLK(CLK),
        .D({dp_n_31,dp_n_32,dp_n_33,dp_n_34}),
        .DI({dp_n_21,dp_n_22}),
        .E(\rf/RAM ),
        .O({controller_n_1,controller_n_2}),
        .Q(\fsm/state ),
        .\RAM_reg[0][0] (controller_n_40),
        .\RAM_reg[0][3] ({controller_n_45,controller_n_46,controller_n_47,controller_n_48}),
        .\RAM_reg[1][0] (controller_n_39),
        .\RAM_reg[1][3] ({controller_n_49,controller_n_50,controller_n_51,controller_n_52}),
        .\RAM_reg[2][0] (controller_n_38),
        .\RAM_reg[2][3] ({controller_n_41,controller_n_42,controller_n_43,controller_n_44}),
        .\RAM_reg[3][0] (controller_n_37),
        .\RAM_reg[3][0]_0 (dp_n_27),
        .\RAM_reg[3][0]_1 (dp_n_9),
        .\RAM_reg[3][0]_2 (dp_n_20),
        .\RAM_reg[3][1] (dp_n_8),
        .\RAM_reg[3][1]_0 (dp_n_30),
        .\RAM_reg[3][1]_1 (dp_n_19),
        .\RAM_reg[3][1]_2 (dp_n_10),
        .\RAM_reg[3][2] (dp_n_35),
        .\RAM_reg[3][2]_0 ({dp_n_0,dp_n_1,dp_n_2,dp_n_3}),
        .\RAM_reg[3][3] ({controller_n_53,controller_n_54,controller_n_55,controller_n_56}),
        .\RAM_reg[3][3]_0 (dp_n_29),
        .\RAM_reg[3][3]_1 (dp_n_28),
        .\RAM_reg[4][0] (controller_n_36),
        .\RAM_reg[4][3] ({controller_n_57,controller_n_58,controller_n_59,controller_n_60}),
        .\RAM_reg[5][0] (controller_n_35),
        .\RAM_reg[5][3] ({controller_n_65,controller_n_66,controller_n_67,controller_n_68}),
        .\RAM_reg[6][0] (controller_n_4),
        .\RAM_reg[6][0]_0 (controller_n_34),
        .\RAM_reg[6][1] (dp_reg_ra1),
        .\RAM_reg[6][2] (dp_reg_ra2),
        .\RAM_reg[6][3] (controller_n_5),
        .\RAM_reg[6][3]_0 ({controller_n_69,controller_n_70,controller_n_71,controller_n_72}),
        .\RAM_reg[7][2] (dp_n_11),
        .\RAM_reg[7][2]_0 (dp_n_17),
        .\RAM_reg[7][3] ({controller_n_61,controller_n_62,controller_n_63,controller_n_64}),
        .S({dp_n_23,dp_n_24,dp_n_25,dp_n_26}),
        .SR(reset),
        .\activeState[12] (Q),
        .dp_reg_rd1(dp_reg_rd1),
        .dp_reg_rd2(dp_reg_rd2),
        .q_reg(q_reg),
        .q_reg_0(q_reg_0),
        .q_reg_1(q_reg_1),
        .q_reg_2(q_reg_2),
        .seg_OBUF(seg_OBUF),
        .\select_reg[0] (\select_reg[0] ),
        .\select_reg[1] (\select_reg[1] ),
        .\state_reg[1] (\state_reg[1] ),
        .\state_reg[1]_0 (dp_n_12),
        .\state_reg[1]_1 (dp_n_18),
        .sw_IBUF(sw_IBUF));
  datapath dp
       (.CLK(CLK),
        .D({dp_n_31,dp_n_32,dp_n_33,dp_n_34}),
        .DI({dp_n_21,dp_n_22}),
        .E(\rf/RAM ),
        .O({controller_n_1,controller_n_2}),
        .Q(\fsm/state ),
        .\RAM_reg[6][0] (dp_n_27),
        .\RAM_reg[6][1] (dp_n_8),
        .\RAM_reg[6][1]_0 (dp_n_9),
        .\RAM_reg[6][1]_1 (dp_n_10),
        .\RAM_reg[6][1]_2 (dp_n_12),
        .\RAM_reg[6][2] (dp_n_17),
        .\RAM_reg[6][2]_0 (dp_n_18),
        .\RAM_reg[6][2]_1 (dp_n_19),
        .\RAM_reg[6][2]_2 (dp_n_20),
        .\RAM_reg[6][3] (dp_n_11),
        .\RAM_reg[6][3]_0 (dp_n_28),
        .\RAM_reg[6][3]_1 (dp_n_29),
        .\RAM_reg[6][3]_2 (dp_n_35),
        .S({dp_n_23,dp_n_24,dp_n_25,dp_n_26}),
        .SR(reset),
        .dp_reg_rd1(dp_reg_rd1),
        .dp_reg_rd2(dp_reg_rd2),
        .\seg[1] ({dp_n_0,dp_n_1,dp_n_2,dp_n_3}),
        .\seg[2] (dp_n_30),
        .\state_reg[1] (controller_n_5),
        .\state_reg[2] (controller_n_4),
        .\state_reg[2]_0 (controller_n_34),
        .\state_reg[2]_1 (controller_n_35),
        .\state_reg[2]_2 (controller_n_36),
        .\state_reg[2]_3 (controller_n_37),
        .\state_reg[2]_4 (controller_n_38),
        .\state_reg[2]_5 (controller_n_39),
        .\state_reg[2]_6 (controller_n_40),
        .\state_reg[3] (dp_reg_ra2),
        .\state_reg[3]_0 (dp_reg_ra1),
        .\state_reg[3]_1 ({controller_n_61,controller_n_62,controller_n_63,controller_n_64}),
        .\state_reg[3]_2 ({controller_n_69,controller_n_70,controller_n_71,controller_n_72}),
        .\state_reg[3]_3 ({controller_n_65,controller_n_66,controller_n_67,controller_n_68}),
        .\state_reg[3]_4 ({controller_n_57,controller_n_58,controller_n_59,controller_n_60}),
        .\state_reg[3]_5 ({controller_n_53,controller_n_54,controller_n_55,controller_n_56}),
        .\state_reg[3]_6 ({controller_n_41,controller_n_42,controller_n_43,controller_n_44}),
        .\state_reg[3]_7 ({controller_n_49,controller_n_50,controller_n_51,controller_n_52}),
        .\state_reg[3]_8 ({controller_n_45,controller_n_46,controller_n_47,controller_n_48}));
endmodule

module program_counter
   (\q_reg[2]_0 ,
    isexternal,
    load,
    \state_reg[1] ,
    CLK);
  output [2:0]\q_reg[2]_0 ;
  input isexternal;
  input load;
  input \state_reg[1] ;
  input CLK;

  wire CLK;
  wire isexternal;
  wire load;
  wire \q[0]_i_1_n_0 ;
  wire \q[1]_i_1_n_0 ;
  wire \q[2]_i_1_n_0 ;
  wire [2:0]\q_reg[2]_0 ;
  wire \state_reg[1] ;

  LUT3 #(
    .INIT(8'hE1)) 
    \q[0]_i_1 
       (.I0(load),
        .I1(isexternal),
        .I2(\q_reg[2]_0 [0]),
        .O(\q[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hFD02)) 
    \q[1]_i_1 
       (.I0(\q_reg[2]_0 [0]),
        .I1(isexternal),
        .I2(load),
        .I3(\q_reg[2]_0 [1]),
        .O(\q[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'hFFF70008)) 
    \q[2]_i_1 
       (.I0(\q_reg[2]_0 [0]),
        .I1(\q_reg[2]_0 [1]),
        .I2(isexternal),
        .I3(load),
        .I4(\q_reg[2]_0 [2]),
        .O(\q[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\q[0]_i_1_n_0 ),
        .Q(\q_reg[2]_0 [0]),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\q[1]_i_1_n_0 ),
        .Q(\q_reg[2]_0 [1]),
        .R(\state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\q[2]_i_1_n_0 ),
        .Q(\q_reg[2]_0 [2]),
        .R(\state_reg[1] ));
endmodule

module reg_file
   (\seg[1] ,
    \RAM_reg[6][1]_0 ,
    \RAM_reg[6][1]_1 ,
    \RAM_reg[6][1]_2 ,
    \RAM_reg[6][1]_3 ,
    \RAM_reg[6][3]_0 ,
    \RAM_reg[6][1]_4 ,
    \RAM_reg[6][2]_0 ,
    \RAM_reg[6][3]_1 ,
    \RAM_reg[6][2]_1 ,
    \RAM_reg[6][2]_2 ,
    \RAM_reg[6][2]_3 ,
    \RAM_reg[6][2]_4 ,
    DI,
    S,
    \RAM_reg[6][0]_0 ,
    \RAM_reg[6][3]_2 ,
    \RAM_reg[6][3]_3 ,
    \seg[2] ,
    dp_reg_rd1,
    dp_reg_rd2,
    D,
    \RAM_reg[6][3]_4 ,
    O,
    \state_reg[1] ,
    \state_reg[2] ,
    \state_reg[3] ,
    \state_reg[3]_0 ,
    Q,
    SR,
    E,
    \state_reg[3]_1 ,
    CLK,
    \state_reg[2]_0 ,
    \state_reg[3]_2 ,
    \state_reg[2]_1 ,
    \state_reg[3]_3 ,
    \state_reg[2]_2 ,
    \state_reg[3]_4 ,
    \state_reg[2]_3 ,
    \state_reg[3]_5 ,
    \state_reg[2]_4 ,
    \state_reg[3]_6 ,
    \state_reg[2]_5 ,
    \state_reg[3]_7 ,
    \state_reg[2]_6 ,
    \state_reg[3]_8 );
  output [3:0]\seg[1] ;
  output \RAM_reg[6][1]_0 ;
  output \RAM_reg[6][1]_1 ;
  output \RAM_reg[6][1]_2 ;
  output \RAM_reg[6][1]_3 ;
  output \RAM_reg[6][3]_0 ;
  output \RAM_reg[6][1]_4 ;
  output \RAM_reg[6][2]_0 ;
  output \RAM_reg[6][3]_1 ;
  output \RAM_reg[6][2]_1 ;
  output \RAM_reg[6][2]_2 ;
  output \RAM_reg[6][2]_3 ;
  output \RAM_reg[6][2]_4 ;
  output [1:0]DI;
  output [3:0]S;
  output \RAM_reg[6][0]_0 ;
  output \RAM_reg[6][3]_2 ;
  output \RAM_reg[6][3]_3 ;
  output \seg[2] ;
  output [1:0]dp_reg_rd1;
  output [2:0]dp_reg_rd2;
  output [3:0]D;
  output \RAM_reg[6][3]_4 ;
  input [1:0]O;
  input \state_reg[1] ;
  input \state_reg[2] ;
  input [2:0]\state_reg[3] ;
  input [2:0]\state_reg[3]_0 ;
  input [0:0]Q;
  input [0:0]SR;
  input [0:0]E;
  input [3:0]\state_reg[3]_1 ;
  input CLK;
  input [0:0]\state_reg[2]_0 ;
  input [3:0]\state_reg[3]_2 ;
  input [0:0]\state_reg[2]_1 ;
  input [3:0]\state_reg[3]_3 ;
  input [0:0]\state_reg[2]_2 ;
  input [3:0]\state_reg[3]_4 ;
  input [0:0]\state_reg[2]_3 ;
  input [3:0]\state_reg[3]_5 ;
  input [0:0]\state_reg[2]_4 ;
  input [3:0]\state_reg[3]_6 ;
  input [0:0]\state_reg[2]_5 ;
  input [3:0]\state_reg[3]_7 ;
  input [0:0]\state_reg[2]_6 ;
  input [3:0]\state_reg[3]_8 ;

  wire CLK;
  wire [3:0]D;
  wire [1:0]DI;
  wire [0:0]E;
  wire [1:0]O;
  wire [0:0]Q;
  wire \RAM_reg[6][0]_0 ;
  wire \RAM_reg[6][1]_0 ;
  wire \RAM_reg[6][1]_1 ;
  wire \RAM_reg[6][1]_2 ;
  wire \RAM_reg[6][1]_3 ;
  wire \RAM_reg[6][1]_4 ;
  wire \RAM_reg[6][2]_0 ;
  wire \RAM_reg[6][2]_1 ;
  wire \RAM_reg[6][2]_2 ;
  wire \RAM_reg[6][2]_3 ;
  wire \RAM_reg[6][2]_4 ;
  wire \RAM_reg[6][3]_0 ;
  wire \RAM_reg[6][3]_1 ;
  wire \RAM_reg[6][3]_2 ;
  wire \RAM_reg[6][3]_3 ;
  wire \RAM_reg[6][3]_4 ;
  wire \RAM_reg_n_0_[0][0] ;
  wire \RAM_reg_n_0_[0][1] ;
  wire \RAM_reg_n_0_[0][2] ;
  wire \RAM_reg_n_0_[0][3] ;
  wire \RAM_reg_n_0_[1][0] ;
  wire \RAM_reg_n_0_[1][1] ;
  wire \RAM_reg_n_0_[1][2] ;
  wire \RAM_reg_n_0_[1][3] ;
  wire \RAM_reg_n_0_[2][0] ;
  wire \RAM_reg_n_0_[2][1] ;
  wire \RAM_reg_n_0_[2][2] ;
  wire \RAM_reg_n_0_[2][3] ;
  wire \RAM_reg_n_0_[3][0] ;
  wire \RAM_reg_n_0_[3][1] ;
  wire \RAM_reg_n_0_[3][2] ;
  wire \RAM_reg_n_0_[3][3] ;
  wire \RAM_reg_n_0_[4][0] ;
  wire \RAM_reg_n_0_[4][1] ;
  wire \RAM_reg_n_0_[4][2] ;
  wire \RAM_reg_n_0_[4][3] ;
  wire \RAM_reg_n_0_[5][0] ;
  wire \RAM_reg_n_0_[5][1] ;
  wire \RAM_reg_n_0_[5][2] ;
  wire \RAM_reg_n_0_[5][3] ;
  wire \RAM_reg_n_0_[6][0] ;
  wire \RAM_reg_n_0_[6][1] ;
  wire \RAM_reg_n_0_[6][2] ;
  wire \RAM_reg_n_0_[6][3] ;
  wire \RAM_reg_n_0_[7][0] ;
  wire \RAM_reg_n_0_[7][1] ;
  wire \RAM_reg_n_0_[7][2] ;
  wire \RAM_reg_n_0_[7][3] ;
  wire [3:0]S;
  wire [0:0]SR;
  wire \a_reg[1]_i_3_n_0 ;
  wire \a_reg[1]_i_4_n_0 ;
  wire \a_reg[2]_i_2_n_0 ;
  wire \a_reg[2]_i_3_n_0 ;
  wire \a_reg[3]_i_3_n_0 ;
  wire \a_reg[3]_i_4_n_0 ;
  wire \b_reg[0]_i_2_n_0 ;
  wire \b_reg[0]_i_3_n_0 ;
  wire \b_reg[3]_i_2_n_0 ;
  wire \b_reg[3]_i_3_n_0 ;
  wire \b_reg[3]_i_4_n_0 ;
  wire [1:0]dp_reg_rd1;
  wire [2:0]dp_reg_rd2;
  wire dp_reg_wd10_inferred__1__0_carry_i_7_n_0;
  wire dp_reg_wd10_inferred__1__0_carry_i_8_n_0;
  wire \dp_reg_wd1_reg[0]_i_10_n_0 ;
  wire \dp_reg_wd1_reg[0]_i_11_n_0 ;
  wire \dp_reg_wd1_reg[0]_i_12_n_0 ;
  wire \dp_reg_wd1_reg[0]_i_13_n_0 ;
  wire \dp_reg_wd1_reg[0]_i_14_n_0 ;
  wire \dp_reg_wd1_reg[0]_i_6_n_0 ;
  wire \dp_reg_wd1_reg[0]_i_7_n_0 ;
  wire \dp_reg_wd1_reg[0]_i_8_n_0 ;
  wire \dp_reg_wd1_reg[0]_i_9_n_0 ;
  wire \dp_reg_wd1_reg[1]_i_3_n_0 ;
  wire \dp_reg_wd1_reg[1]_i_4_n_0 ;
  wire \dp_reg_wd1_reg[3]_i_7_n_0 ;
  wire \dp_reg_wd1_reg[3]_i_8_n_0 ;
  wire \dp_reg_wd2_reg[1]_i_3_n_0 ;
  wire \dp_reg_wd2_reg[1]_i_4_n_0 ;
  wire \dp_reg_wd2_reg[1]_i_5_n_0 ;
  wire \dp_reg_wd2_reg[1]_i_6_n_0 ;
  wire \dp_reg_wd2_reg[1]_i_7_n_0 ;
  wire \dp_reg_wd2_reg[1]_i_8_n_0 ;
  wire \dp_reg_wd2_reg[2]_i_2_n_0 ;
  wire \dp_reg_wd2_reg[2]_i_3_n_0 ;
  wire \dp_reg_wd2_reg[2]_i_4_n_0 ;
  wire \dp_reg_wd2_reg[2]_i_5_n_0 ;
  wire \dp_reg_wd2_reg[2]_i_6_n_0 ;
  wire \dp_reg_wd2_reg[3]_i_3_n_0 ;
  wire \dp_reg_wd2_reg[3]_i_4_n_0 ;
  wire \dp_reg_wd2_reg[3]_i_5_n_0 ;
  wire \result_reg[1]_i_4_n_0 ;
  wire \result_reg[1]_i_5_n_0 ;
  wire \result_reg[1]_i_6_n_0 ;
  wire \result_reg[1]_i_7_n_0 ;
  wire \result_reg[1]_i_8_n_0 ;
  wire \result_reg[1]_i_9_n_0 ;
  wire [3:0]\seg[1] ;
  wire \seg[2] ;
  wire \state_reg[1] ;
  wire \state_reg[2] ;
  wire [0:0]\state_reg[2]_0 ;
  wire [0:0]\state_reg[2]_1 ;
  wire [0:0]\state_reg[2]_2 ;
  wire [0:0]\state_reg[2]_3 ;
  wire [0:0]\state_reg[2]_4 ;
  wire [0:0]\state_reg[2]_5 ;
  wire [0:0]\state_reg[2]_6 ;
  wire [2:0]\state_reg[3] ;
  wire [2:0]\state_reg[3]_0 ;
  wire [3:0]\state_reg[3]_1 ;
  wire [3:0]\state_reg[3]_2 ;
  wire [3:0]\state_reg[3]_3 ;
  wire [3:0]\state_reg[3]_4 ;
  wire [3:0]\state_reg[3]_5 ;
  wire [3:0]\state_reg[3]_6 ;
  wire [3:0]\state_reg[3]_7 ;
  wire [3:0]\state_reg[3]_8 ;

  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[0][0] 
       (.C(CLK),
        .CE(\state_reg[2]_6 ),
        .D(\state_reg[3]_8 [0]),
        .Q(\RAM_reg_n_0_[0][0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[0][1] 
       (.C(CLK),
        .CE(\state_reg[2]_6 ),
        .D(\state_reg[3]_8 [1]),
        .Q(\RAM_reg_n_0_[0][1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[0][2] 
       (.C(CLK),
        .CE(\state_reg[2]_6 ),
        .D(\state_reg[3]_8 [2]),
        .Q(\RAM_reg_n_0_[0][2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[0][3] 
       (.C(CLK),
        .CE(\state_reg[2]_6 ),
        .D(\state_reg[3]_8 [3]),
        .Q(\RAM_reg_n_0_[0][3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[1][0] 
       (.C(CLK),
        .CE(\state_reg[2]_5 ),
        .D(\state_reg[3]_7 [0]),
        .Q(\RAM_reg_n_0_[1][0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[1][1] 
       (.C(CLK),
        .CE(\state_reg[2]_5 ),
        .D(\state_reg[3]_7 [1]),
        .Q(\RAM_reg_n_0_[1][1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[1][2] 
       (.C(CLK),
        .CE(\state_reg[2]_5 ),
        .D(\state_reg[3]_7 [2]),
        .Q(\RAM_reg_n_0_[1][2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[1][3] 
       (.C(CLK),
        .CE(\state_reg[2]_5 ),
        .D(\state_reg[3]_7 [3]),
        .Q(\RAM_reg_n_0_[1][3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[2][0] 
       (.C(CLK),
        .CE(\state_reg[2]_4 ),
        .D(\state_reg[3]_6 [0]),
        .Q(\RAM_reg_n_0_[2][0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[2][1] 
       (.C(CLK),
        .CE(\state_reg[2]_4 ),
        .D(\state_reg[3]_6 [1]),
        .Q(\RAM_reg_n_0_[2][1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[2][2] 
       (.C(CLK),
        .CE(\state_reg[2]_4 ),
        .D(\state_reg[3]_6 [2]),
        .Q(\RAM_reg_n_0_[2][2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[2][3] 
       (.C(CLK),
        .CE(\state_reg[2]_4 ),
        .D(\state_reg[3]_6 [3]),
        .Q(\RAM_reg_n_0_[2][3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[3][0] 
       (.C(CLK),
        .CE(\state_reg[2]_3 ),
        .D(\state_reg[3]_5 [0]),
        .Q(\RAM_reg_n_0_[3][0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[3][1] 
       (.C(CLK),
        .CE(\state_reg[2]_3 ),
        .D(\state_reg[3]_5 [1]),
        .Q(\RAM_reg_n_0_[3][1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[3][2] 
       (.C(CLK),
        .CE(\state_reg[2]_3 ),
        .D(\state_reg[3]_5 [2]),
        .Q(\RAM_reg_n_0_[3][2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[3][3] 
       (.C(CLK),
        .CE(\state_reg[2]_3 ),
        .D(\state_reg[3]_5 [3]),
        .Q(\RAM_reg_n_0_[3][3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[4][0] 
       (.C(CLK),
        .CE(\state_reg[2]_2 ),
        .D(\state_reg[3]_4 [0]),
        .Q(\RAM_reg_n_0_[4][0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[4][1] 
       (.C(CLK),
        .CE(\state_reg[2]_2 ),
        .D(\state_reg[3]_4 [1]),
        .Q(\RAM_reg_n_0_[4][1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[4][2] 
       (.C(CLK),
        .CE(\state_reg[2]_2 ),
        .D(\state_reg[3]_4 [2]),
        .Q(\RAM_reg_n_0_[4][2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[4][3] 
       (.C(CLK),
        .CE(\state_reg[2]_2 ),
        .D(\state_reg[3]_4 [3]),
        .Q(\RAM_reg_n_0_[4][3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[5][0] 
       (.C(CLK),
        .CE(\state_reg[2]_1 ),
        .D(\state_reg[3]_3 [0]),
        .Q(\RAM_reg_n_0_[5][0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[5][1] 
       (.C(CLK),
        .CE(\state_reg[2]_1 ),
        .D(\state_reg[3]_3 [1]),
        .Q(\RAM_reg_n_0_[5][1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[5][2] 
       (.C(CLK),
        .CE(\state_reg[2]_1 ),
        .D(\state_reg[3]_3 [2]),
        .Q(\RAM_reg_n_0_[5][2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[5][3] 
       (.C(CLK),
        .CE(\state_reg[2]_1 ),
        .D(\state_reg[3]_3 [3]),
        .Q(\RAM_reg_n_0_[5][3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[6][0] 
       (.C(CLK),
        .CE(\state_reg[2]_0 ),
        .D(\state_reg[3]_2 [0]),
        .Q(\RAM_reg_n_0_[6][0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[6][1] 
       (.C(CLK),
        .CE(\state_reg[2]_0 ),
        .D(\state_reg[3]_2 [1]),
        .Q(\RAM_reg_n_0_[6][1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[6][2] 
       (.C(CLK),
        .CE(\state_reg[2]_0 ),
        .D(\state_reg[3]_2 [2]),
        .Q(\RAM_reg_n_0_[6][2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[6][3] 
       (.C(CLK),
        .CE(\state_reg[2]_0 ),
        .D(\state_reg[3]_2 [3]),
        .Q(\RAM_reg_n_0_[6][3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[7][0] 
       (.C(CLK),
        .CE(E),
        .D(\state_reg[3]_1 [0]),
        .Q(\RAM_reg_n_0_[7][0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[7][1] 
       (.C(CLK),
        .CE(E),
        .D(\state_reg[3]_1 [1]),
        .Q(\RAM_reg_n_0_[7][1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[7][2] 
       (.C(CLK),
        .CE(E),
        .D(\state_reg[3]_1 [2]),
        .Q(\RAM_reg_n_0_[7][2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[7][3] 
       (.C(CLK),
        .CE(E),
        .D(\state_reg[3]_1 [3]),
        .Q(\RAM_reg_n_0_[7][3] ),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \a_reg[0]_i_1 
       (.I0(\RAM_reg[6][1]_2 ),
        .O(dp_reg_rd1[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \a_reg[1]_i_1 
       (.I0(\RAM_reg[6][1]_3 ),
        .O(dp_reg_rd1[1]));
  MUXF7 \a_reg[1]_i_2 
       (.I0(\a_reg[1]_i_3_n_0 ),
        .I1(\a_reg[1]_i_4_n_0 ),
        .O(\RAM_reg[6][1]_3 ),
        .S(\state_reg[3]_0 [2]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \a_reg[1]_i_3 
       (.I0(\RAM_reg_n_0_[3][1] ),
        .I1(\RAM_reg_n_0_[2][1] ),
        .I2(\state_reg[3]_0 [1]),
        .I3(\RAM_reg_n_0_[1][1] ),
        .I4(\state_reg[3]_0 [0]),
        .I5(\RAM_reg_n_0_[0][1] ),
        .O(\a_reg[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \a_reg[1]_i_4 
       (.I0(\RAM_reg_n_0_[7][1] ),
        .I1(\RAM_reg_n_0_[6][1] ),
        .I2(\state_reg[3]_0 [1]),
        .I3(\RAM_reg_n_0_[5][1] ),
        .I4(\state_reg[3]_0 [0]),
        .I5(\RAM_reg_n_0_[4][1] ),
        .O(\a_reg[1]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \a_reg[2]_i_1 
       (.I0(\a_reg[2]_i_2_n_0 ),
        .I1(\a_reg[2]_i_3_n_0 ),
        .I2(\state_reg[3]_0 [2]),
        .O(\RAM_reg[6][2]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[2]_i_2 
       (.I0(\RAM_reg_n_0_[7][2] ),
        .I1(\RAM_reg_n_0_[6][2] ),
        .I2(\state_reg[3]_0 [1]),
        .I3(\RAM_reg_n_0_[5][2] ),
        .I4(\state_reg[3]_0 [0]),
        .I5(\RAM_reg_n_0_[4][2] ),
        .O(\a_reg[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[2]_i_3 
       (.I0(\RAM_reg_n_0_[3][2] ),
        .I1(\RAM_reg_n_0_[2][2] ),
        .I2(\state_reg[3]_0 [1]),
        .I3(\RAM_reg_n_0_[1][2] ),
        .I4(\state_reg[3]_0 [0]),
        .I5(\RAM_reg_n_0_[0][2] ),
        .O(\a_reg[2]_i_3_n_0 ));
  MUXF7 \a_reg[3]_i_1 
       (.I0(\a_reg[3]_i_3_n_0 ),
        .I1(\a_reg[3]_i_4_n_0 ),
        .O(\RAM_reg[6][3]_1 ),
        .S(\state_reg[3]_0 [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[3]_i_3 
       (.I0(\RAM_reg_n_0_[3][3] ),
        .I1(\RAM_reg_n_0_[2][3] ),
        .I2(\state_reg[3]_0 [1]),
        .I3(\RAM_reg_n_0_[1][3] ),
        .I4(\state_reg[3]_0 [0]),
        .I5(\RAM_reg_n_0_[0][3] ),
        .O(\a_reg[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[3]_i_4 
       (.I0(\RAM_reg_n_0_[7][3] ),
        .I1(\RAM_reg_n_0_[6][3] ),
        .I2(\state_reg[3]_0 [1]),
        .I3(\RAM_reg_n_0_[5][3] ),
        .I4(\state_reg[3]_0 [0]),
        .I5(\RAM_reg_n_0_[4][3] ),
        .O(\a_reg[3]_i_4_n_0 ));
  MUXF7 \b_reg[0]_i_1 
       (.I0(\b_reg[0]_i_2_n_0 ),
        .I1(\b_reg[0]_i_3_n_0 ),
        .O(\RAM_reg[6][1]_0 ),
        .S(\state_reg[3] [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \b_reg[0]_i_2 
       (.I0(\RAM_reg_n_0_[3][0] ),
        .I1(\RAM_reg_n_0_[2][0] ),
        .I2(\state_reg[3] [1]),
        .I3(\RAM_reg_n_0_[1][0] ),
        .I4(\state_reg[3] [0]),
        .I5(\RAM_reg_n_0_[0][0] ),
        .O(\b_reg[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \b_reg[0]_i_3 
       (.I0(\RAM_reg_n_0_[7][0] ),
        .I1(\RAM_reg_n_0_[6][0] ),
        .I2(\state_reg[3] [1]),
        .I3(\RAM_reg_n_0_[5][0] ),
        .I4(\state_reg[3] [0]),
        .I5(\RAM_reg_n_0_[4][0] ),
        .O(\b_reg[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \b_reg[1]_i_1 
       (.I0(\dp_reg_wd2_reg[1]_i_3_n_0 ),
        .O(dp_reg_rd2[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \b_reg[2]_i_1 
       (.I0(\dp_reg_wd2_reg[2]_i_3_n_0 ),
        .O(dp_reg_rd2[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \b_reg[3]_i_1 
       (.I0(\b_reg[3]_i_2_n_0 ),
        .O(dp_reg_rd2[2]));
  MUXF7 \b_reg[3]_i_2 
       (.I0(\b_reg[3]_i_3_n_0 ),
        .I1(\b_reg[3]_i_4_n_0 ),
        .O(\b_reg[3]_i_2_n_0 ),
        .S(\state_reg[3] [2]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \b_reg[3]_i_3 
       (.I0(\RAM_reg_n_0_[3][3] ),
        .I1(\RAM_reg_n_0_[2][3] ),
        .I2(\state_reg[3] [1]),
        .I3(\RAM_reg_n_0_[1][3] ),
        .I4(\state_reg[3] [0]),
        .I5(\RAM_reg_n_0_[0][3] ),
        .O(\b_reg[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \b_reg[3]_i_4 
       (.I0(\RAM_reg_n_0_[7][3] ),
        .I1(\RAM_reg_n_0_[6][3] ),
        .I2(\state_reg[3] [1]),
        .I3(\RAM_reg_n_0_[5][3] ),
        .I4(\state_reg[3] [0]),
        .I5(\RAM_reg_n_0_[4][3] ),
        .O(\b_reg[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    dp_reg_wd10_inferred__1__0_carry_i_1
       (.I0(\RAM_reg[6][1]_0 ),
        .I1(\RAM_reg[6][2]_0 ),
        .O(DI[1]));
  LUT2 #(
    .INIT(4'h2)) 
    dp_reg_wd10_inferred__1__0_carry_i_2
       (.I0(\RAM_reg[6][1]_0 ),
        .I1(\RAM_reg[6][1]_3 ),
        .O(DI[0]));
  LUT6 #(
    .INIT(64'hFE01010101FEFEFE)) 
    dp_reg_wd10_inferred__1__0_carry_i_3
       (.I0(dp_reg_wd10_inferred__1__0_carry_i_7_n_0),
        .I1(\dp_reg_wd2_reg[2]_i_3_n_0 ),
        .I2(\RAM_reg[6][1]_2 ),
        .I3(\RAM_reg[6][1]_0 ),
        .I4(\RAM_reg[6][3]_1 ),
        .I5(dp_reg_wd10_inferred__1__0_carry_i_8_n_0),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h8887888788877778)) 
    dp_reg_wd10_inferred__1__0_carry_i_4
       (.I0(\RAM_reg[6][1]_0 ),
        .I1(\RAM_reg[6][2]_0 ),
        .I2(\RAM_reg[6][1]_2 ),
        .I3(\dp_reg_wd2_reg[2]_i_3_n_0 ),
        .I4(\RAM_reg[6][1]_3 ),
        .I5(\dp_reg_wd2_reg[1]_i_3_n_0 ),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h444B)) 
    dp_reg_wd10_inferred__1__0_carry_i_5
       (.I0(\RAM_reg[6][1]_3 ),
        .I1(\RAM_reg[6][1]_0 ),
        .I2(\RAM_reg[6][1]_2 ),
        .I3(\dp_reg_wd2_reg[1]_i_3_n_0 ),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h2)) 
    dp_reg_wd10_inferred__1__0_carry_i_6
       (.I0(\RAM_reg[6][1]_0 ),
        .I1(\RAM_reg[6][1]_2 ),
        .O(S[0]));
  LUT2 #(
    .INIT(4'hE)) 
    dp_reg_wd10_inferred__1__0_carry_i_7
       (.I0(\RAM_reg[6][1]_3 ),
        .I1(\dp_reg_wd2_reg[1]_i_3_n_0 ),
        .O(dp_reg_wd10_inferred__1__0_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'hBBB4BBB4BBB4444B)) 
    dp_reg_wd10_inferred__1__0_carry_i_8
       (.I0(\dp_reg_wd2_reg[1]_i_3_n_0 ),
        .I1(\RAM_reg[6][2]_0 ),
        .I2(\RAM_reg[6][1]_2 ),
        .I3(\b_reg[3]_i_2_n_0 ),
        .I4(\RAM_reg[6][1]_3 ),
        .I5(\dp_reg_wd2_reg[2]_i_3_n_0 ),
        .O(dp_reg_wd10_inferred__1__0_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \dp_reg_wd1_reg[0]_i_10 
       (.I0(\b_reg[3]_i_2_n_0 ),
        .I1(\RAM_reg[6][3]_0 ),
        .O(\dp_reg_wd1_reg[0]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \dp_reg_wd1_reg[0]_i_11 
       (.I0(\result_reg[1]_i_6_n_0 ),
        .I1(\result_reg[1]_i_7_n_0 ),
        .I2(\result_reg[1]_i_5_n_0 ),
        .O(\dp_reg_wd1_reg[0]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \dp_reg_wd1_reg[0]_i_12 
       (.I0(\RAM_reg[6][3]_1 ),
        .I1(\RAM_reg[6][1]_0 ),
        .O(\dp_reg_wd1_reg[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hBF3F0303B830B830)) 
    \dp_reg_wd1_reg[0]_i_13 
       (.I0(\dp_reg_wd2_reg[2]_i_3_n_0 ),
        .I1(\dp_reg_wd2_reg[1]_i_3_n_0 ),
        .I2(\RAM_reg[6][3]_1 ),
        .I3(\b_reg[3]_i_2_n_0 ),
        .I4(\RAM_reg[6][2]_0 ),
        .I5(\RAM_reg[6][1]_0 ),
        .O(\dp_reg_wd1_reg[0]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \dp_reg_wd1_reg[0]_i_14 
       (.I0(\result_reg[1]_i_7_n_0 ),
        .I1(\result_reg[1]_i_6_n_0 ),
        .I2(\result_reg[1]_i_5_n_0 ),
        .O(\dp_reg_wd1_reg[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h002B00FF0000002B)) 
    \dp_reg_wd1_reg[0]_i_2 
       (.I0(\dp_reg_wd1_reg[0]_i_6_n_0 ),
        .I1(\dp_reg_wd1_reg[0]_i_7_n_0 ),
        .I2(\dp_reg_wd1_reg[0]_i_8_n_0 ),
        .I3(\dp_reg_wd1_reg[0]_i_9_n_0 ),
        .I4(\dp_reg_wd1_reg[0]_i_10_n_0 ),
        .I5(\dp_reg_wd1_reg[0]_i_11_n_0 ),
        .O(\RAM_reg[6][1]_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dp_reg_wd1_reg[0]_i_5 
       (.I0(\RAM_reg[6][1]_0 ),
        .I1(\RAM_reg[6][1]_2 ),
        .O(\RAM_reg[6][0]_0 ));
  LUT5 #(
    .INIT(32'hBA702F15)) 
    \dp_reg_wd1_reg[0]_i_6 
       (.I0(\dp_reg_wd2_reg[1]_i_3_n_0 ),
        .I1(\RAM_reg[6][1]_2 ),
        .I2(\RAM_reg[6][1]_0 ),
        .I3(\RAM_reg[6][3]_0 ),
        .I4(\RAM_reg[6][1]_3 ),
        .O(\dp_reg_wd1_reg[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dp_reg_wd1_reg[0]_i_7 
       (.I0(\dp_reg_wd2_reg[2]_i_3_n_0 ),
        .I1(\RAM_reg[6][3]_0 ),
        .O(\dp_reg_wd1_reg[0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h693396CC)) 
    \dp_reg_wd1_reg[0]_i_8 
       (.I0(\RAM_reg[6][1]_3 ),
        .I1(\dp_reg_wd2_reg[1]_i_3_n_0 ),
        .I2(\RAM_reg[6][2]_1 ),
        .I3(\RAM_reg[6][1]_0 ),
        .I4(\RAM_reg[6][2]_0 ),
        .O(\dp_reg_wd1_reg[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0116166900010116)) 
    \dp_reg_wd1_reg[0]_i_9 
       (.I0(\dp_reg_wd2_reg[2]_i_3_n_0 ),
        .I1(\dp_reg_wd2_reg[1]_i_3_n_0 ),
        .I2(\dp_reg_wd1_reg[0]_i_12_n_0 ),
        .I3(\b_reg[3]_i_2_n_0 ),
        .I4(\dp_reg_wd1_reg[0]_i_13_n_0 ),
        .I5(\dp_reg_wd1_reg[0]_i_14_n_0 ),
        .O(\dp_reg_wd1_reg[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dp_reg_wd1_reg[1]_i_2 
       (.I0(O[0]),
        .I1(\dp_reg_wd1_reg[1]_i_3_n_0 ),
        .I2(\state_reg[1] ),
        .I3(\RAM_reg[6][3]_0 ),
        .I4(\state_reg[2] ),
        .I5(\dp_reg_wd1_reg[1]_i_4_n_0 ),
        .O(\RAM_reg[6][1]_4 ));
  LUT4 #(
    .INIT(16'h4BB4)) 
    \dp_reg_wd1_reg[1]_i_3 
       (.I0(\RAM_reg[6][1]_2 ),
        .I1(\RAM_reg[6][1]_0 ),
        .I2(\dp_reg_wd2_reg[1]_i_3_n_0 ),
        .I3(\RAM_reg[6][1]_3 ),
        .O(\dp_reg_wd1_reg[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \dp_reg_wd1_reg[1]_i_4 
       (.I0(\RAM_reg[6][1]_0 ),
        .I1(\RAM_reg[6][1]_2 ),
        .I2(\dp_reg_wd2_reg[1]_i_3_n_0 ),
        .I3(\RAM_reg[6][1]_3 ),
        .O(\dp_reg_wd1_reg[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dp_reg_wd1_reg[2]_i_2 
       (.I0(O[1]),
        .I1(\RAM_reg[6][2]_3 ),
        .I2(\state_reg[1] ),
        .I3(\RAM_reg[6][2]_1 ),
        .I4(\state_reg[2] ),
        .I5(\RAM_reg[6][2]_4 ),
        .O(\RAM_reg[6][2]_2 ));
  LUT6 #(
    .INIT(64'hE8EE17111711E8EE)) 
    \dp_reg_wd1_reg[2]_i_3 
       (.I0(\dp_reg_wd2_reg[1]_i_3_n_0 ),
        .I1(\RAM_reg[6][1]_3 ),
        .I2(\RAM_reg[6][1]_2 ),
        .I3(\RAM_reg[6][1]_0 ),
        .I4(\dp_reg_wd2_reg[2]_i_3_n_0 ),
        .I5(\RAM_reg[6][2]_0 ),
        .O(\RAM_reg[6][2]_3 ));
  LUT6 #(
    .INIT(64'h7F0780F880F87F07)) 
    \dp_reg_wd1_reg[2]_i_4 
       (.I0(\RAM_reg[6][1]_0 ),
        .I1(\RAM_reg[6][1]_2 ),
        .I2(\RAM_reg[6][1]_3 ),
        .I3(\dp_reg_wd2_reg[1]_i_3_n_0 ),
        .I4(\dp_reg_wd2_reg[2]_i_3_n_0 ),
        .I5(\RAM_reg[6][2]_0 ),
        .O(\RAM_reg[6][2]_4 ));
  LUT5 #(
    .INIT(32'h69669969)) 
    \dp_reg_wd1_reg[3]_i_4 
       (.I0(\b_reg[3]_i_2_n_0 ),
        .I1(\RAM_reg[6][3]_1 ),
        .I2(\RAM_reg[6][2]_0 ),
        .I3(\dp_reg_wd2_reg[2]_i_3_n_0 ),
        .I4(\dp_reg_wd1_reg[3]_i_7_n_0 ),
        .O(\RAM_reg[6][3]_3 ));
  LUT5 #(
    .INIT(32'h69996669)) 
    \dp_reg_wd1_reg[3]_i_6 
       (.I0(\b_reg[3]_i_2_n_0 ),
        .I1(\RAM_reg[6][3]_1 ),
        .I2(\dp_reg_wd2_reg[2]_i_3_n_0 ),
        .I3(\RAM_reg[6][2]_0 ),
        .I4(\dp_reg_wd1_reg[3]_i_8_n_0 ),
        .O(\RAM_reg[6][3]_2 ));
  LUT4 #(
    .INIT(16'h022F)) 
    \dp_reg_wd1_reg[3]_i_7 
       (.I0(\RAM_reg[6][1]_0 ),
        .I1(\RAM_reg[6][1]_2 ),
        .I2(\RAM_reg[6][1]_3 ),
        .I3(\dp_reg_wd2_reg[1]_i_3_n_0 ),
        .O(\dp_reg_wd1_reg[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h8F08)) 
    \dp_reg_wd1_reg[3]_i_8 
       (.I0(\RAM_reg[6][1]_0 ),
        .I1(\RAM_reg[6][1]_2 ),
        .I2(\dp_reg_wd2_reg[1]_i_3_n_0 ),
        .I3(\RAM_reg[6][1]_3 ),
        .O(\dp_reg_wd1_reg[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h9500)) 
    \dp_reg_wd2_reg[0]_i_1 
       (.I0(\RAM_reg[6][1]_2 ),
        .I1(\RAM_reg[6][1]_1 ),
        .I2(\RAM_reg[6][1]_0 ),
        .I3(Q),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0807F7F800000000)) 
    \dp_reg_wd2_reg[1]_i_1 
       (.I0(\RAM_reg[6][1]_0 ),
        .I1(\RAM_reg[6][1]_2 ),
        .I2(\RAM_reg[6][1]_1 ),
        .I3(\dp_reg_wd2_reg[1]_i_3_n_0 ),
        .I4(\dp_reg_wd2_reg[1]_i_4_n_0 ),
        .I5(Q),
        .O(D[1]));
  MUXF7 \dp_reg_wd2_reg[1]_i_2 
       (.I0(\dp_reg_wd2_reg[1]_i_5_n_0 ),
        .I1(\dp_reg_wd2_reg[1]_i_6_n_0 ),
        .O(\RAM_reg[6][1]_2 ),
        .S(\state_reg[3]_0 [2]));
  MUXF7 \dp_reg_wd2_reg[1]_i_3 
       (.I0(\dp_reg_wd2_reg[1]_i_7_n_0 ),
        .I1(\dp_reg_wd2_reg[1]_i_8_n_0 ),
        .O(\dp_reg_wd2_reg[1]_i_3_n_0 ),
        .S(\state_reg[3] [2]));
  LUT5 #(
    .INIT(32'h96CC6933)) 
    \dp_reg_wd2_reg[1]_i_4 
       (.I0(\RAM_reg[6][1]_2 ),
        .I1(\dp_reg_wd2_reg[1]_i_3_n_0 ),
        .I2(\RAM_reg[6][3]_0 ),
        .I3(\RAM_reg[6][1]_0 ),
        .I4(\RAM_reg[6][1]_3 ),
        .O(\dp_reg_wd2_reg[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \dp_reg_wd2_reg[1]_i_5 
       (.I0(\RAM_reg_n_0_[3][0] ),
        .I1(\RAM_reg_n_0_[2][0] ),
        .I2(\state_reg[3]_0 [1]),
        .I3(\RAM_reg_n_0_[1][0] ),
        .I4(\state_reg[3]_0 [0]),
        .I5(\RAM_reg_n_0_[0][0] ),
        .O(\dp_reg_wd2_reg[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \dp_reg_wd2_reg[1]_i_6 
       (.I0(\RAM_reg_n_0_[7][0] ),
        .I1(\RAM_reg_n_0_[6][0] ),
        .I2(\state_reg[3]_0 [1]),
        .I3(\RAM_reg_n_0_[5][0] ),
        .I4(\state_reg[3]_0 [0]),
        .I5(\RAM_reg_n_0_[4][0] ),
        .O(\dp_reg_wd2_reg[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \dp_reg_wd2_reg[1]_i_7 
       (.I0(\RAM_reg_n_0_[3][1] ),
        .I1(\RAM_reg_n_0_[2][1] ),
        .I2(\state_reg[3] [1]),
        .I3(\RAM_reg_n_0_[1][1] ),
        .I4(\state_reg[3] [0]),
        .I5(\RAM_reg_n_0_[0][1] ),
        .O(\dp_reg_wd2_reg[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \dp_reg_wd2_reg[1]_i_8 
       (.I0(\RAM_reg_n_0_[7][1] ),
        .I1(\RAM_reg_n_0_[6][1] ),
        .I2(\state_reg[3] [1]),
        .I3(\RAM_reg_n_0_[5][1] ),
        .I4(\state_reg[3] [0]),
        .I5(\RAM_reg_n_0_[4][1] ),
        .O(\dp_reg_wd2_reg[1]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h41BE0000)) 
    \dp_reg_wd2_reg[2]_i_1 
       (.I0(\RAM_reg[6][1]_1 ),
        .I1(\dp_reg_wd2_reg[2]_i_2_n_0 ),
        .I2(\dp_reg_wd2_reg[2]_i_3_n_0 ),
        .I3(\dp_reg_wd2_reg[2]_i_4_n_0 ),
        .I4(Q),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h0B8F8C08)) 
    \dp_reg_wd2_reg[2]_i_2 
       (.I0(\RAM_reg[6][1]_2 ),
        .I1(\RAM_reg[6][1]_0 ),
        .I2(\dp_reg_wd2_reg[1]_i_3_n_0 ),
        .I3(\RAM_reg[6][3]_0 ),
        .I4(\RAM_reg[6][1]_3 ),
        .O(\dp_reg_wd2_reg[2]_i_2_n_0 ));
  MUXF7 \dp_reg_wd2_reg[2]_i_3 
       (.I0(\dp_reg_wd2_reg[2]_i_5_n_0 ),
        .I1(\dp_reg_wd2_reg[2]_i_6_n_0 ),
        .O(\dp_reg_wd2_reg[2]_i_3_n_0 ),
        .S(\state_reg[3] [2]));
  LUT3 #(
    .INIT(8'h69)) 
    \dp_reg_wd2_reg[2]_i_4 
       (.I0(\dp_reg_wd1_reg[0]_i_6_n_0 ),
        .I1(\dp_reg_wd1_reg[0]_i_8_n_0 ),
        .I2(\dp_reg_wd1_reg[0]_i_7_n_0 ),
        .O(\dp_reg_wd2_reg[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \dp_reg_wd2_reg[2]_i_5 
       (.I0(\RAM_reg_n_0_[3][2] ),
        .I1(\RAM_reg_n_0_[2][2] ),
        .I2(\state_reg[3] [1]),
        .I3(\RAM_reg_n_0_[1][2] ),
        .I4(\state_reg[3] [0]),
        .I5(\RAM_reg_n_0_[0][2] ),
        .O(\dp_reg_wd2_reg[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \dp_reg_wd2_reg[2]_i_6 
       (.I0(\RAM_reg_n_0_[7][2] ),
        .I1(\RAM_reg_n_0_[6][2] ),
        .I2(\state_reg[3] [1]),
        .I3(\RAM_reg_n_0_[5][2] ),
        .I4(\state_reg[3] [0]),
        .I5(\RAM_reg_n_0_[4][2] ),
        .O(\dp_reg_wd2_reg[2]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h9000)) 
    \dp_reg_wd2_reg[3]_i_1 
       (.I0(\dp_reg_wd2_reg[3]_i_3_n_0 ),
        .I1(\dp_reg_wd2_reg[3]_i_4_n_0 ),
        .I2(\dp_reg_wd2_reg[3]_i_5_n_0 ),
        .I3(Q),
        .O(D[3]));
  LUT3 #(
    .INIT(8'h9A)) 
    \dp_reg_wd2_reg[3]_i_3 
       (.I0(\dp_reg_wd1_reg[0]_i_11_n_0 ),
        .I1(\RAM_reg[6][3]_0 ),
        .I2(\b_reg[3]_i_2_n_0 ),
        .O(\dp_reg_wd2_reg[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h2B)) 
    \dp_reg_wd2_reg[3]_i_4 
       (.I0(\dp_reg_wd1_reg[0]_i_6_n_0 ),
        .I1(\dp_reg_wd1_reg[0]_i_7_n_0 ),
        .I2(\dp_reg_wd1_reg[0]_i_8_n_0 ),
        .O(\dp_reg_wd2_reg[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h69965555AAAA6996)) 
    \dp_reg_wd2_reg[3]_i_5 
       (.I0(\b_reg[3]_i_2_n_0 ),
        .I1(\dp_reg_wd1_reg[0]_i_7_n_0 ),
        .I2(\dp_reg_wd1_reg[0]_i_8_n_0 ),
        .I3(\dp_reg_wd1_reg[0]_i_6_n_0 ),
        .I4(\dp_reg_wd2_reg[2]_i_3_n_0 ),
        .I5(\dp_reg_wd2_reg[2]_i_2_n_0 ),
        .O(\dp_reg_wd2_reg[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h87)) 
    \remainder_reg[0]_i_1 
       (.I0(\RAM_reg[6][1]_0 ),
        .I1(\RAM_reg[6][1]_1 ),
        .I2(\RAM_reg[6][1]_2 ),
        .O(\seg[1] [0]));
  LUT6 #(
    .INIT(64'h69965A5A99995555)) 
    \remainder_reg[1]_i_1 
       (.I0(\RAM_reg[6][1]_3 ),
        .I1(\RAM_reg[6][3]_0 ),
        .I2(\dp_reg_wd2_reg[1]_i_3_n_0 ),
        .I3(\RAM_reg[6][1]_2 ),
        .I4(\RAM_reg[6][1]_0 ),
        .I5(\RAM_reg[6][1]_1 ),
        .O(\seg[1] [1]));
  LUT4 #(
    .INIT(16'h5596)) 
    \remainder_reg[2]_i_1 
       (.I0(\dp_reg_wd2_reg[2]_i_4_n_0 ),
        .I1(\dp_reg_wd2_reg[2]_i_3_n_0 ),
        .I2(\dp_reg_wd2_reg[2]_i_2_n_0 ),
        .I3(\RAM_reg[6][1]_1 ),
        .O(\seg[1] [2]));
  LUT6 #(
    .INIT(64'hD42B00000000D42B)) 
    \remainder_reg[3]_i_1 
       (.I0(\dp_reg_wd2_reg[2]_i_2_n_0 ),
        .I1(\dp_reg_wd2_reg[2]_i_3_n_0 ),
        .I2(\dp_reg_wd2_reg[2]_i_4_n_0 ),
        .I3(\b_reg[3]_i_2_n_0 ),
        .I4(\dp_reg_wd2_reg[3]_i_4_n_0 ),
        .I5(\dp_reg_wd2_reg[3]_i_3_n_0 ),
        .O(\seg[1] [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \result_reg[1]_i_11 
       (.I0(\RAM_reg[6][1]_3 ),
        .I1(\dp_reg_wd2_reg[1]_i_3_n_0 ),
        .O(\seg[2] ));
  LUT6 #(
    .INIT(64'h00000000022AABBF)) 
    \result_reg[1]_i_2 
       (.I0(\result_reg[1]_i_4_n_0 ),
        .I1(\result_reg[1]_i_5_n_0 ),
        .I2(\result_reg[1]_i_6_n_0 ),
        .I3(\result_reg[1]_i_7_n_0 ),
        .I4(\result_reg[1]_i_8_n_0 ),
        .I5(\result_reg[1]_i_9_n_0 ),
        .O(\RAM_reg[6][3]_0 ));
  LUT6 #(
    .INIT(64'h45005F0FFAFFA0F0)) 
    \result_reg[1]_i_4 
       (.I0(\RAM_reg[6][2]_0 ),
        .I1(\b_reg[3]_i_2_n_0 ),
        .I2(\RAM_reg[6][3]_1 ),
        .I3(\RAM_reg[6][1]_0 ),
        .I4(\dp_reg_wd2_reg[1]_i_3_n_0 ),
        .I5(\dp_reg_wd2_reg[2]_i_3_n_0 ),
        .O(\result_reg[1]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[1]_i_5 
       (.I0(\dp_reg_wd2_reg[2]_i_3_n_0 ),
        .I1(\RAM_reg[6][2]_1 ),
        .O(\result_reg[1]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hBE0C283F)) 
    \result_reg[1]_i_6 
       (.I0(\RAM_reg[6][1]_3 ),
        .I1(\dp_reg_wd2_reg[1]_i_3_n_0 ),
        .I2(\RAM_reg[6][2]_1 ),
        .I3(\RAM_reg[6][1]_0 ),
        .I4(\RAM_reg[6][2]_0 ),
        .O(\result_reg[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h82DDDD2222DDDD22)) 
    \result_reg[1]_i_7 
       (.I0(\RAM_reg[6][1]_0 ),
        .I1(\RAM_reg[6][2]_0 ),
        .I2(\b_reg[3]_i_2_n_0 ),
        .I3(\RAM_reg[6][3]_1 ),
        .I4(\dp_reg_wd2_reg[1]_i_3_n_0 ),
        .I5(\dp_reg_wd2_reg[2]_i_3_n_0 ),
        .O(\result_reg[1]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[1]_i_8 
       (.I0(\b_reg[3]_i_2_n_0 ),
        .I1(\RAM_reg[6][2]_1 ),
        .O(\result_reg[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00005577000075F7)) 
    \result_reg[1]_i_9 
       (.I0(\dp_reg_wd2_reg[2]_i_3_n_0 ),
        .I1(\dp_reg_wd2_reg[1]_i_3_n_0 ),
        .I2(\RAM_reg[6][1]_0 ),
        .I3(\RAM_reg[6][3]_1 ),
        .I4(\b_reg[3]_i_2_n_0 ),
        .I5(\RAM_reg[6][2]_0 ),
        .O(\result_reg[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h88CC80C000000000)) 
    \result_reg[2]_i_2 
       (.I0(\RAM_reg[6][2]_0 ),
        .I1(\dp_reg_wd2_reg[2]_i_3_n_0 ),
        .I2(\dp_reg_wd2_reg[1]_i_3_n_0 ),
        .I3(\RAM_reg[6][1]_0 ),
        .I4(\RAM_reg[6][3]_1 ),
        .I5(\b_reg[3]_i_2_n_0 ),
        .O(\RAM_reg[6][2]_1 ));
  LUT5 #(
    .INIT(32'h77F7FFFF)) 
    \result_reg[3]_i_3 
       (.I0(\dp_reg_wd2_reg[2]_i_3_n_0 ),
        .I1(\dp_reg_wd2_reg[1]_i_3_n_0 ),
        .I2(\RAM_reg[6][1]_0 ),
        .I3(\RAM_reg[6][3]_1 ),
        .I4(\b_reg[3]_i_2_n_0 ),
        .O(\RAM_reg[6][3]_4 ));
endmodule

module seven_seg_disp
   (an_OBUF,
    \select_reg[1]_0 ,
    \select_reg[1]_1 ,
    clk_IBUF_BUFG);
  output [3:0]an_OBUF;
  output \select_reg[1]_0 ;
  output \select_reg[1]_1 ;
  input clk_IBUF_BUFG;

  wire [3:0]an_OBUF;
  wire clk_IBUF_BUFG;
  wire [0:0]count;
  wire count0_carry__0_n_0;
  wire count0_carry__0_n_4;
  wire count0_carry__0_n_5;
  wire count0_carry__0_n_6;
  wire count0_carry__0_n_7;
  wire count0_carry__1_n_0;
  wire count0_carry__1_n_4;
  wire count0_carry__1_n_5;
  wire count0_carry__1_n_6;
  wire count0_carry__1_n_7;
  wire count0_carry__2_n_4;
  wire count0_carry__2_n_5;
  wire count0_carry__2_n_6;
  wire count0_carry__2_n_7;
  wire count0_carry_n_0;
  wire count0_carry_n_4;
  wire count0_carry_n_5;
  wire count0_carry_n_6;
  wire count0_carry_n_7;
  wire \count[16]_i_1_n_0 ;
  wire \count[16]_i_2_n_0 ;
  wire \count[16]_i_3_n_0 ;
  wire \count[16]_i_4_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[10] ;
  wire \count_reg_n_0_[11] ;
  wire \count_reg_n_0_[12] ;
  wire \count_reg_n_0_[13] ;
  wire \count_reg_n_0_[14] ;
  wire \count_reg_n_0_[15] ;
  wire \count_reg_n_0_[16] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire \count_reg_n_0_[7] ;
  wire \count_reg_n_0_[8] ;
  wire \count_reg_n_0_[9] ;
  wire \select[0]_i_1_n_0 ;
  wire \select[1]_i_1_n_0 ;
  wire \select_reg[1]_0 ;
  wire \select_reg[1]_1 ;
  wire [2:0]NLW_count0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_count0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_count0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_count0_carry__2_CO_UNCONNECTED;

  LUT2 #(
    .INIT(4'hE)) 
    \an_OBUF[0]_inst_i_1 
       (.I0(\select_reg[1]_0 ),
        .I1(\select_reg[1]_1 ),
        .O(an_OBUF[0]));
  LUT2 #(
    .INIT(4'hB)) 
    \an_OBUF[1]_inst_i_1 
       (.I0(\select_reg[1]_0 ),
        .I1(\select_reg[1]_1 ),
        .O(an_OBUF[1]));
  LUT2 #(
    .INIT(4'hB)) 
    \an_OBUF[2]_inst_i_1 
       (.I0(\select_reg[1]_1 ),
        .I1(\select_reg[1]_0 ),
        .O(an_OBUF[2]));
  LUT2 #(
    .INIT(4'h7)) 
    \an_OBUF[3]_inst_i_1 
       (.I0(\select_reg[1]_0 ),
        .I1(\select_reg[1]_1 ),
        .O(an_OBUF[3]));
  CARRY4 count0_carry
       (.CI(1'b0),
        .CO({count0_carry_n_0,NLW_count0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\count_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry_n_4,count0_carry_n_5,count0_carry_n_6,count0_carry_n_7}),
        .S({\count_reg_n_0_[4] ,\count_reg_n_0_[3] ,\count_reg_n_0_[2] ,\count_reg_n_0_[1] }));
  CARRY4 count0_carry__0
       (.CI(count0_carry_n_0),
        .CO({count0_carry__0_n_0,NLW_count0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry__0_n_4,count0_carry__0_n_5,count0_carry__0_n_6,count0_carry__0_n_7}),
        .S({\count_reg_n_0_[8] ,\count_reg_n_0_[7] ,\count_reg_n_0_[6] ,\count_reg_n_0_[5] }));
  CARRY4 count0_carry__1
       (.CI(count0_carry__0_n_0),
        .CO({count0_carry__1_n_0,NLW_count0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry__1_n_4,count0_carry__1_n_5,count0_carry__1_n_6,count0_carry__1_n_7}),
        .S({\count_reg_n_0_[12] ,\count_reg_n_0_[11] ,\count_reg_n_0_[10] ,\count_reg_n_0_[9] }));
  CARRY4 count0_carry__2
       (.CI(count0_carry__1_n_0),
        .CO(NLW_count0_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry__2_n_4,count0_carry__2_n_5,count0_carry__2_n_6,count0_carry__2_n_7}),
        .S({\count_reg_n_0_[16] ,\count_reg_n_0_[15] ,\count_reg_n_0_[14] ,\count_reg_n_0_[13] }));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__0 
       (.I0(\count_reg_n_0_[0] ),
        .O(count));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \count[16]_i_1 
       (.I0(\count_reg_n_0_[4] ),
        .I1(\count_reg_n_0_[3] ),
        .I2(\count_reg_n_0_[6] ),
        .I3(\count_reg_n_0_[5] ),
        .I4(\count[16]_i_2_n_0 ),
        .I5(\count[16]_i_3_n_0 ),
        .O(\count[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \count[16]_i_2 
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count_reg_n_0_[15] ),
        .I2(\count_reg_n_0_[16] ),
        .I3(\count_reg_n_0_[2] ),
        .I4(\count_reg_n_0_[1] ),
        .O(\count[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF7FF)) 
    \count[16]_i_3 
       (.I0(\count_reg_n_0_[9] ),
        .I1(\count_reg_n_0_[10] ),
        .I2(\count_reg_n_0_[8] ),
        .I3(\count_reg_n_0_[7] ),
        .I4(\count[16]_i_4_n_0 ),
        .O(\count[16]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[16]_i_4 
       (.I0(\count_reg_n_0_[12] ),
        .I1(\count_reg_n_0_[11] ),
        .I2(\count_reg_n_0_[14] ),
        .I3(\count_reg_n_0_[13] ),
        .O(\count[16]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count),
        .Q(\count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count0_carry__1_n_6),
        .Q(\count_reg_n_0_[10] ),
        .R(\count[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count0_carry__1_n_5),
        .Q(\count_reg_n_0_[11] ),
        .R(\count[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count0_carry__1_n_4),
        .Q(\count_reg_n_0_[12] ),
        .R(\count[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count0_carry__2_n_7),
        .Q(\count_reg_n_0_[13] ),
        .R(\count[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count0_carry__2_n_6),
        .Q(\count_reg_n_0_[14] ),
        .R(\count[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count0_carry__2_n_5),
        .Q(\count_reg_n_0_[15] ),
        .R(\count[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count0_carry__2_n_4),
        .Q(\count_reg_n_0_[16] ),
        .R(\count[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count0_carry_n_7),
        .Q(\count_reg_n_0_[1] ),
        .R(\count[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count0_carry_n_6),
        .Q(\count_reg_n_0_[2] ),
        .R(\count[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count0_carry_n_5),
        .Q(\count_reg_n_0_[3] ),
        .R(\count[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count0_carry_n_4),
        .Q(\count_reg_n_0_[4] ),
        .R(\count[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count0_carry__0_n_7),
        .Q(\count_reg_n_0_[5] ),
        .R(\count[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count0_carry__0_n_6),
        .Q(\count_reg_n_0_[6] ),
        .R(\count[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count0_carry__0_n_5),
        .Q(\count_reg_n_0_[7] ),
        .R(\count[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count0_carry__0_n_4),
        .Q(\count_reg_n_0_[8] ),
        .R(\count[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count0_carry__1_n_7),
        .Q(\count_reg_n_0_[9] ),
        .R(\count[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \select[0]_i_1 
       (.I0(\count[16]_i_1_n_0 ),
        .I1(\select_reg[1]_1 ),
        .O(\select[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \select[1]_i_1 
       (.I0(\select_reg[1]_1 ),
        .I1(\count[16]_i_1_n_0 ),
        .I2(\select_reg[1]_0 ),
        .O(\select[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \select_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\select[0]_i_1_n_0 ),
        .Q(\select_reg[1]_1 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \select_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\select[1]_i_1_n_0 ),
        .Q(\select_reg[1]_0 ),
        .R(1'b0));
endmodule

(* ECO_CHECKSUM = "370332e6" *) 
(* NotValidForBitStream *)
module top_module
   (clk,
    sw,
    btn_r,
    btn_l,
    btn_u,
    btn_d,
    btn_m,
    seg,
    dp,
    an,
    activeState);
  input clk;
  input [15:0]sw;
  input btn_r;
  input btn_l;
  input btn_u;
  input btn_d;
  input btn_m;
  output [6:0]seg;
  output dp;
  output [3:0]an;
  output [15:0]activeState;

  wire [15:0]activeState;
  wire [12:0]activeState_OBUF;
  wire [3:0]an;
  wire [3:0]an_OBUF;
  wire btn_d;
  wire btn_d_IBUF;
  wire btn_l;
  wire btn_l_IBUF;
  wire btn_m;
  wire btn_m_IBUF;
  wire btn_r;
  wire btn_r_IBUF;
  wire btn_u;
  wire btn_u_IBUF;
  wire clk;
  wire clkOut;
  wire clkOut_i_1_n_0;
  wire clkOut_reg_n_0_BUFG;
  wire clkOut_reg_n_0_BUFG_inst_n_0;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [0:0]count;
  wire \count[0]_i_2_n_0 ;
  wire \count[0]_i_3_n_0 ;
  wire \count[0]_i_4_n_0 ;
  wire \count[0]_i_5_n_0 ;
  wire \count[0]_i_6_n_0 ;
  wire \count[0]_i_7_n_0 ;
  wire \count_reg[12]_i_1_n_0 ;
  wire \count_reg[12]_i_1_n_4 ;
  wire \count_reg[12]_i_1_n_5 ;
  wire \count_reg[12]_i_1_n_6 ;
  wire \count_reg[12]_i_1_n_7 ;
  wire \count_reg[16]_i_1_n_0 ;
  wire \count_reg[16]_i_1_n_4 ;
  wire \count_reg[16]_i_1_n_5 ;
  wire \count_reg[16]_i_1_n_6 ;
  wire \count_reg[16]_i_1_n_7 ;
  wire \count_reg[20]_i_1_n_0 ;
  wire \count_reg[20]_i_1_n_4 ;
  wire \count_reg[20]_i_1_n_5 ;
  wire \count_reg[20]_i_1_n_6 ;
  wire \count_reg[20]_i_1_n_7 ;
  wire \count_reg[24]_i_1_n_0 ;
  wire \count_reg[24]_i_1_n_4 ;
  wire \count_reg[24]_i_1_n_5 ;
  wire \count_reg[24]_i_1_n_6 ;
  wire \count_reg[24]_i_1_n_7 ;
  wire \count_reg[25]_i_2_n_7 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[10] ;
  wire \count_reg_n_0_[11] ;
  wire \count_reg_n_0_[12] ;
  wire \count_reg_n_0_[13] ;
  wire \count_reg_n_0_[14] ;
  wire \count_reg_n_0_[15] ;
  wire \count_reg_n_0_[16] ;
  wire \count_reg_n_0_[17] ;
  wire \count_reg_n_0_[18] ;
  wire \count_reg_n_0_[19] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[20] ;
  wire \count_reg_n_0_[21] ;
  wire \count_reg_n_0_[22] ;
  wire \count_reg_n_0_[23] ;
  wire \count_reg_n_0_[24] ;
  wire \count_reg_n_0_[25] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire \count_reg_n_0_[7] ;
  wire \count_reg_n_0_[8] ;
  wire \count_reg_n_0_[9] ;
  wire d_n_2;
  wire dp;
  wire m_n_2;
  wire m_n_3;
  wire prc_n_0;
  wire q1;
  wire q1_1;
  wire q1_3;
  wire q1_5;
  wire q1_7;
  wire q2;
  wire q2_0;
  wire q2_2;
  wire q2_4;
  wire q2_6;
  wire r_n_2;
  wire [6:0]seg;
  wire [6:0]seg_OBUF;
  wire svn_n_4;
  wire svn_n_5;
  wire [15:0]sw;
  wire [15:0]sw_IBUF;
  wire u_n_2;
  wire u_n_3;
  wire [2:0]\NLW_count_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_count_reg[25]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_count_reg[25]_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[8]_i_1_CO_UNCONNECTED ;

initial begin
 $sdf_annotate("top_module_time_impl.sdf",,,,"tool_control");
end
  OBUF \activeState_OBUF[0]_inst 
       (.I(activeState_OBUF[0]),
        .O(activeState[0]));
  OBUF \activeState_OBUF[10]_inst 
       (.I(activeState_OBUF[10]),
        .O(activeState[10]));
  OBUF \activeState_OBUF[11]_inst 
       (.I(activeState_OBUF[11]),
        .O(activeState[11]));
  OBUF \activeState_OBUF[12]_inst 
       (.I(activeState_OBUF[12]),
        .O(activeState[12]));
  OBUF \activeState_OBUF[13]_inst 
       (.I(1'b0),
        .O(activeState[13]));
  OBUF \activeState_OBUF[14]_inst 
       (.I(1'b0),
        .O(activeState[14]));
  OBUF \activeState_OBUF[15]_inst 
       (.I(1'b0),
        .O(activeState[15]));
  OBUF \activeState_OBUF[1]_inst 
       (.I(activeState_OBUF[1]),
        .O(activeState[1]));
  OBUF \activeState_OBUF[2]_inst 
       (.I(activeState_OBUF[2]),
        .O(activeState[2]));
  OBUF \activeState_OBUF[3]_inst 
       (.I(activeState_OBUF[3]),
        .O(activeState[3]));
  OBUF \activeState_OBUF[4]_inst 
       (.I(activeState_OBUF[4]),
        .O(activeState[4]));
  OBUF \activeState_OBUF[5]_inst 
       (.I(activeState_OBUF[5]),
        .O(activeState[5]));
  OBUF \activeState_OBUF[6]_inst 
       (.I(activeState_OBUF[6]),
        .O(activeState[6]));
  OBUF \activeState_OBUF[7]_inst 
       (.I(activeState_OBUF[7]),
        .O(activeState[7]));
  OBUF \activeState_OBUF[8]_inst 
       (.I(activeState_OBUF[8]),
        .O(activeState[8]));
  OBUF \activeState_OBUF[9]_inst 
       (.I(activeState_OBUF[9]),
        .O(activeState[9]));
  OBUF \an_OBUF[0]_inst 
       (.I(an_OBUF[0]),
        .O(an[0]));
  OBUF \an_OBUF[1]_inst 
       (.I(an_OBUF[1]),
        .O(an[1]));
  OBUF \an_OBUF[2]_inst 
       (.I(an_OBUF[2]),
        .O(an[2]));
  OBUF \an_OBUF[3]_inst 
       (.I(an_OBUF[3]),
        .O(an[3]));
  IBUF btn_d_IBUF_inst
       (.I(btn_d),
        .O(btn_d_IBUF));
  IBUF btn_l_IBUF_inst
       (.I(btn_l),
        .O(btn_l_IBUF));
  IBUF btn_m_IBUF_inst
       (.I(btn_m),
        .O(btn_m_IBUF));
  IBUF btn_r_IBUF_inst
       (.I(btn_r),
        .O(btn_r_IBUF));
  IBUF btn_u_IBUF_inst
       (.I(btn_u),
        .O(btn_u_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    clkOut_i_1
       (.I0(\count[0]_i_2_n_0 ),
        .I1(\count_reg_n_0_[0] ),
        .I2(clkOut_reg_n_0_BUFG_inst_n_0),
        .O(clkOut_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clkOut_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clkOut_i_1_n_0),
        .Q(clkOut_reg_n_0_BUFG_inst_n_0),
        .R(1'b0));
  BUFG clkOut_reg_n_0_BUFG_inst
       (.I(clkOut_reg_n_0_BUFG_inst_n_0),
        .O(clkOut_reg_n_0_BUFG));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[0]_i_1 
       (.I0(\count[0]_i_2_n_0 ),
        .I1(\count_reg_n_0_[0] ),
        .O(count));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \count[0]_i_2 
       (.I0(\count[0]_i_3_n_0 ),
        .I1(\count_reg_n_0_[5] ),
        .I2(\count_reg_n_0_[4] ),
        .I3(\count_reg_n_0_[7] ),
        .I4(\count_reg_n_0_[6] ),
        .I5(\count[0]_i_4_n_0 ),
        .O(\count[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFFF)) 
    \count[0]_i_3 
       (.I0(\count[0]_i_5_n_0 ),
        .I1(\count_reg_n_0_[9] ),
        .I2(\count_reg_n_0_[8] ),
        .I3(\count_reg_n_0_[11] ),
        .I4(\count_reg_n_0_[10] ),
        .I5(\count[0]_i_6_n_0 ),
        .O(\count[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count[0]_i_4 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[24] ),
        .I2(\count_reg_n_0_[25] ),
        .I3(\count_reg_n_0_[3] ),
        .I4(\count_reg_n_0_[2] ),
        .O(\count[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \count[0]_i_5 
       (.I0(\count_reg_n_0_[13] ),
        .I1(\count_reg_n_0_[12] ),
        .I2(\count_reg_n_0_[15] ),
        .I3(\count_reg_n_0_[14] ),
        .O(\count[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF7FF)) 
    \count[0]_i_6 
       (.I0(\count_reg_n_0_[18] ),
        .I1(\count_reg_n_0_[19] ),
        .I2(\count_reg_n_0_[16] ),
        .I3(\count_reg_n_0_[17] ),
        .I4(\count[0]_i_7_n_0 ),
        .O(\count[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \count[0]_i_7 
       (.I0(\count_reg_n_0_[21] ),
        .I1(\count_reg_n_0_[20] ),
        .I2(\count_reg_n_0_[23] ),
        .I3(\count_reg_n_0_[22] ),
        .O(\count[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \count[25]_i_1 
       (.I0(\count[0]_i_2_n_0 ),
        .I1(\count_reg_n_0_[0] ),
        .O(clkOut));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count),
        .Q(\count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(\count_reg_n_0_[10] ),
        .R(clkOut));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(\count_reg_n_0_[11] ),
        .R(clkOut));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(\count_reg_n_0_[12] ),
        .R(clkOut));
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\NLW_count_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_1_n_4 ,\count_reg[12]_i_1_n_5 ,\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S({\count_reg_n_0_[12] ,\count_reg_n_0_[11] ,\count_reg_n_0_[10] ,\count_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_7 ),
        .Q(\count_reg_n_0_[13] ),
        .R(clkOut));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_6 ),
        .Q(\count_reg_n_0_[14] ),
        .R(clkOut));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_5 ),
        .Q(\count_reg_n_0_[15] ),
        .R(clkOut));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_4 ),
        .Q(\count_reg_n_0_[16] ),
        .R(clkOut));
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO({\count_reg[16]_i_1_n_0 ,\NLW_count_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[16]_i_1_n_4 ,\count_reg[16]_i_1_n_5 ,\count_reg[16]_i_1_n_6 ,\count_reg[16]_i_1_n_7 }),
        .S({\count_reg_n_0_[16] ,\count_reg_n_0_[15] ,\count_reg_n_0_[14] ,\count_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_7 ),
        .Q(\count_reg_n_0_[17] ),
        .R(clkOut));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_6 ),
        .Q(\count_reg_n_0_[18] ),
        .R(clkOut));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_5 ),
        .Q(\count_reg_n_0_[19] ),
        .R(clkOut));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(\count_reg_n_0_[1] ),
        .R(clkOut));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_4 ),
        .Q(\count_reg_n_0_[20] ),
        .R(clkOut));
  CARRY4 \count_reg[20]_i_1 
       (.CI(\count_reg[16]_i_1_n_0 ),
        .CO({\count_reg[20]_i_1_n_0 ,\NLW_count_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[20]_i_1_n_4 ,\count_reg[20]_i_1_n_5 ,\count_reg[20]_i_1_n_6 ,\count_reg[20]_i_1_n_7 }),
        .S({\count_reg_n_0_[20] ,\count_reg_n_0_[19] ,\count_reg_n_0_[18] ,\count_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[24]_i_1_n_7 ),
        .Q(\count_reg_n_0_[21] ),
        .R(clkOut));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[24]_i_1_n_6 ),
        .Q(\count_reg_n_0_[22] ),
        .R(clkOut));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[24]_i_1_n_5 ),
        .Q(\count_reg_n_0_[23] ),
        .R(clkOut));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[24]_i_1_n_4 ),
        .Q(\count_reg_n_0_[24] ),
        .R(clkOut));
  CARRY4 \count_reg[24]_i_1 
       (.CI(\count_reg[20]_i_1_n_0 ),
        .CO({\count_reg[24]_i_1_n_0 ,\NLW_count_reg[24]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[24]_i_1_n_4 ,\count_reg[24]_i_1_n_5 ,\count_reg[24]_i_1_n_6 ,\count_reg[24]_i_1_n_7 }),
        .S({\count_reg_n_0_[24] ,\count_reg_n_0_[23] ,\count_reg_n_0_[22] ,\count_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[25]_i_2_n_7 ),
        .Q(\count_reg_n_0_[25] ),
        .R(clkOut));
  CARRY4 \count_reg[25]_i_2 
       (.CI(\count_reg[24]_i_1_n_0 ),
        .CO(\NLW_count_reg[25]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg[25]_i_2_O_UNCONNECTED [3:1],\count_reg[25]_i_2_n_7 }),
        .S({1'b0,1'b0,1'b0,\count_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(\count_reg_n_0_[2] ),
        .R(clkOut));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(\count_reg_n_0_[3] ),
        .R(clkOut));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(\count_reg_n_0_[4] ),
        .R(clkOut));
  CARRY4 \count_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\count_reg[4]_i_1_n_0 ,\NLW_count_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\count_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S({\count_reg_n_0_[4] ,\count_reg_n_0_[3] ,\count_reg_n_0_[2] ,\count_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(\count_reg_n_0_[5] ),
        .R(clkOut));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(\count_reg_n_0_[6] ),
        .R(clkOut));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(\count_reg_n_0_[7] ),
        .R(clkOut));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(\count_reg_n_0_[8] ),
        .R(clkOut));
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\NLW_count_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S({\count_reg_n_0_[8] ,\count_reg_n_0_[7] ,\count_reg_n_0_[6] ,\count_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(\count_reg_n_0_[9] ),
        .R(clkOut));
  debouncer d
       (.CLK(clkOut_reg_n_0_BUFG),
        .btn_d_IBUF(btn_d_IBUF),
        .q1(q1),
        .q1_0(q1_3),
        .q2(q2),
        .q2_1(q2_2),
        .q_reg(u_n_2),
        .\state_reg[0] (d_n_2));
  OBUF dp_OBUF_inst
       (.I(1'b1),
        .O(dp));
  debouncer_0 l
       (.CLK(clkOut_reg_n_0_BUFG),
        .btn_l_IBUF(btn_l_IBUF),
        .q1(q1_1),
        .q2(q2_0));
  debouncer_1 m
       (.CLK(clkOut_reg_n_0_BUFG),
        .btn_m_IBUF(btn_m_IBUF),
        .q1(q1_3),
        .q1_1(q1),
        .q2(q2_2),
        .q2_0(q2),
        .q_reg(u_n_3),
        .\state_reg[1] (m_n_2),
        .\state_reg[1]_0 (prc_n_0),
        .\state_reg[2] (m_n_3));
  processor prc
       (.CLK(clkOut_reg_n_0_BUFG),
        .Q(activeState_OBUF),
        .q_reg(d_n_2),
        .q_reg_0(m_n_3),
        .q_reg_1(r_n_2),
        .q_reg_2(m_n_2),
        .seg_OBUF(seg_OBUF),
        .\select_reg[0] (svn_n_5),
        .\select_reg[1] (svn_n_4),
        .\state_reg[1] (prc_n_0),
        .sw_IBUF(sw_IBUF));
  debouncer_2 r
       (.CLK(clkOut_reg_n_0_BUFG),
        .btn_r_IBUF(btn_r_IBUF),
        .q1(q1_5),
        .q1_0(q1_1),
        .q1_2(q1_7),
        .q2(q2_4),
        .q2_1(q2_0),
        .q2_3(q2_6),
        .\state_reg[2] (r_n_2));
  OBUF \seg_OBUF[0]_inst 
       (.I(seg_OBUF[0]),
        .O(seg[0]));
  OBUF \seg_OBUF[1]_inst 
       (.I(seg_OBUF[1]),
        .O(seg[1]));
  OBUF \seg_OBUF[2]_inst 
       (.I(seg_OBUF[2]),
        .O(seg[2]));
  OBUF \seg_OBUF[3]_inst 
       (.I(seg_OBUF[3]),
        .O(seg[3]));
  OBUF \seg_OBUF[4]_inst 
       (.I(seg_OBUF[4]),
        .O(seg[4]));
  OBUF \seg_OBUF[5]_inst 
       (.I(seg_OBUF[5]),
        .O(seg[5]));
  OBUF \seg_OBUF[6]_inst 
       (.I(seg_OBUF[6]),
        .O(seg[6]));
  seven_seg_disp svn
       (.an_OBUF(an_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\select_reg[1]_0 (svn_n_4),
        .\select_reg[1]_1 (svn_n_5));
  IBUF \sw_IBUF[0]_inst 
       (.I(sw[0]),
        .O(sw_IBUF[0]));
  IBUF \sw_IBUF[10]_inst 
       (.I(sw[10]),
        .O(sw_IBUF[10]));
  IBUF \sw_IBUF[11]_inst 
       (.I(sw[11]),
        .O(sw_IBUF[11]));
  IBUF \sw_IBUF[12]_inst 
       (.I(sw[12]),
        .O(sw_IBUF[12]));
  IBUF \sw_IBUF[13]_inst 
       (.I(sw[13]),
        .O(sw_IBUF[13]));
  IBUF \sw_IBUF[14]_inst 
       (.I(sw[14]),
        .O(sw_IBUF[14]));
  IBUF \sw_IBUF[15]_inst 
       (.I(sw[15]),
        .O(sw_IBUF[15]));
  IBUF \sw_IBUF[1]_inst 
       (.I(sw[1]),
        .O(sw_IBUF[1]));
  IBUF \sw_IBUF[2]_inst 
       (.I(sw[2]),
        .O(sw_IBUF[2]));
  IBUF \sw_IBUF[3]_inst 
       (.I(sw[3]),
        .O(sw_IBUF[3]));
  IBUF \sw_IBUF[4]_inst 
       (.I(sw[4]),
        .O(sw_IBUF[4]));
  IBUF \sw_IBUF[5]_inst 
       (.I(sw[5]),
        .O(sw_IBUF[5]));
  IBUF \sw_IBUF[6]_inst 
       (.I(sw[6]),
        .O(sw_IBUF[6]));
  IBUF \sw_IBUF[7]_inst 
       (.I(sw[7]),
        .O(sw_IBUF[7]));
  IBUF \sw_IBUF[8]_inst 
       (.I(sw[8]),
        .O(sw_IBUF[8]));
  IBUF \sw_IBUF[9]_inst 
       (.I(sw[9]),
        .O(sw_IBUF[9]));
  debouncer_3 u
       (.CLK(clkOut_reg_n_0_BUFG),
        .btn_u_IBUF(btn_u_IBUF),
        .q1(q1_7),
        .q1_0(q1_5),
        .q2(q2_6),
        .q2_1(q2_4),
        .\state_reg[0] (u_n_2),
        .\state_reg[1] (u_n_3));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
