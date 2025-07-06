
remove_corners -all
remove_modes -all
remove_scenarios -all

#load files
set tluplus_max_file "/mnt/hgfs/saed14_pdk/ttt/SAED14nm_PDK_12232018/starrc/max/saed14nm_1p9m_Cmax.tluplus"
set tluplus_min_file "/mnt/hgfs/saed14_pdk/ttt/SAED14nm_PDK_12232018/starrc/min/saed14nm_1p9m_Cmin.tluplus"
set map_file "/mnt/hgfs/saed14_pdk/ttt/SAED14nm_PDK_12232018/starrc/saed14nm_1p9m_layer.map"


############ Read Parasitics Parameters ############

read_parasitic_tech \
-tlup $tluplus_max_file \
-layermap $map_file \
-name tlup_max

read_parasitic_tech \
-tlup $tluplus_min_file \
-layermap $map_file \
-name tlup_min


#corners
# In MCMM I must specifiy the (volt & temp) else the tool will use arbitrary values which are incorrect
create_corner slow_Cmax
create_corner slow_Cmin
create_corner fast_Cmax
create_corner fast_Cmin

set_process_label "ff"  -corners {fast_Cmax fast_Cmin}
set_temperature -40     -corners {fast_Cmax fast_Cmin}
set_voltage 0.88        -corners {fast_Cmax fast_Cmin}

set_process_label "ss"  -corners {slow_Cmax slow_Cmin}
set_temperature 125     -corners {slow_Cmax slow_Cmin}
set_voltage 0.6         -corners {slow_Cmax slow_Cmin}


#modes
create_mode func
create_mode test


#scenarios
create_scenario -mode func -corner slow_Cmax -name func_slow_Cmax
create_scenario -mode func -corner slow_Cmin -name func_slow_Cmin
create_scenario -mode func -corner fast_Cmax -name func_fast_Cmax
create_scenario -mode func -corner fast_Cmin -name func_fast_Cmin

create_scenario -mode test -corner slow_Cmax -name test_slow_Cmax
create_scenario -mode test -corner slow_Cmin -name test_slow_Cmin
create_scenario -mode test -corner fast_Cmax -name test_fast_Cmax
create_scenario -mode test -corner fast_Cmin -name test_fast_Cmin


############ Slow Corner ############

set_parasitic_parameters \
-early_spec tlup_max \
-late_spec tlup_max \
-early_temperature 125 \
-late_temperature 125 \
-corners {slow_Cmax}

set_parasitic_parameters \
-early_spec tlup_min \
-late_spec tlup_min \
-early_temperature 125 \
-late_temperature 125 \
-corners {slow_Cmin}


############ Fast Corner############

set_parasitic_parameters \
-early_spec tlup_max \
-late_spec tlup_max \
-early_temperature -40 \
-late_temperature -40 \
-corners {fast_Cmax}

set_parasitic_parameters \
-early_spec tlup_min \
-late_spec tlup_min \
-early_temperature -40 \
-late_temperature -40 \
-corners {fast_Cmin}




foreach_in_collection scenario [all_scenarios] {
current_scenario $scenario
################# Define Constraints File #################
read_sdc -e ../Synthesis/sdc/cv32e40p_top.sdc
}

#current scenario
current_scenario func_slow_Cmax

set_scenario_status -leakage_power false -dynamic_power false [get_scenarios]

report_scenarios

