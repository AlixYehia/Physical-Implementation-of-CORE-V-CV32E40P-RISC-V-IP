##############################################
########### 6. Routing   #####################
##############################################
set design cv32e40p_top

open_block ./${design}:${design}_5_cts

copy_block -from_block ${design}:${design}_5_cts -to_block ${design}_6_routed

current_block ${design}_6_routed


set_host_options -max_cores 12
puts "start_route"


set_ignored_layer -max M9 -min M1


# Signal integirty for crosstalk analysis
#set_app_options -name time.si_enable_analysis -value true 

set_app_options -name route_opt.flow.enable_ccd -value true

sh date
route_opt
sh date

connect_pg_net -net "VDD" [get_pins -hierarchical "*/VDD*"]
connect_pg_net -net "VSS" [get_pins -hierarchical "*/VSS"]

route_detail -incremental true

check_pg_drc
check_legality
check_routes
check_lvs -max_errors 0


save_block -as ${design}_6_routed


sh mkdir -p netlists
sh mkdir -p reports/routing
sh mkdir -p outputs

write_verilog -top_module_first ./netlists/${design}_routed.v

report_cells > reports/routing/report_cells_routed.rpt
report_congestion > reports/routing/report_congestion_routed.rpt
report_timing -delay_type max -max_path 20 > reports/routing/setup_routed.rpt
report_timing -delay_type min -max_path 20 > reports/routing/hold_routed.rpt
report_utilization > reports/routing/routing_utilization.rpt
report_qor > reports/routing/routing_qor.rpt
analyze_design_violations > reports/routing/analyze_design_violations_routed.rpt

write_parasitics -output ./outputs/${design} > outputs/spef_writing.rpt

foreach scenario {func_fast_Cmax func_fast_Cmin func_slow_Cmax func_slow_Cmin} {
    write_sdc -nosplit -output ./outputs/$scenario.sdc -scenario $scenario 
}



#remove_shapes [get_shapes -of_objects [get_nets dm_halt_addr_i[17] ]]
#remove_vias [get_vias -of_objects [get_nets dm_halt_addr_i[17] ]]
#route_detail -incremental true

#create_shape -layer M3 -boundary {{166.643 178.531} {166.831 179.234} -shape_type rect

#route_eco -nets core_i/cs_registers_i/n2056


