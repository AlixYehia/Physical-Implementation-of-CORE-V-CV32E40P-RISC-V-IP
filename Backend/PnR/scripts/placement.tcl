##############################################
########### 4. Placement #####################
##############################################
set design cv32e40p_top

open_block ./${design}:${design}_3_power

copy_block -from_block ${design}:${design}_3_power -to_block ${design}_4_placed

current_block ${design}_4_placed

set_host_options -max_cores 12
puts "start_place"

# IMPORTANT MMMC MUST BE READ BEFORE SDC FILE, ELSE WHEN U TYPE GET_CLOCKS IT WONT RECOGNIZE IT (I think constraints will be lost)

source scripts/import/dont_use.tcl

#read_def ../DFT/outputs/${design}.scandef


set_placement_spacing_label -name {X} -side both -lib_cells [get_lib_cells */*/frame]
set_placement_spacing_rule -labels {X X} {0 2}

add_spare_cells -cell_name sspare -lib_cell "*/SAEDRVT14_ND2_2 */SAEDRVT14_NR2_2" \
 -num_instances 25

set spare_cells [get_cells *sspare*]
spread_spare_cells -cells $spare_cells
place_eco_cells -cells $spare_cells -legalize_only 

set_app_options -list {opt.tie_cell.max_fanout 25}
add_tie_cells -objects $spare_cells -tie_low_lib_cells [get_lib_cells */SAEDRVT14_TIE0_4]  -tie_high_lib_cells [get_lib_cells  */SAEDRVT14_TIE1_4] \
 -legalize
set_dont_touch $spare_cells
set_fixed_objects $spare_cells


set_app_options -name place.coarse.continue_on_missing_scandef -value true

set_app_option -name place.coarse.congestion_driven_max_util -value 0.3
set_app_options -name place.coarse.max_density -value 0.2



set_app_options -name place.coarse.target_routing_density -value 0.6

set_app_options -name opt.common.user_instance_name_prefix -value "PLACE_"


#place_opt
create_placement -congestion
legalize_placement


connect_pg_net -net "VDD" [get_pins -hierarchical "*/VDD*"]
connect_pg_net -net "VSS" [get_pins -hierarchical "*/VSS"]


check_legality


puts "finish_place"


save_block -as ${design}_4_placed

check_pg_drc
check_pg_missing_vias
check_pg_connectivity
report_timing

write_verilog -top_module_first ./netlists/${design}_placed.v

sh mkdir -p reports/placement


report_cells > reports/placement/report_cells_placement.rpt
report_congestion > reports/placement/report_congestion_placement.rpt
report_utilization > reports/placement/placement_utilization.rpt
report_qor > reports/placement/placement_qor.rpt


#get_lib_cell -of_object [get_cell core_i/id_stage_i/register_file_i/mem_reg[24][10]]

#get_cells -of_object [get_lib_cells */SAEDRVT14_TIE0_4]

