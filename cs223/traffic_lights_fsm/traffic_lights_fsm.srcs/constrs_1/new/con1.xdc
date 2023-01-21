# Clock signal 
set_property PACKAGE_PIN W5 [get_ports clk]  	 	 	 	  
 	set_property IOSTANDARD LVCMOS33 [get_ports clk] 
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk] 

# Switches 
set_property PACKAGE_PIN U1 [get_ports reset] 	 	 	 	 	 
 	set_property IOSTANDARD LVCMOS33 [get_ports reset] 
set_property PACKAGE_PIN T1 [get_ports sb] 	 	 	 	 	 
 	set_property IOSTANDARD LVCMOS33 [get_ports sb] 
set_property PACKAGE_PIN R2 [get_ports sa] 	 	 	 	 	 
 	set_property IOSTANDARD LVCMOS33 [get_ports sa] 
  
# LEDs 
set_property PACKAGE_PIN U16 [get_ports ledB3]  	 	 	 	 
 	set_property IOSTANDARD LVCMOS33 [get_ports ledB3] 
set_property PACKAGE_PIN E19 [get_ports ledB2]  	 	 	 	 
 	set_property IOSTANDARD LVCMOS33 [get_ports ledB2] 
set_property PACKAGE_PIN U19 [get_ports ledB1]  	 	 	 	 
 	set_property IOSTANDARD LVCMOS33 [get_ports ledB1] 

set_property PACKAGE_PIN N3 [get_ports ledA3]  	 	 	 	 
 	set_property IOSTANDARD LVCMOS33 [get_ports ledA3] 
set_property PACKAGE_PIN P1 [get_ports ledA2]  	 	 	 	 
 	set_property IOSTANDARD LVCMOS33 [get_ports ledA2] 
set_property PACKAGE_PIN L1 [get_ports ledA1]  	 	 	 	  			
	set_property IOSTANDARD LVCMOS33 [get_ports ledA1] 