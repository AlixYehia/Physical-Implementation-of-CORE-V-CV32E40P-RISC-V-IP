##############################################
########### 2. Floorplan #####################
##############################################
set design cv32e40p_top

open_block ./${design}:${design}_1_imported

copy_block -from_block ${design}:${design}_1_imported -to_block ${design}_2_fp

current_block ${design}_2_fp

set_host_options -max_cores 12

## Create Starting Floorplan
############################

set_attribute [get_layers [list M1 M3 M5 M7 M9]] routing_direction vertical
set_attribute [get_layers [list M2 M4 M6 M8]] routing_direction horizontal

set_attribute [get_layers MRDL] routing_direction horizontal


# Use this

set_wire_track_pattern -site_def unit -layer M1 -mode uniform \
-mask_constraint {mask_two mask_one} -coord 0.037 -space 0.074 -direction vertical

# Or this

#create_track -layer M1 -coord 0.017 -space 0.074




#initialize_floorplan -boundary "{0 0} {500 500}" -flip_first_row true -core_offset {17 17 17 17} -control_type die


initialize_floorplan \
-core_utilization 0.25 \
-flip_first_row true \
-core_offset {17 17 17 17}


#remove_tracks -all
#remove_tracks [get_tracks -of_objects M1] -verbose

#create_track -layer M1 -coord 0.017 -space 0.074
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

sh mkdir -p reports/floorplan

report_qor > reports/floorplan/floorplan_qor.rpt

save_block -as ${design}_2_fp


exit

