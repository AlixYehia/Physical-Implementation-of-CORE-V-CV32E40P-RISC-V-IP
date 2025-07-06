##################################################
########### 3. POWER NETWORK #####################
##################################################
set design cv32e40p_top

open_block ./${design}:${design}_2_fp

copy_block -from_block ${design}:${design}_2_fp -to_block ${design}_3_power

current_block ${design}_3_power

set_host_options -max_cores 12
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
set hm_top M8
set vm_top M9


create_pg_region top_power_ring_region -core -expand_by_edge  \
          "{{side: 1} {offset: $top_offset}} {{side: 2} {offset: $top_offset}} {{side: 3} {offset: $top_offset}} {{side: 4} {offset: $top_offset}}"
	 
create_pg_ring_pattern \
                 ring \
                 -horizontal_layer $hm_top -vertical_layer $vm_top \
                 -horizontal_width $top_ring_width -vertical_width $top_ring_width \
                 -horizontal_spacing $top_ring_spacing -vertical_spacing $top_ring_spacing

set_pg_strategy  ring -pg_regions { top_power_ring_region } -pattern {{ name: ring} { nets: "VSS VDD" }}

compile_pg -strategies ring
####Connect P/G Pins and Creafte Power Rails#################

create_pg_mesh_pattern P_top_two \
	-layers { \
		{ {horizontal_layer: M8} {width: 5} {spacing: interleaving} {pitch: 50} {trim : true} } \
		{ {vertical_layer: M9}   {width: 5} {spacing: interleaving} {pitch: 50} {trim : true} } \
		{ {vertical_layer: M7}   {width: 5} {spacing: interleaving} {pitch: 50} {trim : true} } \
		} 

set_pg_strategy S_default_vddvss \
	-core \
	-pattern   { {name: P_top_two} {nets:{VSS VDD}} } \
	-extension { {{stop:design_boundary_and_generate_pin}} }
	

compile_pg -strategies {S_default_vddvss} 



#------------ no need for 2nd mesh however I can simply add the 2 lines to the above layers instead of rewriting the full command -----------------#


## Create std rail
#VDD VSS
#set_app_option -name plan.pgroute.disable_via_creation -value true

create_pg_std_cell_conn_pattern std_rail_conn1 -rail_width 0.094 -layers M1
# -rail_mask mask_one

set_pg_strategy  std_rail_1 -pattern {{name : std_rail_conn1} {nets: "VDD VSS"}} -core

set_pg_strategy_via_rule VIA_NIL -via_rule { { {intersection: adjacent} {via_master:NIL}}}

compile_pg -via_rule VIA_NIL -strategies std_rail_1


# ---------------------- Commands to remove Vias ---------------------- #
#remove_shapes [get_shapes -filter "shape_use == lib_cell_pin_connect"]
#remove_vias [get_vias -filter "upper_layer.name != M9"]

create_pg_vias -nets { VDD VSS } -from_layers M7 -to_layers M1 -drc no_check
set_via_def -pitch "0.27 0.27" -vias [get_vias -filter "via_def.name != VIA89_C"] -size "1 5"

# ----------------------------- dont change the created vias in metal 8 and 9 that were created during the mesh only change the ones below so they stack on each other and no min spacing violations occur ----------------------------- #

#
#set_via_def -via_def VIA23SQ_C -pitch "0.13 0.13" -vias [get_vias -filter "via_def.name == VIA23SQ_C"] -size "1 19"


check_pg_drc

check_pg_connectivity 

check_pg_missing_vias 


save_block -as ${design}_3_power


exit
