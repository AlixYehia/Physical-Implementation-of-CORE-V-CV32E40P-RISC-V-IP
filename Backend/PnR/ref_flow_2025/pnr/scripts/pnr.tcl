##############################################
########### 1. DESIGN SETUP ##################
##############################################
set_host_options -max_cores 4
sh date

set design mips_16

sh rm -rf $design

set sc_dir "/home/ICer/PDK"

#set_app_var search_path "/home/standard_cell_libraries/NangateOpenCellLibrary_PDKv1_3_v2010_12/lib/Front_End/Liberty/NLDM \
#			 /home/mohamed/Desktop/johnson/rtl"

#set_app_var search_path "/home/ICer/PDK/saed_14"
set search_path "/home/ICer/PDK/saed_14/hvt_ibex/ /home/ICer/PDK/saed_14/"
set link_library "* /home/ICer/PDK/saed_14/saed14rvt_ss0p6v125c.db"
set target_library "/home/ICer/PDK/saed_14/saed14rvt_ss0p6v125c.db"
#set_app_var link_library "* saed14rvt_dlvl_ss0p72vm40c_i0p72v.db"

sh rm -rf ndm
sh mkdir -p ndm

#create_lib ./ndm/${design} \
#-technology /mnt/hgfs/VM_share/tech/milkyway/tfs/saed14nm_1p9m_mw_v2.tf \
#-ref_libs "$sc_dir/saed_14/tech/ndm/saed14rvt_frame_timing_ccs.ndm "

create_lib ./ndm/${design} \
-technology /mnt/hgfs/VM_share/tech/milkyway/saed14nm_1p9m_mw.tf \
-ref_libs "$sc_dir/saed_14/tech/ndm/saed14rvt_frame_timing_ccs.ndm "



read_verilog ../syn/output/${design}.v

#MCMM
remove_corners -all
remove_modes -all
remove_scenarios -all

create_corner slow
#create_corner fast

set TLUPLUS_MAX_FILE /mnt/hgfs/VM_share/saed_14/saed14nm_1p9m_Cmax.tluplus
set TLUPLUS_MIN_FILE /mnt/hgfs/VM_share/saed_14/saed14nm_1p9m_Cmin.tluplus
set MAP_FILE /mnt/hgfs/VM_share/tech/star_rc/saed14nm_1p9m_layer.map

#set_parasitics_parameters \
#-early_spec tlup_min \
#-late_spec tlup_min \
#-corners {fast}

create_mode func
current_mode func

create_scenario -mode func -corner slow -name func_slow
#create_scenario -mode func -corner fast -name func_fast

current_scenario func_slow

source -e -v ../syn/cons/cons.tcl


read_parasitic_tech \
-tlup  $TLUPLUS_MAX_FILE \
-layermap $MAP_FILE \
-name tlup_max

#read_parasitic_tech \
#-tlup  $TLUPLUS_MIN_FILE \
#-layermap  $MAP_FILE \
#-name tlup_min

set_parasitics_parameters \
-early_spec tlup_max \
-late_spec tlup_max \
-corners {slow}

###
report_scenarios
set_scenario_status -leakage_power false -dynamic_power false [get_scenarios func_slow]
report_scenarios

#set_propagated_clock [get_clocks clk]

save_block -as ${design}_1_imported

##############################################
########### 2. Floorplan #####################
##############################################

## Create Starting Floorplan
############################

set_attribute [get_layers M1] routing_direction vertical
set_attribute [get_layers M2] routing_direction horizontal
set_attribute [get_layers M3] routing_direction vertical
set_attribute [get_layers M4] routing_direction horizontal
set_attribute [get_layers M5] routing_direction vertical
set_attribute [get_layers M6] routing_direction horizontal
set_attribute [get_layers M7] routing_direction vertical
set_attribute [get_layers M8] routing_direction horizontal
set_attribute [get_layers M9] routing_direction vertical
set_attribute [get_layers MRDL] routing_direction horizontal

set_wire_track_pattern -site_def unit -layer M1 -mode uniform \
-mask_constraint {mask_two mask_one} -coord 0.037 -space 0.074 -direction vertical

#initialize_floorplan \
#-core_utilization 0.25 \
#-flip_first_row true \
#-core_offset {17 17 17 17}

initialize_floorplan -boundary "{0 0} {500 500}" -flip_first_row true -core_offset {17 17 17 17} -control_type die

#remove_tracks -all

#create_track -layer M1 -coord 0 -space 0.074
#create_track -layer M2 -coord 0 -space 0.06 
#create_track -layer M3 -coord 0 -space 0.074 
#create_track -layer M4 -coord 0 -space 0.074
#create_track -layer M5 -coord 0 -space 0.12
#create_track -layer M6 -coord 0 -space 0.12 
#create_track -layer M7 -coord 0 -space 0.12  
#create_track -layer M8 -coord 0 -space 0.12  
#create_track -layer M9 -coord 0 -space 0.12 
#create_track -layer MRDL -coord 0 -space 0.6

place_pins -ports [get_ports *]

#create_placement -timing_driven -floorplan
create_tap_cells -lib_cell  [get_lib_cell */SAEDRVT14_TAPDS] -pattern stagger -distance 30

create_net VDD -power
create_net VSS -ground

connect_pg_net -net "VDD" [get_pins -hierarchical "*/VDD*"]
connect_pg_net -net "VSS" [get_pins -hierarchical "*/VSS"]

## CONSTRAINTS
##############
## Here, We define more constraints on your design that are related to floorplan stage.
#report_ignored_layers
#remove_ignored_layers -all
#set_ignored_layers -max_routing_layer metal6
#AH## ## To show design-specific blocks
##AH## gui_set_highlight_options -current_color yellow
##AH## change_selection [get_cells   alu_unit/*]

##AH## gui_set_highlight_options -current_color blue
##AH## change_selection [get_cells   ALU_Control_unit/*]

##AH## gui_set_highlight_options -current_color green
##AH## change_selection [get_cells   datamem/*]

##AH## gui_set_highlight_options -current_color orange
##AH## change_selection [get_cells   reg_file/*]

save_block -as ${design}_2_fp

##################################################
########### 3. POWER NETWORK #####################
##################################################
#ICC2 commands

############################
########  PG RINGS  ########
############################


remove_pg_via_master_rules -all
remove_pg_patterns -all
remove_pg_strategies -all
remove_pg_strategy_via_rules -all

set top_ring_width 5
set top_offset 2
set top_ring_spacing 5
set hm_top M9
set vm_top M8
#set gprs_ring_width 1.5
#set gprs_offset -5
#set gprs_ring_spacing 2
#set hm_gprs M7
#set vm_gprs M8


create_pg_region top_power_ring_region -core -expand_by_edge  \
          "{{side: 1} {offset: $top_offset}} {{side: 2} {offset: $top_offset}} {{side: 3} {offset: $top_offset}} {{side: 4} {offset: $top_offset}}"
	 
create_pg_ring_pattern \
                 ring \
                 -horizontal_layer $hm_top -vertical_layer $vm_top \
                 -horizontal_width $top_ring_width -vertical_width $top_ring_width \
                 -horizontal_spacing $top_ring_spacing -vertical_spacing $top_ring_spacing

set_pg_strategy  ring -pg_regions { top_power_ring_region } -pattern {{ name: ring} { nets: "VSS VDD" }}

compile_pg -strategies ring
####Connect P/G Pins and Create Power Rails#################

create_pg_mesh_pattern P_top_two \
	-layers { \
		{ {horizontal_layer: M7} {width: 5} {spacing: interleaving} {pitch: 30} {offset: 0.856} {trim : true} } \
		{ {vertical_layer: M8}   {width: 5} {spacing: interleaving} {pitch: 30} {offset: 6.08}  {trim : true} } \
		} 

set_pg_strategy S_default_vddvss \
	-core \
	-pattern   { {name: P_top_two} {nets:{VSS VDD}} } \
	-extension { {{stop:design_boundary_and_generate_pin}} }
	

compile_pg -strategies {S_default_vddvss} 



create_pg_mesh_pattern P_top_two_2 \
	-layers { \
		{ {horizontal_layer: M7} {width: 2} {spacing: interleaving} {pitch: 30} {offset: 0.856} {trim : true} } \
		{ {vertical_layer: M6}   {width: 2} {spacing: interleaving} {pitch: 30} {offset: 6.08}  {trim : true} } \
		} 

set_pg_strategy S_default_vddvss_2 \
	-core \
	-pattern   { {name: P_top_two_2} {nets:{VSS VDD}} }
	

compile_pg -strategies {S_default_vddvss_2} 

## Create std rail
#VDD VSS
create_pg_std_cell_conn_pattern std_rail_conn1 -rail_width 0.094 -layers M1
# -rail_mask mask_one

set_pg_strategy  std_rail_1 -pattern {{name : std_rail_conn1} {nets: "VDD VSS"}} -core


compile_pg -strategies std_rail_1

create_pg_vias -nets { VDD VSS } -from_layers M6 -to_layers M1 -drc no_check
set_via_def -via_def VIA12SQ_C -pitch "0.2 0.2" -vias [get_vias -filter "via_def.name == VIA12SQ_C"] -size "1 10"
set_via_def -via_def VIA23SQ_C -pitch "0.2 0.2" -vias [get_vias -filter "via_def.name == VIA23SQ_C"] -size "1 10"

check_pg_drc
check_pg_connectivity
check_pg_missing_vias

save_block -as ${design}_3_power

#return 

#ICC1 commands
## Defining Logical POWER/GROUND Connections
############################################
#derive_pg_connection 	 -power_net VDD		\
#			 -ground_net VSS	\
#			 -power_pin VDD		\
#			 -ground_pin VSS	


## Define Power Ring 
####################
#set_fp_rail_constraints  -set_ring -nets  {VDD VSS}  \
#                         -horizontal_ring_layer { metal7 metal9 } \
#                         -vertical_ring_layer { metal8 metal10 } \
#			 -ring_spacing 0.8 \
#			 -ring_width 5 \
#			 -ring_offset 0.8 \
#			 -extend_strap core_ring

## Define Power Mesh 
####################
#set_fp_rail_constraints -add_layer  -layer metal10 -direction vertical   -max_strap 128 -min_strap 20 -min_width 2.5 -spacing minimum
#set_fp_rail_constraints -add_layer  -layer metal9  -direction horizontal -max_strap 128 -min_strap 20 -min_width 2.5 -spacing minimum
#set_fp_rail_constraints -add_layer  -layer metal8  -direction vertical   -max_strap 128 -min_strap 20 -min_width 2.5 -spacing minimum
#set_fp_rail_constraints -add_layer  -layer metal7  -direction horizontal -max_strap 128 -min_strap 20 -min_width 2.5 -spacing minimum
#set_fp_rail_constraints -add_layer  -layer metal6  -direction vertical   -max_strap 128 -min_strap 20 -min_width 2.5 -spacing minimum

#set_fp_rail_constraints -add_layer  -layer metal10 -direction vertical   -max_pitch 12 -min_pitch 12 -min_width 5 -spacing minimum
#set_fp_rail_constraints -add_layer  -layer metal9  -direction horizontal -max_pitch 12 -min_pitch 12 -min_width 5 -spacing minimum
#set_fp_rail_constraints -add_layer  -layer metal8  -direction vertical   -max_pitch 12 -min_pitch 12 -min_width 5 -spacing minimum
#set_fp_rail_constraints -add_layer  -layer metal7  -direction horizontal -max_pitch 12 -min_pitch 12 -min_width 5 -spacing minimum
#set_fp_rail_constraints -add_layer  -layer metal6  -direction vertical   -max_pitch 12 -min_pitch 12 -min_width 5 -spacing minimum


#set_fp_rail_constraints -set_global

## Creating virtual PG pads
###########################
# you can create them with gui. Preroute > Create Virtual Power Pad
#create_fp_virtual_pad -net VSS -point {77.1665 387.6000}
#create_fp_virtual_pad -net VSS -point {0.6745 376.4420}
#create_fp_virtual_pad -net VSS -point {408.1495 371.0450}
#create_fp_virtual_pad -net VSS -point {407.4745 259.0565}
#create_fp_virtual_pad -net VSS -point {-0.6745 263.1045}
#create_fp_virtual_pad -net VSS -point {0.0000 146.3940}
#create_fp_virtual_pad -net VSS -point {406.8000 138.9730}
#create_fp_virtual_pad -net VSS -point {408.1495 30.3580}
#create_fp_virtual_pad -net VSS -point {0.0000 30.3580}
#create_fp_virtual_pad -net VSS -point {325.1700 0.0000}
#create_fp_virtual_pad -net VSS -point {232.7465 -1.3490}
#create_fp_virtual_pad -net VSS -point {124.1315 -1.3490}
#create_fp_virtual_pad -net VSS -point {120.0835 403.4270}
#create_fp_virtual_pad -net VSS -point {222.6270 406.8000}
#create_fp_virtual_pad -net VSS -point {323.1465 406.8000}
#create_fp_virtual_pad -net VDD -point {0.0000 321.1225}
#create_fp_virtual_pad -net VDD -point {0.6745 204.4120}
#create_fp_virtual_pad -net VDD -point {0.0000 87.7015}
#create_fp_virtual_pad -net VDD -point {407.4745 87.0270}
#create_fp_virtual_pad -net VDD -point {408.1495 204.4120}
#create_fp_virtual_pad -net VDD -point {407.4745 319.7730}
#create_fp_virtual_pad -net VDD -point {380.4895 -1.3490}
#create_fp_virtual_pad -net VDD -point {278.6210 0.0000}
#create_fp_virtual_pad -net VDD -point {174.0540 -0.6745}
#create_fp_virtual_pad -net VDD -point {60.7165 -2.0240}
#create_fp_virtual_pad -net VDD -point {62.7405 405.4505}
#create_fp_virtual_pad -net VDD -point {175.4030 406.1255}
#create_fp_virtual_pad -net VDD -point {278.6210 407.4745}
#create_fp_virtual_pad -net VDD -point {377.1165 407.4745}

#synthesize_fp_rail  -nets {VDD VSS} -synthesize_power_plan -target_voltage_drop 22 -voltage_supply 1.1 -power_budget 500
## Analyze IR-drop; Modify power network constraints and re-synthesize, as needed.
## Max IR is 2% of Nominal Supply. In our case, 0.02 x 1.1v= 22mv

#commit_fp_rail

#set_preroute_drc_strategy -max_layer metal6
#preroute_standard_cells -fill_empty_rows -remove_floating_pieces

## If you want to remove power and recreate it
#remove_net_shape  [get_net_shapes -of_objects [get_nets -all "VSS VDD"]]
#remove_via  [get_vias -of_objects [get_nets -all "VSS VDD"]]
## MAy need => remove_fp_virtual_pad -all

## Analyze IR-drop; Modify power network constraints and re-synthesize, as needed.
#analyze_fp_rail  -nets {VDD VSS} -power_budget 500 -voltage_supply 1.1


## Final Floorplan Assessment
#create_fp_placement -incremental all; # Updates fp placement after PG mesh creation.
#### Analyze Congestion
#### Analyze Timing


## Add Well Tie Cells
#####################
#add_tap_cell_array -master   TAP \
#     		   -distance 30 \
#     		   -pattern  stagger_every_other_row

#save_mw_cel -as ${design}_3_power

##############################################
########### 4. Placement #####################
##############################################
puts "start_place"

source /mnt/hgfs/VM_share/ASIC-implementation-of-CV32E40P-RISC-V-core--main/1-Synthesis/cons/dont_use_generic.tcl

set_placement_spacing_label -name {X} -side both -lib_cells [get_lib_cells */*/frame]
set_placement_spacing_rule -labels {X X} {1 2}

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

## CHECKS
#########
#report_ignored_layers ; # To Make sure they are as wanted.
#check_physical_design -stage pre_place_opt
#check_physical_constraints

## CONSTRAINTS 
##############
## Here, We define more constraints on your design that are related to placement stage.

#### Scenario Creation ####create_scenario pw
#### Scenario Creation ####set_operating_conditions worst_low
#### Scenario Creation ####set_tlu_plus_files -max_tluplus $tlupmax \
#### Scenario Creation ####                   -min_tluplus $tlupmin \
#### Scenario Creation ####     		   -tech2itf_map $tech2itf
#### Scenario Creation ####
#### Scenario Creation ####set_scenario_options -leakage_power true; #If we need to optimize leakage power, more effective for multi-Vth designs.
#### Scenario Creation ####set power_default_toggle_rate 0.003
#### Scenario Creation ####set_scenario_options -dynamic_power true
#### Scenario Creation ####
#### Scenario Creation ####source  ../syn/cons/cons.tcl
#### Scenario Creation ####set_propagated_clock [get_clocks clk]
#### Scenario Creation ####
#### Scenario Creation ####set_optimize_pre_cts_power_options -low_power_placement true
#### Scenario Creation ####
#### Scenario Creation ####report_scenario_options


## INITIAL PLACEMENT
####################
## Initial Placement can be done using the following command using any of its target options 
#place_opt -area_recovery |-power |-congestion|

set_app_options -name place.coarse.continue_on_missing_scandef -value true

set_app_option -name place.coarse.congestion_driven_max_util -value 0.3
set_app_options -name place.coarse.max_density -value 0.2

#not in this version
#set_app_options -name place.legalize.high_local_density_threshold -value 0.7

set_app_options -name place.coarse.target_routing_density -value 0.6

set_app_options -name opt.common.user_instance_name_prefix -value "PLACE_"
#set_app_options -name cts.common.user_instance_name_prefix -value "PLACE_"


#place_opt
create_placement -congestion
legalize_placement

## ASSESSMENT
#############
## Open Congestion Map. == > If congested, improve congestion similar to floorplanning.
## Report Timing 

## FIXES
########
# For seriuos congestion issue use the following commands:
#   set placer_enable_enhanced_router TRUE; # enabling the actual GR instead of GR estimator. Increased run time!
#   refine_placement ==> Optimizes congestion only

# If there are violating timing paths, apply optimization -focus- as needed: 
#   report_path_group
#   group_path -name clk -critical_range 1 -weight 5


## OPTIMIZATION
###############
# psynopt -area_recovery |-power| |-congestion| 
#psynopt

#The  psynopt  command  performs incremental preroute or postroute opti-
#mization on the current design. Performs incremental timing-driven  (setup timing, by default) logic optimization with placement legalization.
# It considers other targets using different options
# ex : psynopt -no_design_rule | -only_design_rule | -size_only ==> Used for Focused placment optimization

## FINAL ASSESSMENT
###################

connect_pg_net -net "VDD" [get_pins -hierarchical "*/VDD*"]
connect_pg_net -net "VSS" [get_pins -hierarchical "*/VSS"]


check_legality
## If no legalized cells => legalize_placement -effort high -incremental 
# Check Congestion
# Check Timing 
# report_design_physical -utilization

# DEFINING POWER/GROUND NETS AND PINS			 
#derive_pg_connection     -power_net VDD		\
#			 -ground_net VSS	\
#			 -power_pin VDD		\
#			 -ground_pin VSS	

## Tie fixed values
#set tie_pins [get_pins -all -filter "constant_value == 0 || constant_value == 0 && name !~ V* && is_hierarchical == false "]

#derive_pg_connection 	 -power_net VDD		\
#			 -ground_net VSS	\
#			 -tie

#if {[sizeof_collection $tie_pins] > 0 } {
#	connect_tie_cells -objects $tie_pins \
#                  -obj_type port_inst \
#		  -tie_low_lib_cell  */LOGIC0_X1 \
#		  -tie_high_lib_cell */LOGIC1_X1
#}




puts "finish_place"

save_block -as ${design}_4_placed

##############################################
########### 5. CTS       #####################
##############################################

puts "start_cts"

## CHECKS
#########
#check_physical_design -stage pre_clock_opt 
#check_clock_tree 
#report_clock_tree


## CONSTRAINTS 
##############
## Here, We define more constraints on your design that are related to CTS stage.

#set_driving_cell -lib_cell BUF_X16 -pin Z [get_ports clk]
###OR
 set_input_transition -rise 0.3 [get_ports clk]
 set_input_transition -fall 0.2 [get_ports clk]


#### Set Clock Exceptions

#ICC1
### Set Clock Control/Targets
###set_clock_tree_options \
###                -clock_trees clk \
###		-target_early_delay 0.1 \
###		-target_skew 0.5 \
###		-max_capacitance 300 \
###		-max_fanout 10 \
###		-max_transition 0.3

###set_clock_tree_options -clock_trees clk \
######		-buffer_relocation true \
###		-buffer_sizing true \
###		-gate_relocation true \
###		-gate_sizing true 
set_ignored_layers -max_routing_layer M9 -min_routing_layer M1 -verbose

remove_clock_tree_options -all -target_latency -target_skew -max_levels



set_lib_cell_purpose -exclude cts [get_lib_cells -of [get_cells *]]

#set_lib_cell_purpose -exclude cts [get_lib_cells "*/*BUF* */*INV* */*DEL*"]
#set_lib_cell_purpose -include cts [get_lib_cells */*INV_S_6*]

set_lib_cell_purpose -include cts */*_INV_S_3*
set_lib_cell_purpose -include cts */*_INV_S_4*
set_lib_cell_purpose -include cts */*_INV_S_6*
set_lib_cell_purpose -include cts */*_INV_S_8*

#saed14rvt_frame_timing_ccs/SAEDRVT14_INV_S_6
##here
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

## Selection of CTS cells
###set_clock_tree_references -references [get_lib_cells */CLKBUF*] 
####set_clock_tree_references -references [get_lib_cells */BUF*] 
####set_clock_tree_references -references [get_lib_cells */INV*] 

## Selection of CTO cells
#set_clock_tree_references -sizing_only -references "BEST_PRACTICE_buffers_for_CTS_CTO_sizing"
#set_clock_tree_references -delay_insertion_only -references "BEST_PRACTICE_cels_for_CTS_CTO_delay_insertion" 



### Set Clock Physical Constraints
## Clock Non-Default Ruls (NDR) - Set it to be double width and double spacing 
### define_routing_rule my_route_rule  \
###   -widths   {metal3 0.14 metal4 0.28 metal5 0.28} \
###   -spacings {metal3 0.14 metal4 0.28 metal5 0.28} 

### set_clock_tree_options -clock_trees clk \
###                        -routing_rule my_route_rule  \
### 		       -layer_list "metal3 metal4 metal5"

## To avoid NDR at clock sinks
#set_clock_tree_options -use_default_routing_for_sinks 1

#report_clock_tree -settings
report_clock_settings

## Clock Tree : Synhtesis, Optimization, and Routing
####################################################
## The 3 steps can be done with the combo command clock_opt. But below, we do them individually.
set cts_enable_drc_fixing_on_data true
#clock_opt
clock_opt -to build_clock
clock_opt -from route_clock -to route_clock
#clock_opt -from final_opt
## 1- CTS 
## clock_opt -only_cts -no_clock_route
## analyze
##     report_design_physical -utilization
##     report_clock_tree -summary ; # reports for the clock tree, regardless of relation between FFs
##     report_clock_tree
##     report_clock_timing -type summary ; # reports for the clock tree, considering relation between FFs
##     report_timing
##     report_timing -delay_type min
##     report_constraints -all_violators -max_delay -min_delay
    # Check Congestion
    # Check Timing


## 2- CTO
## To Consider Hold Fix -- Design Dependent
#   set_fix_hold [all_clocks]
#   set_fix_hold_options -prioritize_tns
#clock_opt -only_psyn -no_clock_route
#analyze


## 3- Clock Tree Routing
#route_group -all_clock_nets
#analyze


## If any issue at analysis, update CT constraints 
##################################################

# DEFINING POWER/GROUND NETS AND PINS			 
#derive_pg_connection     -power_net VDD		\
#			 -ground_net VSS	\
#			 -power_pin VDD		\
#			 -ground_pin VSS	

connect_pg_net -net "VDD" [get_pins -hierarchical "*/VDD*"]
connect_pg_net -net "VSS" [get_pins -hierarchical "*/VSS"]

			 
save_block -as ${design}_5_cts
puts "finish_cts"

##############################################
########### 6. Routing   #####################
##############################################

puts "start_route"


set_ignored_layer -max M9 -min M1

sh date
route_opt
sh date

connect_pg_net -net "VDD" [get_pins -hierarchical "*/VDD*"]
connect_pg_net -net "VSS" [get_pins -hierarchical "*/VSS"]

save_block -as ${design}_6_route

##############################################
########### 7. Finishing #####################
##############################################

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

save_block -as ${design}_7_finishing


#ICC1 commands
#check_physical_design -stage pre_route_opt; # dump check_physical_design result to file ./cpd_pre_route_opt_*/index.html
#all_ideal_nets
#all_high_fanout -nets -threshold 100
#check_routeability


#set_delay_calculation_options -arnoldi_effort low

#Defines the delay model used to compute a timing arc delay value for a cell or net
#set_delay_calculation_options -preroute     elmore | awe (Asymptotic Waveform Evaluation)
#                              -routed_clock elmore | arnoldi
#			       -postroute    elmore | arnoldi
#			       -awe_effort     low | medium | high
#			       -arnoldi_effort low | medium | high
			      

#set_route_options -groute_timing_driven true \
#	          -groute_incremental true \
#	          -track_assign_timing_driven true \
#	          -same_net_notch check_and_fix 
#
#set_si_options -route_xtalk_prevention true\
#	       -delta_delay true \
#	       -min_delta_delay true \
#	       -static_noise true\
#	       -timing_window true 


## route_opt : global, track, and detail routing, S&R, logic and placement optimizations with ECO routing
##             End goal: Design that meets timing, crosstalk and route DRC rules

#route_opt -effort high \
#	  -stage track        : which stage to run optimization after
#	  -xtalk_reduction    : to reduce crosstalk in routing 
#	  -incremental        : to improve results of a routed design.
#	  -initial_route_only : This is to avoid full routing and post-routing optimizations. Only do the basic steps.

## To Consider Hold Fix
#   set_fix_hold_options -prioritize_tns
#   set_fix_hold [all_clocks]
#   set_prefer -min  [get_lib_cells "*/BUF_X2 */BUF_X1"]
#   set_fix_hold_options -preferred_buffer


#route_opt
#psynopt  -only_hold_time -congestion
#route_zrt_eco -open_net_driven true

#verify_zrt_route
#route_zrt_detail -incremental true -initial_drc_from_input true

#insert_zrt_redundant_vias
#verify_zrt_route
#route_zrt_detail -incremental true -initial_drc_from_input true

#derive_pg_connection     -power_net VDD		\
#			 -ground_net VSS	\
#			 -power_pin VDD		\
#			 -ground_pin VSS	




#report_noise
#report_timing -crosstalk_delta


#save_mw_cel -as ${design}_6_routed

#puts "finish_route"

##############################################
########### 7. Finishing #####################
##############################################


#insert_stdcell_filler -cell_without_metal {FILLCELL_X32 FILLCELL_X16 FILLCELL_X8 FILLCELL_X4 FILLCELL_X2 FILLCELL_X1} \
#	-connect_to_power VDD -connect_to_ground VSS
#
# 
#
#derive_pg_connection     -power_net VDD		\
#			 -ground_net VSS	\
#			 -power_pin VDD		\
#			 -ground_pin VSS	
#
#save_mw_cel -as ${design}_7_finished
#
#save_mw_cel -as ${design}

##############################################
########### 8. Checks and Outputs ############
##############################################

#ICC1 commands

#verify_zrt_route
#verify_lvs -ignore_floating_port -ignore_floating_net \
#           -check_open_locator -check_short_locator
#
#set_write_stream_options -map_layer $sc_dir/tech/strmout/FreePDK45_10m_gdsout.map \
#                         -output_filling fill \
#			 -child_depth 20 \
#			 -output_outdated_fill  \
#			 -output_pin  {text geometry}
#
#write_stream -lib $design \
#                  -format gds\
#		  -cells $design\
#		  ./output/${design}.gds

#write_oasis or write_gds for ICC2

define_name_rules  no_case -case_insensitive
change_names -rule no_case -hierarchy
change_names -rule verilog -hierarchy
set verilogout_no_tri	 true
set verilogout_equation  false


write_verilog -pg -no_physical_only_cells ./output/${design}_icc.v
write_verilog -no_physical_only_cells ./output/${design}_icc_nopg.v

extract_rc
write_parasitics -output {./output/mips_16.spef}


#close_mw_cel
#close_mw_lib

close_blocks
save_lib
close_lib

exit
