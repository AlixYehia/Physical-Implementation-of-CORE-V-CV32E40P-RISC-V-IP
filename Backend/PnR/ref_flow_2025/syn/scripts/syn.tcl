set design mips_16

#set_app_var search_path "/home/standard_cell_libraries/NangateOpenCellLibrary_PDKv1_3_v2010_12/lib/Front_End/Liberty/NLDM"
#set_app_var search_path "/home/ICer/PDK/lib/Front_End/Liberty/NLDM"

#set_app_var search_path "/home/ICer/PDK/saed_14/hvt_ibex"
#set_app_var link_library "* saed14hvt_ss0p72vm40c.db"
#set_app_var target_library "saed14hvt_ss0p72vm40c.db"

set_app_var search_path "/home/ICer/PDK/saed_14/"
set_app_var link_library "* /home/ICer/PDK/saed_14/saed14rvt_ss0p6v125c.db"
set_app_var target_library "/home/ICer/PDK/saed_14/saed14rvt_ss0p6v125c.db"


sh rm -rf work
sh mkdir -p work
define_design_lib work -path ./work

set dc_allow_rtl_pg true
set hdlin_keep_power_ground_pins true

source /mnt/hgfs/VM_share/ASIC-implementation-of-CV32E40P-RISC-V-core--main/1-Synthesis/cons/dont_use_generic.tcl

analyze -library work -format verilog ../rtl/${design}.v
elaborate $design -lib work
current_design 

check_design
source -e -v ./cons/cons.tcl
link

compile -map_effort medium

report_area > ./report/synth_area.rpt
report_cell > ./report/synth_cells.rpt
report_qor  > ./report/synth_qor.rpt
report_resources > ./report/synth_resources.rpt
report_timing -max_paths 10 > ./report/synth_timing.rpt 
 
write_sdc  output/${design}.sdc 

define_name_rules  no_case -case_insensitive
change_names -rule no_case -hierarchy
change_names -rule verilog -hierarchy
set verilogout_no_tri	 true
set verilogout_equation  false

write -hierarchy -format verilog -output output/${design}.v 
#write -hierarchy -format verilog -output output/${design}_pg.v
write -f ddc -hierarchy -output output/${design}.ddc  
 return

exit
