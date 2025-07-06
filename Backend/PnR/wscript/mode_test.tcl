################################################################################
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


# /home/ICer/ITI/PnR_Grad/Backend/Synthesis/sdc/cv32e40p_top.sdc, line 387
create_clock -name clk_i -period 5 -waveform {0 2.5} [get_ports {clk_i}]
set_propagated_clock [get_clocks {clk_i}]
# MD5_SIGNATURE: 85F698C4F44C1D63DFC5C092B791919C 
