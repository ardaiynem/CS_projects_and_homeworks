
y
Command: %s
53*	vivadotcl2H
4synth_design -top serial_adder -part xc7a35tcpg236-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-349h px? 
?
%s*synth2?
wStarting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:04 . Memory (MB): peak = 274.090 ; gain = 67.070
2default:defaulth px? 
?
synthesizing module '%s'638*oasys2 
serial_adder2default:default2d
NC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/serial_adder.sv2default:default2
362default:default8@Z8-638h px? 
?
synthesizing module '%s'638*oasys2"
shift_register2default:default2f
PC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/shift_register.sv2default:default2
222default:default8@Z8-638h px? 
?
synthesizing module '%s'638*oasys2
d_ff2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
232default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
d_ff2default:default2
12default:default2
12default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
232default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2"
shift_register2default:default2
22default:default2
12default:default2f
PC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/shift_register.sv2default:default2
222default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2
fa2default:default2Z
DC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/fa.sv2default:default2
232default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
fa2default:default2
32default:default2
12default:default2Z
DC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/fa.sv2default:default2
232default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2 
serial_adder2default:default2
42default:default2
12default:default2d
NC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/serial_adder.sv2default:default2
362default:default8@Z8-256h px? 
?
%s*synth2?
xFinished RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 310.578 ; gain = 103.559
2default:defaulth px? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 310.578 ; gain = 103.559
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
Loading part %s157*device2#
xc7a35tcpg236-12default:defaultZ21-403h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
Parsing XDC File [%s]
179*designutils2]
IC:/Users/innsolit/serial_adder/serial_adder.srcs/constrs_1/new/con_sa.xdc2default:defaultZ20-179h px? 
?
No ports matched '%s'.
584*	planAhead2
clk2default:default2_
IC:/Users/innsolit/serial_adder/serial_adder.srcs/constrs_1/new/con_sa.xdc2default:default2
362default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2_
IC:/Users/innsolit/serial_adder/serial_adder.srcs/constrs_1/new/con_sa.xdc2default:default2
362default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
clk2default:default2_
IC:/Users/innsolit/serial_adder/serial_adder.srcs/constrs_1/new/con_sa.xdc2default:default2
372default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2_
IC:/Users/innsolit/serial_adder/serial_adder.srcs/constrs_1/new/con_sa.xdc2default:default2
372default:default8@Z17-55h px?
?
Finished Parsing XDC File [%s]
178*designutils2]
IC:/Users/innsolit/serial_adder/serial_adder.srcs/constrs_1/new/con_sa.xdc2default:defaultZ20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2]
IC:/Users/innsolit/serial_adder/serial_adder.srcs/constrs_1/new/con_sa.xdc2default:default22
.Xil/serial_adder_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2
00:00:002default:default2
588.1212default:default2
0.0002default:defaultZ17-268h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
~Finished Constraint Validation : Time (s): cpu = 00:00:09 ; elapsed = 00:00:09 . Memory (MB): peak = 588.121 ; gain = 381.102
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Loading part: xc7a35tcpg236-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:09 ; elapsed = 00:00:09 . Memory (MB): peak = 588.121 ; gain = 381.102
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:09 ; elapsed = 00:00:09 . Memory (MB): peak = 588.121 ; gain = 381.102
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:09 ; elapsed = 00:00:09 . Memory (MB): peak = 588.121 ; gain = 381.102
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 2     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 25    
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
? 
9
%s
*synth2!
Module d_ff 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
7
%s
*synth2
Module fa 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 2     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2j
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Start Parallel Synthesis Optimization  : Time (s): cpu = 00:00:09 ; elapsed = 00:00:09 . Memory (MB): peak = 588.121 ; gain = 381.102
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
N
%s
*synth26
"Start Cross Boundary Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary Optimization : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 588.121 ; gain = 381.102
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
~Finished Parallel Reinference  : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 588.121 ; gain = 381.102
2default:defaulth px? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
D
%s
*synth2,
Start Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
sr_A/f8/q_reg2default:default2 
serial_adder2default:defaultZ8-3332h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
Q2default:default2
1st2default:default2#
sr_A/f8/q_reg/Q2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-3352h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-3352h px? 
?
Lmulti-driven net %s is connected to constant driver, other driver is ignored4012*oasys2
Q2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-5559h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
sr_A/f7/q_reg2default:default2 
serial_adder2default:defaultZ8-3332h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
Q2default:default2
1st2default:default2#
sr_A/f7/q_reg/Q2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-3352h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-3352h px? 
?
Lmulti-driven net %s is connected to constant driver, other driver is ignored4012*oasys2
Q2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-5559h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
sr_A/f6/q_reg2default:default2 
serial_adder2default:defaultZ8-3332h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
Q2default:default2
1st2default:default2#
sr_A/f6/q_reg/Q2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-3352h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-3352h px? 
?
Lmulti-driven net %s is connected to constant driver, other driver is ignored4012*oasys2
Q2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-5559h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
sr_A/f5/q_reg2default:default2 
serial_adder2default:defaultZ8-3332h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
Q2default:default2
1st2default:default2#
sr_A/f5/q_reg/Q2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-3352h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-3352h px? 
?
Lmulti-driven net %s is connected to constant driver, other driver is ignored4012*oasys2
Q2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-5559h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
sr_A/f4/q_reg2default:default2 
serial_adder2default:defaultZ8-3332h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
Q2default:default2
1st2default:default2#
sr_A/f4/q_reg/Q2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-3352h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-3352h px? 
?
Lmulti-driven net %s is connected to constant driver, other driver is ignored4012*oasys2
Q2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-5559h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
sr_A/f3/q_reg2default:default2 
serial_adder2default:defaultZ8-3332h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
Q2default:default2
1st2default:default2#
sr_A/f3/q_reg/Q2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-3352h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-3352h px? 
?
Lmulti-driven net %s is connected to constant driver, other driver is ignored4012*oasys2
Q2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-5559h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
sr_A/f2/q_reg2default:default2 
serial_adder2default:defaultZ8-3332h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
Q2default:default2
1st2default:default2#
sr_A/f2/q_reg/Q2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-3352h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-3352h px? 
?
Lmulti-driven net %s is connected to constant driver, other driver is ignored4012*oasys2
Q2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-5559h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
sr_A/f1/q_reg2default:default2 
serial_adder2default:defaultZ8-3332h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
Q2default:default2
1st2default:default2#
sr_A/f1/q_reg/Q2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-3352h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-3352h px? 
?
Lmulti-driven net %s is connected to constant driver, other driver is ignored4012*oasys2
Q2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-5559h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
sr_A/d_reg[7]2default:default2 
serial_adder2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
sr_A/d_reg[6]2default:default2 
serial_adder2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
sr_A/d_reg[5]2default:default2 
serial_adder2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
sr_A/d_reg[4]2default:default2 
serial_adder2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
sr_A/d_reg[3]2default:default2 
serial_adder2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
sr_A/d_reg[2]2default:default2 
serial_adder2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
sr_A/d_reg[1]2default:default2 
serial_adder2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
sr_A/d_reg[0]2default:default2 
serial_adder2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
sr_B/f8/q_reg2default:default2 
serial_adder2default:defaultZ8-3332h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
Q2default:default2
1st2default:default2#
sr_B/f8/q_reg/Q2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-3352h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-3352h px? 
?
Lmulti-driven net %s is connected to constant driver, other driver is ignored4012*oasys2
Q2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-5559h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
sr_B/f7/q_reg2default:default2 
serial_adder2default:defaultZ8-3332h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
Q2default:default2
1st2default:default2#
sr_B/f7/q_reg/Q2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-3352h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-3352h px? 
?
Lmulti-driven net %s is connected to constant driver, other driver is ignored4012*oasys2
Q2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-5559h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
sr_B/f6/q_reg2default:default2 
serial_adder2default:defaultZ8-3332h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
Q2default:default2
1st2default:default2#
sr_B/f6/q_reg/Q2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-3352h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-3352h px? 
?
Lmulti-driven net %s is connected to constant driver, other driver is ignored4012*oasys2
Q2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-5559h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
sr_B/f5/q_reg2default:default2 
serial_adder2default:defaultZ8-3332h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
Q2default:default2
1st2default:default2#
sr_B/f5/q_reg/Q2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-3352h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-3352h px? 
?
Lmulti-driven net %s is connected to constant driver, other driver is ignored4012*oasys2
Q2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-5559h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
sr_B/f4/q_reg2default:default2 
serial_adder2default:defaultZ8-3332h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
Q2default:default2
1st2default:default2#
sr_B/f4/q_reg/Q2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-3352h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-3352h px? 
?
Lmulti-driven net %s is connected to constant driver, other driver is ignored4012*oasys2
Q2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-5559h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
sr_B/f3/q_reg2default:default2 
serial_adder2default:defaultZ8-3332h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
Q2default:default2
1st2default:default2#
sr_B/f3/q_reg/Q2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-3352h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-3352h px? 
?
Lmulti-driven net %s is connected to constant driver, other driver is ignored4012*oasys2
Q2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-5559h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
sr_B/f2/q_reg2default:default2 
serial_adder2default:defaultZ8-3332h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
Q2default:default2
1st2default:default2#
sr_B/f2/q_reg/Q2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-3352h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-3352h px? 
?
Lmulti-driven net %s is connected to constant driver, other driver is ignored4012*oasys2
Q2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-5559h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
sr_B/f1/q_reg2default:default2 
serial_adder2default:defaultZ8-3332h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
Q2default:default2
1st2default:default2#
sr_B/f1/q_reg/Q2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-3352h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-3352h px? 
?
Lmulti-driven net %s is connected to constant driver, other driver is ignored4012*oasys2
Q2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-5559h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
sr_B/d_reg[7]2default:default2 
serial_adder2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
sr_B/d_reg[6]2default:default2 
serial_adder2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
sr_B/d_reg[5]2default:default2 
serial_adder2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
sr_B/d_reg[4]2default:default2 
serial_adder2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
sr_B/d_reg[3]2default:default2 
serial_adder2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
sr_B/d_reg[2]2default:default2 
serial_adder2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
sr_B/d_reg[1]2default:default2 
serial_adder2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
sr_B/d_reg[0]2default:default2 
serial_adder2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
sr_S/f8/q_reg2default:default2 
serial_adder2default:defaultZ8-3332h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
Q2default:default2
1st2default:default2#
sr_S/f8/q_reg/Q2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-3352h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-3352h px? 
?
Lmulti-driven net %s is connected to constant driver, other driver is ignored4012*oasys2
Q2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-5559h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
sr_S/f7/q_reg2default:default2 
serial_adder2default:defaultZ8-3332h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
Q2default:default2
1st2default:default2#
sr_S/f7/q_reg/Q2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-3352h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-3352h px? 
?
Lmulti-driven net %s is connected to constant driver, other driver is ignored4012*oasys2
Q2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-5559h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
sr_S/f6/q_reg2default:default2 
serial_adder2default:defaultZ8-3332h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
Q2default:default2
1st2default:default2#
sr_S/f6/q_reg/Q2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-3352h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-3352h px? 
?
Lmulti-driven net %s is connected to constant driver, other driver is ignored4012*oasys2
Q2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-5559h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
sr_S/f5/q_reg2default:default2 
serial_adder2default:defaultZ8-3332h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
Q2default:default2
1st2default:default2#
sr_S/f5/q_reg/Q2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-3352h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-3352h px? 
?
Lmulti-driven net %s is connected to constant driver, other driver is ignored4012*oasys2
Q2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-5559h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
sr_S/f4/q_reg2default:default2 
serial_adder2default:defaultZ8-3332h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
Q2default:default2
1st2default:default2#
sr_S/f4/q_reg/Q2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-3352h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-3352h px? 
?
Lmulti-driven net %s is connected to constant driver, other driver is ignored4012*oasys2
Q2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-5559h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
sr_S/f3/q_reg2default:default2 
serial_adder2default:defaultZ8-3332h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
Q2default:default2
1st2default:default2#
sr_S/f3/q_reg/Q2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-3352h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-3352h px? 
?
Lmulti-driven net %s is connected to constant driver, other driver is ignored4012*oasys2
Q2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-5559h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
sr_S/f2/q_reg2default:default2 
serial_adder2default:defaultZ8-3332h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
Q2default:default2
1st2default:default2#
sr_S/f2/q_reg/Q2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-3352h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-3352h px? 
?
Lmulti-driven net %s is connected to constant driver, other driver is ignored4012*oasys2
Q2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-5559h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
sr_S/f1/q_reg2default:default2 
serial_adder2default:defaultZ8-3332h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
Q2default:default2
1st2default:default2#
sr_S/f1/q_reg/Q2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-3352h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-3352h px? 
?
Lmulti-driven net %s is connected to constant driver, other driver is ignored4012*oasys2
Q2default:default2\
FC:/Users/innsolit/serial_adder/serial_adder.srcs/sources_1/new/d_ff.sv2default:default2
282default:default8@Z8-5559h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
sr_S/d_reg[7]2default:default2 
serial_adder2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
sr_S/d_reg[6]2default:default2 
serial_adder2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
sr_S/d_reg[5]2default:default2 
serial_adder2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
sr_S/d_reg[4]2default:default2 
serial_adder2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
sr_S/d_reg[3]2default:default2 
serial_adder2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
sr_S/d_reg[2]2default:default2 
serial_adder2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
sr_S/d_reg[1]2default:default2 
serial_adder2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
sr_S/d_reg[0]2default:default2 
serial_adder2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
d_ff1/q_reg2default:default2 
serial_adder2default:defaultZ8-3332h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
zFinished Area Optimization : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 588.121 ; gain = 381.102
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Parallel Area Optimization  : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 588.121 ; gain = 381.102
2default:defaulth px? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:15 ; elapsed = 00:00:16 . Memory (MB): peak = 588.121 ; gain = 381.102
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Timing Optimization : Time (s): cpu = 00:00:15 ; elapsed = 00:00:16 . Memory (MB): peak = 588.121 ; gain = 381.102
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
{Finished Technology Mapping : Time (s): cpu = 00:00:15 ; elapsed = 00:00:16 . Memory (MB): peak = 588.121 ; gain = 381.102
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Parallel Technology Mapping Optimization  : Time (s): cpu = 00:00:15 ; elapsed = 00:00:16 . Memory (MB): peak = 588.121 ; gain = 381.102
2default:defaulth px? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Parallel Synthesis Optimization  : Time (s): cpu = 00:00:15 ; elapsed = 00:00:16 . Memory (MB): peak = 588.121 ; gain = 381.102
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
uFinished IO Insertion : Time (s): cpu = 00:00:16 ; elapsed = 00:00:16 . Memory (MB): peak = 588.121 ; gain = 381.102
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:16 ; elapsed = 00:00:16 . Memory (MB): peak = 588.121 ; gain = 381.102
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:16 ; elapsed = 00:00:16 . Memory (MB): peak = 588.121 ; gain = 381.102
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:16 ; elapsed = 00:00:16 . Memory (MB): peak = 588.121 ; gain = 381.102
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:16 ; elapsed = 00:00:16 . Memory (MB): peak = 588.121 ; gain = 381.102
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:16 ; elapsed = 00:00:16 . Memory (MB): peak = 588.121 ; gain = 381.102
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
B
%s*synth2*
+------+-----+------+
2default:defaulth px? 
B
%s*synth2*
|      |Cell |Count |
2default:defaulth px? 
B
%s*synth2*
+------+-----+------+
2default:defaulth px? 
B
%s*synth2*
|1     |OBUF |     8|
2default:defaulth px? 
B
%s*synth2*
+------+-----+------+
2default:defaulth px? 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
? 
N
%s
*synth26
"+------+---------+-------+------+
2default:defaulth p
x
? 
N
%s
*synth26
"|      |Instance |Module |Cells |
2default:defaulth p
x
? 
N
%s
*synth26
"+------+---------+-------+------+
2default:defaulth p
x
? 
N
%s
*synth26
"|1     |top      |       |     8|
2default:defaulth p
x
? 
N
%s
*synth26
"+------+---------+-------+------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:16 ; elapsed = 00:00:16 . Memory (MB): peak = 588.121 ; gain = 381.102
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
t
%s
*synth2\
HSynthesis finished with 0 errors, 72 critical warnings and 49 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
~Synthesis Optimization Runtime : Time (s): cpu = 00:00:09 ; elapsed = 00:00:12 . Memory (MB): peak = 588.121 ; gain = 103.559
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Complete : Time (s): cpu = 00:00:16 ; elapsed = 00:00:16 . Memory (MB): peak = 588.121 ; gain = 381.102
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
182default:default2
512default:default2
742default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:152default:default2
00:00:152default:default2
588.1212default:default2
381.1022default:defaultZ17-268h px? 
?
oreport_utilization: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 588.121 ; gain = 0.000
*commonh px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Thu Apr 14 11:58:42 20222default:defaultZ17-206h px? 


End Record