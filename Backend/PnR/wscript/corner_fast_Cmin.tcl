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


set_load -pin_load 0.5 [get_ports {instr_req_o}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[31]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[30]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[29]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[28]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[27]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[26]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[25]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[24]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[23]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[22]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[21]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[20]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[19]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[18]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[17]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[16]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[15]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[14]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[13]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[12]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[11]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[10]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[9]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[8]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[7]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[6]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[5]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[4]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[3]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[2]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[1]}]
set_load -pin_load 0.5 [get_ports {instr_addr_o[0]}]
set_load -pin_load 0.5 [get_ports {data_req_o}]
set_load -pin_load 0.5 [get_ports {data_we_o}]
set_load -pin_load 0.5 [get_ports {data_be_o[3]}]
set_load -pin_load 0.5 [get_ports {data_be_o[2]}]
set_load -pin_load 0.5 [get_ports {data_be_o[1]}]
set_load -pin_load 0.5 [get_ports {data_be_o[0]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[31]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[30]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[29]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[28]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[27]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[26]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[25]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[24]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[23]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[22]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[21]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[20]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[19]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[18]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[17]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[16]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[15]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[14]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[13]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[12]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[11]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[10]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[9]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[8]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[7]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[6]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[5]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[4]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[3]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[2]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[1]}]
set_load -pin_load 0.5 [get_ports {data_addr_o[0]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[31]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[30]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[29]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[28]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[27]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[26]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[25]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[24]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[23]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[22]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[21]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[20]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[19]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[18]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[17]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[16]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[15]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[14]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[13]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[12]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[11]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[10]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[9]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[8]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[7]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[6]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[5]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[4]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[3]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[2]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[1]}]
set_load -pin_load 0.5 [get_ports {data_wdata_o[0]}]
set_load -pin_load 0.5 [get_ports {irq_ack_o}]
set_load -pin_load 0.5 [get_ports {irq_id_o[4]}]
set_load -pin_load 0.5 [get_ports {irq_id_o[3]}]
set_load -pin_load 0.5 [get_ports {irq_id_o[2]}]
set_load -pin_load 0.5 [get_ports {irq_id_o[1]}]
set_load -pin_load 0.5 [get_ports {irq_id_o[0]}]
set_load -pin_load 0.5 [get_ports {debug_havereset_o}]
set_load -pin_load 0.5 [get_ports {debug_running_o}]
set_load -pin_load 0.5 [get_ports {debug_halted_o}]
set_load -pin_load 0.5 [get_ports {core_sleep_o}]
# /home/ICer/ITI/PnR_Grad/Backend/PnR/scripts/import/MCMM.tcl, line 32
set_process_label ff
# /home/ICer/ITI/PnR_Grad/Backend/PnR/scripts/import/MCMM.tcl, line 34
set_voltage 0.88
# /home/ICer/ITI/PnR_Grad/Backend/PnR/scripts/import/MCMM.tcl, line 33
set_temperature -40
set_scaling_lib_group -all
set_parasitic_parameters -early_spec tlup_min -early_temperature -40 -late_spec \
    tlup_min -late_temperature -40
# MD5_SIGNATURE: A5C7FF97A57DD3961853732FC2DFB02B 
