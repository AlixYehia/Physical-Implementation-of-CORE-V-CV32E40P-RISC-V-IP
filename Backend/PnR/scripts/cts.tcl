##############################################
########### 5. CTS       #####################
##############################################
set design cv32e40p_top

open_block ./${design}:${design}_4_placed

copy_block -from_block ${design}:${design}_4_placed -to_block ${design}_5_cts

current_block ${design}_5_cts


set_host_options -max_cores 12
puts "start_cts"

## CHECKS
#########
#check_physical_design -stage pre_clock_opt 
#check_clock_tree 

## CONSTRAINTS 
##############
## Here, We define more constraints on your design that are related to CTS stage.

set_driving_cell -lib_cell SAEDRVT14_BUF_4 -pin X [get_ports {clk_i scan_clk}]
###OR
# set_input_transition -rise 0.3 [get_ports clk_i]
# set_input_transition -fall 0.2 [get_ports clk_i]


#### Set Clock Exceptions

set_ignored_layers -max_routing_layer M9 -min_routing_layer M1 -verbose

remove_clock_tree_options -all -target_latency -target_skew -max_levels


set_lib_cell_purpose -exclude cts [get_lib_cells -of [get_cells *]]


set_lib_cell_purpose -include cts */*_INV_S_3*
set_lib_cell_purpose -include cts */*_INV_S_4*
set_lib_cell_purpose -include cts */*_INV_S_6*
set_lib_cell_purpose -include cts */*_INV_S_8*


set_lib_cell_purpose -include hold [get_lib_cells */*DEL*]

create_routing_rule clknet_NDR -multiplier_spacing 2 -multiplier_width 2
set_clock_routing_rules -net_type root -rules clknet_NDR -max_routing_layer M9 -min_routing_layer M3
set_clock_routing_rules -net_type internal -rules clknet_NDR -max_routing_layer M9 -min_routing_layer M3
set_clock_routing_rules -default_rule -max_routing_layer M9 -min_routing_layer M3


set_max_transition -clock_path 0.100 [get_clocks ]
set_app_options -as_user_default -list {cts.common.max_fanout 25}
set_clock_tree_options -corners [all_corners ] -target_skew 0.050

set_app_options -name cts.common.user_instance_name_prefix -value "CTS_"
set_app_options -name opt.common.user_instance_name_prefix -value "CTS_"


report_clock_settings

## Clock Tree : Synhtesis, Optimization, and Routing
####################################################
## The 3 steps can be done with the combo command clock_opt. But below, we do them individually.
set cts_enable_drc_fixing_on_data true

set_app_options -name clock_opt.flow.enable_ccd -value true 

#clock_opt
clock_opt -to build_clock
clock_opt -to route_clock
#clock_opt -to final_opto


connect_pg_net -net "VDD" [get_pins -hierarchical "*/VDD*"]
connect_pg_net -net "VSS" [get_pins -hierarchical "*/VSS"]

check_routes

remove_clock_latency [all_clocks] -scenarios [all_scenarios]


sh mkdir -p reports/cts
			 
report_timing -delay_type max -max_path 20 > reports/cts/setup_cts.rpt
report_timing -delay_type min -max_path 20 > reports/cts/hold_cts.rpt
report_utilization > reports/cts/cts_utilization.rpt
report_qor > reports/cts/cts_qor.rpt

#report_timing -delay_type max -scenarios func_fast_Cmax -to [get_cells -hier *reg*] -from [get_cells -hier *reg*]

save_block -as ${design}_5_cts
puts "finish_cts"

