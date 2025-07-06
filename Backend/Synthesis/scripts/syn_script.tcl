
set_host_options -max_cores 12

########################### Define Top Module ############################
                                                   
set top_module cv32e40p_top

##################### Define Working Library Directory ######################
                                                   
define_design_lib work -path ./work

############################# Formality Setup File ##########################
                                                   
set_svf $top_module.svf

################## Design Compiler Library Files #setup ######################

puts "###########################################"
puts "#      #setting Design Libraries          #"
puts "###########################################"

#Add the path of the libraries and RTL files to the search_path variable

set rtl       "/home/ICer/ITI/PnR_Grad/rtl"
set LIB_PATH  "/mnt/hgfs/saed14_pdk/stdcell_rvt/db_ccs"

lappend search_path $LIB_PATH
lappend search_path $rtl
lappend search_path "/home/ICer/ITI/PnR_Grad/rtl/include"
lappend search_path "/home/ICer/ITI/PnR_Grad/rtl/vendor/pulp_platform_fpnew/src"

set SSLIB "saed14rvt_ss0p6v125c.db" 
set TTLIB "saed14rvt_tt0p8v25c.db"
set FFLIB "saed14rvt_ff0p88vm40c.db"

## Standard Cell libraries 
set target_library [list $SSLIB]

## Standard Cell & Hard Macros libraries 
set link_library [list * $SSLIB $TTLIB $FFLIB]

######################## Reading RTL Files #################################

puts "###########################################"
puts "#             Reading RTL Files           #"
puts "###########################################"

set file_format sverilog

#analyze -format $file_format [glob rtl/*]
#analyze -format $file_format [glob rtl/include/*]

analyze -format $file_format cv32e40p_pkg.sv
analyze -format $file_format cv32e40p_fpu_pkg.sv
analyze -format $file_format cv32e40p_apu_core_pkg.sv

analyze -format $file_format fpnew_pkg.sv


analyze -format $file_format cv32e40p_aligner.sv
analyze -format $file_format cv32e40p_alu.sv
analyze -format $file_format cv32e40p_alu_div.sv
analyze -format $file_format cv32e40p_apu_disp.sv
analyze -format $file_format cv32e40p_compressed_decoder.sv
analyze -format $file_format cv32e40p_controller.sv
analyze -format $file_format cv32e40p_core.sv
analyze -format $file_format cv32e40p_cs_registers.sv
analyze -format $file_format cv32e40p_decoder.sv
analyze -format $file_format cv32e40p_ex_stage.sv
analyze -format $file_format cv32e40p_ff_one.sv
analyze -format $file_format cv32e40p_fifo.sv
analyze -format $file_format cv32e40p_fp_wrapper.sv
analyze -format $file_format cv32e40p_hwloop_regs.sv
analyze -format $file_format cv32e40p_id_stage.sv
analyze -format $file_format cv32e40p_if_stage.sv
analyze -format $file_format cv32e40p_int_controller.sv
analyze -format $file_format cv32e40p_load_store_unit.sv
analyze -format $file_format cv32e40p_mult.sv
analyze -format $file_format cv32e40p_obi_interface.sv
analyze -format $file_format cv32e40p_popcnt.sv
analyze -format $file_format cv32e40p_prefetch_buffer.sv
analyze -format $file_format cv32e40p_prefetch_controller.sv
analyze -format $file_format cv32e40p_register_file_ff.sv
#analyze -format $file_format cv32e40p_register_file_latch.sv
analyze -format $file_format cv32e40p_clock_gate.sv
analyze -format $file_format cv32e40p_sleep_unit.sv


analyze -format $file_format cv32e40p_top.sv

elaborate -lib work cv32e40p_top

###################### Defining toplevel ###################################

current_design $top_module

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## Liniking All The Design Parts ########"
puts "###############################################"

link 

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## checking design consistency ##########"
puts "###############################################"

check_design >> reports/check_design.rpt

#################### Define Design Constraints #########################
puts "###############################################"
puts "############ Design Constraints #### ##########"
puts "###############################################"

source -echo -v /home/ICer/ITI/PnR_Grad/Backend/PnR/scripts/import/dont_use.tcl
source -echo -v cons/cv32e40p_core.sdc

###################### Mapping and optimization ########################
puts "###############################################"
puts "########## Mapping & Optimization #############"
puts "###############################################"

compile -map_effort high
#compile_ultra

##################### Close Formality Setup file ###########################

set_svf -off

#############################################################################
# Write out files
#############################################################################

write -f ddc -hierarchy -output netlists/$top_module.ddc
write_file -format verilog -hierarchy -output netlists/$top_module.v
write_sdf  sdf/$top_module.sdf
write_sdc  -nosplit sdc/$top_module.sdc

####################### reporting ##########################################	

report_area -hierarchy > reports/area.rpt
report_cell > reports/cells.rpt
report_qor > reports/qor.rpt
report_power -hierarchy > reports/power.rpt
report_timing -delay_type max -max_paths 10 -significant_digits 4 > reports/setup.rpt
report_clock -attributes > reports/clocks.rpt
report_resources > reports/resources.rpt
report_constraint -all_violators -significant_digits 4 -nosplit > reports/constraints.rpt

############################################################################
# report_constraintDFT Preparation Section
############################################################################

### to calculate no. of chains based on ff no. ###

#set flops_per_chain 452

#set num_flops [sizeof_collection [all_registers -edge_triggered]]

#set num_chains [expr $num_flops / $flops_per_chain + 1 ]


### to calculate no. of ff based on no. of chains ###

set num_chains 5

set num_flops [sizeof_collection [all_registers -edge_triggered]]

set flops_per_chain [expr $num_flops / $num_chains + 1]

################# starting graphical user interface #######################

#gui_start

exit
