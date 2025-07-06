###################################################################

# Created by write_sdc on Sat Mar 15 16:26:49 2025

###################################################################
set sdc_version 2.1

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA
create_clock [get_ports clk]  -period 4  -waveform {0 2}
set_clock_uncertainty 0.35  [get_clocks clk]
set_false_path -hold   -from [get_ports reset]
set_false_path -hold   -to [list [get_ports {pc_out[15]}] [get_ports {pc_out[14]}] [get_ports        \
{pc_out[13]}] [get_ports {pc_out[12]}] [get_ports {pc_out[11]}] [get_ports     \
{pc_out[10]}] [get_ports {pc_out[9]}] [get_ports {pc_out[8]}] [get_ports       \
{pc_out[7]}] [get_ports {pc_out[6]}] [get_ports {pc_out[5]}] [get_ports        \
{pc_out[4]}] [get_ports {pc_out[3]}] [get_ports {pc_out[2]}] [get_ports        \
{pc_out[1]}] [get_ports {pc_out[0]}] [get_ports {alu_result[15]}] [get_ports   \
{alu_result[14]}] [get_ports {alu_result[13]}] [get_ports {alu_result[12]}]    \
[get_ports {alu_result[11]}] [get_ports {alu_result[10]}] [get_ports           \
{alu_result[9]}] [get_ports {alu_result[8]}] [get_ports {alu_result[7]}]       \
[get_ports {alu_result[6]}] [get_ports {alu_result[5]}] [get_ports             \
{alu_result[4]}] [get_ports {alu_result[3]}] [get_ports {alu_result[2]}]       \
[get_ports {alu_result[1]}] [get_ports {alu_result[0]}]]
set_input_delay -clock clk  -max 2  [get_ports reset]
set_output_delay -clock clk  -max 2  [get_ports {pc_out[15]}]
set_output_delay -clock clk  -max 2  [get_ports {pc_out[14]}]
set_output_delay -clock clk  -max 2  [get_ports {pc_out[13]}]
set_output_delay -clock clk  -max 2  [get_ports {pc_out[12]}]
set_output_delay -clock clk  -max 2  [get_ports {pc_out[11]}]
set_output_delay -clock clk  -max 2  [get_ports {pc_out[10]}]
set_output_delay -clock clk  -max 2  [get_ports {pc_out[9]}]
set_output_delay -clock clk  -max 2  [get_ports {pc_out[8]}]
set_output_delay -clock clk  -max 2  [get_ports {pc_out[7]}]
set_output_delay -clock clk  -max 2  [get_ports {pc_out[6]}]
set_output_delay -clock clk  -max 2  [get_ports {pc_out[5]}]
set_output_delay -clock clk  -max 2  [get_ports {pc_out[4]}]
set_output_delay -clock clk  -max 2  [get_ports {pc_out[3]}]
set_output_delay -clock clk  -max 2  [get_ports {pc_out[2]}]
set_output_delay -clock clk  -max 2  [get_ports {pc_out[1]}]
set_output_delay -clock clk  -max 2  [get_ports {pc_out[0]}]
set_output_delay -clock clk  -max 2  [get_ports {alu_result[15]}]
set_output_delay -clock clk  -max 2  [get_ports {alu_result[14]}]
set_output_delay -clock clk  -max 2  [get_ports {alu_result[13]}]
set_output_delay -clock clk  -max 2  [get_ports {alu_result[12]}]
set_output_delay -clock clk  -max 2  [get_ports {alu_result[11]}]
set_output_delay -clock clk  -max 2  [get_ports {alu_result[10]}]
set_output_delay -clock clk  -max 2  [get_ports {alu_result[9]}]
set_output_delay -clock clk  -max 2  [get_ports {alu_result[8]}]
set_output_delay -clock clk  -max 2  [get_ports {alu_result[7]}]
set_output_delay -clock clk  -max 2  [get_ports {alu_result[6]}]
set_output_delay -clock clk  -max 2  [get_ports {alu_result[5]}]
set_output_delay -clock clk  -max 2  [get_ports {alu_result[4]}]
set_output_delay -clock clk  -max 2  [get_ports {alu_result[3]}]
set_output_delay -clock clk  -max 2  [get_ports {alu_result[2]}]
set_output_delay -clock clk  -max 2  [get_ports {alu_result[1]}]
set_output_delay -clock clk  -max 2  [get_ports {alu_result[0]}]
