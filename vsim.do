vsim work.testbench
radix -hexadecimal
set UserTimerUnit ns
set RunLength 1000ns
view objects wave


add wave /testbench/CLK
add wave /testbench/RESET
add wave /testbench/PRin
add wave /testbench/PRout
