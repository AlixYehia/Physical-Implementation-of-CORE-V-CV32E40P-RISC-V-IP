##############################################
########### 1. DESIGN SETUP ##################
##############################################
set_host_options -max_cores 12

sh date

set design cv32e40p_top

sh rm -rf $design

set LIB_PATH  "/mnt/hgfs/saed14_pdk/stdcell_rvt/db_ccs"

lappend search_path $LIB_PATH

set SSLIB "saed14rvt_ss0p6v125c.db" 
set FFLIB "saed14rvt_ff0p88vm40c.db" 

## Standard Cell libraries 
set target_library [list $SSLIB $FFLIB]

## Standard Cell & Hard Macros libraries 
set link_library [list * $SSLIB $FFLIB] 


################# std_cell NDM #################
create_lib -technology "tech/saed14nm_1p9m_mw.tf" \
-ref_libs "/home/ICer/ITI/PnR_Grad/Backend/PnR/ndm/saed14rvt.ndm" ${design}


################# Load Design #################
read_verilog ../Synthesis/netlists/cv32e40p_top.v

################# Multi Mode Multi Corner Analysis #################
source -e -v ./scripts/import/MCMM.tcl

################# Define Constraints File #################
#read_sdc -e ../Synthesis/sdc/cv32e40p_top.sdc


sh mkdir -p report_MCMM

report_corners > report_MCMM/report_corners.rpt
report_pvt > report_MCMM/pvt.rpt
report_lib -parasitic_tech [current_lib] > report_MCMM/parasitic_tech.rpt
report_parasitic_parameters > report_MCMM/parasitic_parameters.rpt


save_block -as ${design}_1_imported

report_clocks

sh rm -rf wscript

write_script

report_timing

exit
