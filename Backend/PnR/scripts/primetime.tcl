################################################
################ 7. PrimeTime   ################
################################################

set design cv32e40p_top

open_block ./${design}:${design}_6_routed

copy_block -from_block ${design}:${design}_6_routed -to_block ${design}_7_primetime

current_block ${design}_7_primetime


set_host_options -max_cores 12


source ../PrimeTime/output/eco.tcl


legalize_placement
check_legality
route_eco -reroute modified_nets_only
check_routes

connect_pg_net -net "VDD" [get_pins -hierarchical "*/VDD*"]
connect_pg_net -net "VSS" [get_pins -hierarchical "*/VSS*"]

check_lvs


#get_lib_cell -of_object core_i/id_stage_i/register_file_i/PLACE_HFSBUF_470_180
#size_cell core_i/id_stage_i/register_file_i/PLACE_HFSBUF_470_180 SAEDRVT14_BUF_4
#size_cell core_i/id_stage_i/register_file_i/PLACE_HFSINV_294_185 SAEDRVT14_INV_S_4

#  SAEDRVT14_BUF_3   and     SAEDRVT14_INV_S_2   cause   max_capacitance violation


write_verilog -top_module_first ./netlists/${design}_routed.v

report_cells > reports/routing/report_cells_routed.rpt
report_congestion > reports/routing/report_congestion_routed.rpt
report_timing -delay_type max -max_path 20 > reports/routing/setup_routed.rpt
report_timing -delay_type min -max_path 20 > reports/routing/hold_routed.rpt
report_utilization > reports/routing/routing_utilization.rpt
report_qor > reports/routing/routing_qor.rpt
analyze_design_violations > reports/routing/analyze_design_violations_routed.rpt
report_constraints -all_violators > reports/routing/constraints.rpt

write_parasitics -output ./outputs/${design} > outputs/spef_writing.rpt



save_block -as ${design}_7_primetime
