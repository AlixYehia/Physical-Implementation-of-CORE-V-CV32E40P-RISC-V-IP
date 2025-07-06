################################################################################
#
# Design name:  cv32e40p_top_6_routed
#
# Created by icc2 write_script on Tue Jul  1 18:54:11 2025
#
################################################################################

################################################################################
#
# Units
# time_unit               : 1e-09
# resistance_unit         : 1000000
# capacitive_load_unit    : 1e-15
# voltage_unit            : 1
# current_unit            : 1e-06
# power_unit              : 1e-12
################################################################################


set dirName [file dirname [file normalize [info script]]]
set extName "tcl"
set_user_units -input -type time -value 1ns
set_user_units -input -type resistance -value 1MOhm
set_user_units -input -type capacitance -value 1fF
set_user_units -input -type voltage -value 1V
set_user_units -input -type current -value 1uA
set_user_units -output -type time -value 1ns
set_user_units -output -type resistance -value 1MOhm
set_user_units -output -type capacitance -value 1fF
set_user_units -output -type voltage -value 1V
set_user_units -output -type current -value 1uA

set cornerNames [list slow_Cmax slow_Cmin fast_Cmax fast_Cmin]
foreach cornerName $cornerNames {
  create_corner $cornerName
}

set modeNames [list func test]
foreach modeName $modeNames {
  create_mode $modeName
}

create_scenario -name func_slow_Cmax -mode func -corner slow_Cmax
set_scenario_status func_slow_Cmax -setup true -hold true -leakage_power false \
    -dynamic_power false -max_transition true -max_capacitance true \
    -min_capacitance true -cell_em false -signal_em false -active true

create_scenario -name func_slow_Cmin -mode func -corner slow_Cmin
set_scenario_status func_slow_Cmin -setup true -hold true -leakage_power false \
    -dynamic_power false -max_transition true -max_capacitance true \
    -min_capacitance true -cell_em false -signal_em false -active true

create_scenario -name func_fast_Cmax -mode func -corner fast_Cmax
set_scenario_status func_fast_Cmax -setup true -hold true -leakage_power false \
    -dynamic_power false -max_transition true -max_capacitance true \
    -min_capacitance true -cell_em false -signal_em false -active true

create_scenario -name func_fast_Cmin -mode func -corner fast_Cmin
set_scenario_status func_fast_Cmin -setup true -hold true -leakage_power false \
    -dynamic_power false -max_transition true -max_capacitance true \
    -min_capacitance true -cell_em false -signal_em false -active true

create_scenario -name test_slow_Cmax -mode test -corner slow_Cmax
set_scenario_status test_slow_Cmax -setup true -hold true -leakage_power false \
    -dynamic_power false -max_transition true -max_capacitance true \
    -min_capacitance true -cell_em false -signal_em false -active true

create_scenario -name test_slow_Cmin -mode test -corner slow_Cmin
set_scenario_status test_slow_Cmin -setup true -hold true -leakage_power false \
    -dynamic_power false -max_transition true -max_capacitance true \
    -min_capacitance true -cell_em false -signal_em false -active true

create_scenario -name test_fast_Cmax -mode test -corner fast_Cmax
set_scenario_status test_fast_Cmax -setup true -hold true -leakage_power false \
    -dynamic_power false -max_transition true -max_capacitance true \
    -min_capacitance true -cell_em false -signal_em false -active true

create_scenario -name test_fast_Cmin -mode test -corner fast_Cmin
set_scenario_status test_fast_Cmin -setup true -hold true -leakage_power false \
    -dynamic_power false -max_transition true -max_capacitance true \
    -min_capacitance true -cell_em false -signal_em false -active true

foreach cornerName $cornerNames {
  current_corner $cornerName
  source ${dirName}/corner_${cornerName}.${extName}
}

foreach modeName $modeNames {
  current_mode $modeName
  source ${dirName}/mode_${modeName}.${extName}
}

current_scenario func_slow_Cmax
source ${dirName}/scenario_func_slow_Cmax.${extName}
current_scenario func_slow_Cmin
source ${dirName}/scenario_func_slow_Cmin.${extName}
current_scenario func_fast_Cmax
source ${dirName}/scenario_func_fast_Cmax.${extName}
current_scenario func_fast_Cmin
source ${dirName}/scenario_func_fast_Cmin.${extName}
current_scenario test_slow_Cmax
source ${dirName}/scenario_test_slow_Cmax.${extName}
current_scenario test_slow_Cmin
source ${dirName}/scenario_test_slow_Cmin.${extName}
current_scenario test_fast_Cmax
source ${dirName}/scenario_test_fast_Cmax.${extName}
current_scenario test_fast_Cmin
source ${dirName}/scenario_test_fast_Cmin.${extName}

source ${dirName}/design.${extName}

if {[file exists ${dirName}/cts.${extName}]} {
  source ${dirName}/cts.${extName}
}
current_mode func
current_corner slow_Cmax
# End of script
# MD5_SIGNATURE: 814C64B2965A0EF8B06E25AD5879A8FA 
