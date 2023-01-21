## This file is a general .xdc for the Basys3 rev B board
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

# Clock signal
set_property PACKAGE_PIN W5 [get_ports clk]							
	set_property IOSTANDARD LVCMOS33 [get_ports clk]
	create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]

 
	
#7 segment display
set_property PACKAGE_PIN W7 [get_ports {seg[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seg[0]}]
set_property PACKAGE_PIN W6 [get_ports {seg[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seg[1]}]
set_property PACKAGE_PIN U8 [get_ports {seg[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seg[2]}]
set_property PACKAGE_PIN V8 [get_ports {seg[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seg[3]}]
set_property PACKAGE_PIN U5 [get_ports {seg[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seg[4]}]
set_property PACKAGE_PIN V5 [get_ports {seg[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seg[5]}]
set_property PACKAGE_PIN U7 [get_ports {seg[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seg[6]}]

set_property PACKAGE_PIN V7 [get_ports dp]							
	set_property IOSTANDARD LVCMOS33 [get_ports dp]

set_property PACKAGE_PIN U2 [get_ports {an[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an[0]}]
set_property PACKAGE_PIN U4 [get_ports {an[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an[1]}]
set_property PACKAGE_PIN V4 [get_ports {an[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an[2]}]
set_property PACKAGE_PIN W4 [get_ports {an[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an[3]}]


##Buttons
set_property PACKAGE_PIN U18 [get_ports signal]						
	set_property IOSTANDARD LVCMOS33 [get_ports signal]
set_property PACKAGE_PIN T18 [get_ports reset]						
	set_property IOSTANDARD LVCMOS33 [get_ports reset]
	
# LEDs 
set_property PACKAGE_PIN U16 [get_ports memwrite]                      
     set_property IOSTANDARD LVCMOS33 [get_ports memwrite] 
#set_property PACKAGE_PIN E19 [get_ports {activeState[1]}]                      
#     set_property IOSTANDARD LVCMOS33 [get_ports {activeState[1]}] 
#set_property PACKAGE_PIN U19 [get_ports {activeState[2]}]                      
#     set_property IOSTANDARD LVCMOS33 [get_ports {activeState[2]}] 
#set_property PACKAGE_PIN V19 [get_ports {activeState[3]}]                      
#     set_property IOSTANDARD LVCMOS33 [get_ports {activeState[3]}] 
#set_property PACKAGE_PIN W18 [get_ports {activeState[4]}]                      
#     set_property IOSTANDARD LVCMOS33 [get_ports {activeState[4]}] 
#set_property PACKAGE_PIN U15 [get_ports {activeState[5]}]                      
#     set_property IOSTANDARD LVCMOS33 [get_ports {activeState[5]}] 
#set_property PACKAGE_PIN U14 [get_ports {activeState[6]}]                      
#     set_property IOSTANDARD LVCMOS33 [get_ports {activeState[6]}] 
#set_property PACKAGE_PIN V14 [get_ports {activeState[7]}]                      
#     set_property IOSTANDARD LVCMOS33 [get_ports {activeState[7]}] 
#set_property PACKAGE_PIN V13 [get_ports {activeState[8]}]                      
#     set_property IOSTANDARD LVCMOS33 [get_ports {activeState[8]}] 
#set_property PACKAGE_PIN V3 [get_ports {activeState[9]}]                          
#     set_property IOSTANDARD LVCMOS33 [get_ports {activeState[9]}] 
#set_property PACKAGE_PIN W3 [get_ports {activeState[10]}]                      
#     set_property IOSTANDARD LVCMOS33 [get_ports {activeState[10]}] 
#set_property PACKAGE_PIN U3 [get_ports {activeState[11]}]                      
#     set_property IOSTANDARD LVCMOS33 [get_ports {activeState[11]}] 
#set_property PACKAGE_PIN P3 [get_ports {activeState[12]}]                      
#     set_property IOSTANDARD LVCMOS33 [get_ports {activeState[12]}] 
#set_property PACKAGE_PIN N3 [get_ports {activeState[13]}]                      
#     set_property IOSTANDARD LVCMOS33 [get_ports {activeState[13]}] 
# set_property PACKAGE_PIN P1 [get_ports {activeState[14]}]  	 	 	 	 
#      set_property IOSTANDARD LVCMOS33 [get_ports {activeState[14]}] 
# set_property PACKAGE_PIN L1 [get_ports {activeState[15]}]                                   
#     set_property IOSTANDARD LVCMOS33 [get_ports {activeState[15]}] 