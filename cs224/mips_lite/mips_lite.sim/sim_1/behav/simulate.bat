@echo off
set xv_path=C:\\Xilinx\\Vivado\\2015.4\\bin
call %xv_path%/xsim mipsLiteSimulator_behav -key {Behavioral:sim_1:Functional:mipsLiteSimulator} -tclbatch mipsLiteSimulator.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
