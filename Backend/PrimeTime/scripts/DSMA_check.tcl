file delete -force ./work
set multi_scenario_working_directory ./work 

create_scenario -name func_slow_Cmax -image sessions/func_slow_Cmax
create_scenario -name func_slow_Cmin -image sessions/func_slow_Cmin
create_scenario -name func_fast_Cmax -image sessions/func_fast_Cmax
create_scenario -name func_fast_Cmin -image sessions/func_fast_Cmin

set_host_options -num_processes 4 -max_cores 4
start_hosts

current_session {func_slow_Cmax func_slow_Cmin func_fast_Cmax func_fast_Cmin}

############################ after_applyment ############################
sh mkdir -p after_applyment

report_constraints -all_violators > after_applyment/constraint_violations_check.rpt 
report_global_timing > after_applyment/global_timing_check.rpt

exit
