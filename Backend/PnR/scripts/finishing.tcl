##############################################
########### 8. Finishing #####################
##############################################
set design cv32e40p_top

open_block ./${design}:${design}_7_primetime

copy_block -from_block ${design}:${design}_7_primetime -to_block ${design}_8_finished

current_block ${design}_8_finished


set_host_options -max_cores 12


remove_placement_spacing_rules -all 

## std filler
set pnr_std_fillers " */SAEDRVT14_FILL_ECO_18   */SAEDRVT14_FILL_ECO_15 */SAEDRVT14_FILL_ECO_12 */SAEDRVT14_FILL_ECO_9   */SAEDRVT14_FILL_ECO_2 */SAEDRVT14_FILL_ECO_1    */SAEDRVT14_FILL_NNWIV1Y2_2 */SAEDRVT14_FILL_NNWIV1Y2_3 */SAEDRVT14_FILL_NNWIY2_2 */SAEDRVT14_FILL_NNWIY2_3 */SAEDRVT14_FILL_NNWSPACERY2_7 */SAEDRVT14_FILL_NNWVDDBRKY2_3 */SAEDRVT14_FILLP2 */SAEDRVT14_FILLP3 */SAEDRVT14_FILL_SPACER_7 */SAEDRVT14_FILL_Y2_3 "

set std_fillers "  */SAEDRVT14_DCAP_PV1ECO_18   "
#foreach filler $pnr_std_fillers { lappend std_fillers "*/${filler}" }
create_stdcell_filler -lib_cell $std_fillers

remove_stdcell_fillers_with_violation
#######
create_stdcell_filler -lib_cell $pnr_std_fillers

connect_pg_net -net "VDD" [get_pins -hierarchical "*/VDD*"]
connect_pg_net -net "VSS" [get_pins -hierarchical "*/VSS"]

remove_stdcell_fillers_with_violation

#remove_cells [get_cells -of_objects $pnr_std_fillers]


##############################################
########### 9. Checks and Outputs ############
##############################################
set design cv32e40p_top
set_host_options -max_cores 4
#write_oasis or write_gds for ICC2

define_name_rules  no_case -case_insensitive
change_names -rule no_case -hierarchy
change_names -rule verilog -hierarchy
set verilogout_no_tri	 true
set verilogout_equation  false

sh mkdir -p outputs
sh mkdir -p reports/finished

write_verilog -top_module_first ./netlists/${design}_finished_icc2.v
write_verilog -exclude [list pg_objects all_physical_cells] ./outputs/${design}_icc2_no_phy.v
write_verilog -exclude pg_objects ./outputs/${design}_icc2_nopg.v

#extract_rc
write_parasitics -output ./outputs/${design} > outputs/spef_writing.rpt

#write_sdc -output ./outputs/cv32e40p_top_icc2.sdc

report_routing_rules -nosplit > reports/finished/${design}_routing_rules.rpt
report_cells > reports/finished/report_cells_finished.rpt
report_congestion > reports/finished/report_congestion_finished.rpt
report_timing -delay_type max -max_path 20 > reports/finished/setup_finished.rpt
report_timing -delay_type min -max_path 20 > reports/finished/hold_finished.rpt
report_utilization > reports/finished/routing_utilization.rpt
report_qor > reports/finished/${design}_qor_icc2.rpt
analyze_design_violations > reports/finished/analyze_design_violations_finished.rpt
report_constraints -all_violators > reports/finished/constraints.rpt



save_block -as ${design}_8_finished

close_blocks
save_lib
close_lib

exit
