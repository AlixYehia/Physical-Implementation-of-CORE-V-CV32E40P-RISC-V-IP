file delete -force ./work
set multi_scenario_working_directory ./work 

create_scenario -name func_slow_Cmax -image sessions/func_slow_Cmax
create_scenario -name func_slow_Cmin -image sessions/func_slow_Cmin
create_scenario -name func_fast_Cmax -image sessions/func_fast_Cmax
create_scenario -name func_fast_Cmin -image sessions/func_fast_Cmin

set_host_options -num_processes 4 -max_cores 4
start_hosts

current_session {func_slow_Cmax func_slow_Cmin func_fast_Cmax func_fast_Cmin}

############################ Before Fixing ############################
report_constraints -all_violators > constraint_violations_before.rpt 
report_global_timing > global_timing_before.rpt

remote_execute {source /home/ICer/ITI/PnR_Grad/Backend/PnR/scripts/import/dont_use.tcl}

fix_eco_timing -type setup -buffer_list {SAEDRVT14_BUF_1 SAEDRVT14_BUF_2 SAEDRVT14_BUF_3 SAEDRVT14_BUF_4 SAEDRVT14_BUF_6 SAEDRVT14_BUF_8 SAEDRVT14_BUF_10}

fix_eco_timing -type hold -buffer_list {SAEDRVT14_BUF_1 SAEDRVT14_BUF_2 SAEDRVT14_BUF_3 SAEDRVT14_BUF_4 SAEDRVT14_BUF_6 SAEDRVT14_BUF_8 SAEDRVT14_BUF_10}

fix_eco_drc -type max_capacitance -buffer_list {SAEDRVT14_BUF_1 SAEDRVT14_BUF_2 SAEDRVT14_BUF_3 SAEDRVT14_BUF_4 SAEDRVT14_BUF_6 SAEDRVT14_BUF_8 SAEDRVT14_BUF_10}


############################ After Fixing ############################
report_constraints -all_violators > constraint_violations_after.rpt 
report_global_timing > global_timing_after.rpt


remote_execute {write_changes -o /home/ICer/ITI/PnR_Grad/Backend/PrimeTime/output/eco.tcl}

exit

