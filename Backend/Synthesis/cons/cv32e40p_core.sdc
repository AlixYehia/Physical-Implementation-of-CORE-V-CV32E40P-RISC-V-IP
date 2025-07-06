# Copyright 2020 Silicon Labs, Inc.
#
# This file, and derivatives thereof are licensed under the
# Solderpad License, Version 2.0 (the "License").
#
# Use of this file means you agree to the terms and conditions
# of the license and are in full compliance with the License.
#
# You may obtain a copy of the License at:
#
#     https://solderpad.org/licenses/SHL-2.0/
#
# Unless required by applicable law or agreed to in writing, software
# and hardware implementations thereof distributed under the License
# is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS
# OF ANY KIND, EITHER EXPRESSED OR IMPLIED.
#
# See the License for the specific language governing permissions and
# limitations under the License.

#//////////////////////////////////////////////////////////////////////////////
# Engineer:       Arjan Bink - arjan.bink@silabs.com                         //
#                                                                            //
# Project Name:   CV32E40P                                                   //
#                                                                            //
# Description:    Example synthesis constraints.                             //
#                                                                            //
#                 The clock period and input/output delays are technology    //
#                 and project dependent and are expected to be adjusted as   //
#                 needed.                                                    //
#                                                                            //
#                 OBI related bus inputs arrive late on purpose and OBI      //
#                 related outputs are available earlier (as they shall not   //
#                 combinatorially depend on the OBI inputs)                  //
#                                                                            //
#//////////////////////////////////////////////////////////////////////////////


# Modified script by Ali


####################################################################################
           #########################################################
                  #### Section 0 : DC Variables ####
           #########################################################
#################################################################################### 

# Prevent assign statements in the generated netlist (must be applied before compile command)
set_fix_multiple_port_nets -all -buffer_constants -feedthroughs



# 200MHz
set clock_period 5.0

# Input delays for interrupts
set in_delay_irq          [expr $clock_period * 0.50] 
# Output delays for interrupt related signals
set out_delay_irq         [expr $clock_period * 0.25] 

# Input delays for early signals
set in_delay_early [expr $clock_period * 0.10] 

# OBI inputs delays
set in_delay_instr_gnt    [expr $clock_period * 0.80]
set in_delay_instr_rvalid [expr $clock_period * 0.80]
set in_delay_instr_rdata  [expr $clock_period * 0.80]

set in_delay_data_gnt     [expr $clock_period * 0.80]
set in_delay_data_rvalid  [expr $clock_period * 0.80]
set in_delay_data_rdata   [expr $clock_period * 0.80]

# OBI outputs delays
set out_delay_instr_req  [expr $clock_period * 0.60]
set out_delay_instr_addr [expr $clock_period * 0.60]

set out_delay_data_req   [expr $clock_period * 0.60]
set out_delay_data_we    [expr $clock_period * 0.60]
set out_delay_data_be    [expr $clock_period * 0.60]
set out_delay_data_addr  [expr $clock_period * 0.60]
set out_delay_data_wdata [expr $clock_period * 0.60]

# I/O delays for non RISC-V Bus Interface ports
set in_delay_other       [expr $clock_period * 0.10]
set out_delay_other      [expr $clock_period * 0.60]

# core_sleep_o output delay
set out_delay_core_sleep [expr $clock_period * 0.25]

# All clocks
set clock_ports [list \
    clk_i \
]

# IRQ Input ports
set irq_input_ports [remove_from_collection [get_ports irq_i*] [get_ports irq_id_o*]]

# IRQ Output ports
set irq_output_ports [list \
    irq_ack_o \
    irq_id_o* \
]

# Early Input ports (ideally from register)
set early_input_ports [list \
    debug_req_i \
    boot_addr_i* \
    mtvec_addr_i* \
    dm_halt_addr_i* \
    hart_id_i* \
    dm_exception_addr_i* \
]

# RISC-V OBI Input ports
set obi_input_ports [list \
    instr_gnt_i \
    instr_rvalid_i \
    instr_rdata_i* \
    data_gnt_i \
    data_rvalid_i \
    data_rdata_i* \
]

# RISC-V OBI Output ports
set obi_output_ports [list \
    instr_req_o \
    instr_addr_o* \
    data_req_o \
    data_we_o \
    data_be_o* \
    data_addr_o* \
    data_wdata_o* \
]

# RISC-V Sleep Output ports
set sleep_output_ports [list \
    core_sleep_o \
]


####################################################################################
           #########################################################
                  #### Section 1 : Clock Definition ####
           #########################################################
#################################################################################### 

create_clock \
      -name clk_i \
      -period $clock_period \
      [get_ports clk_i]

#set_clock_uncertainty [expr 0.1 * $clock_period] [get_clocks clk_i]

# Clocks
set_dont_touch_network [get_clocks clk_i]
# Resets
set_dont_touch_network [get_ports rst_ni]



####################################################################################
           #########################################################
             #### Section 2 : set input/output delay on ports ####
           #########################################################
####################################################################################


########### Defining Default I/O constraints ###################

set all_clock_ports $clock_ports


# Here, I must use concat instead of list, since the variables are lists and get_ports can't work on a list of lists — it treats clk_i scan_clk as a single port name. The same applies to outputs.

set all_other_input_ports  [remove_from_collection [all_inputs]  [get_ports [concat $all_clock_ports $resets $obi_input_ports $irq_input_ports $early_input_ports]]]

set all_other_output_ports [remove_from_collection [all_outputs] [get_ports [concat $all_clock_ports $obi_output_ports $sleep_output_ports $irq_output_ports]]]

# IRQs
set_input_delay  $in_delay_irq          [get_ports $irq_input_ports        ] -clock clk_i
set_output_delay $out_delay_irq         [get_ports $irq_output_ports       ] -clock clk_i

# OBI input/output delays
set_input_delay  $in_delay_instr_gnt    [ get_ports instr_gnt_i            ] -clock clk_i
set_input_delay  $in_delay_instr_rvalid [ get_ports instr_rvalid_i         ] -clock clk_i
set_input_delay  $in_delay_instr_rdata  [ get_ports instr_rdata_i*         ] -clock clk_i

set_input_delay  $in_delay_data_gnt     [ get_ports data_gnt_i             ] -clock clk_i
set_input_delay  $in_delay_data_rvalid  [ get_ports data_rvalid_i          ] -clock clk_i
set_input_delay  $in_delay_data_rdata   [ get_ports data_rdata_i*          ] -clock clk_i

set_output_delay $out_delay_instr_req   [ get_ports instr_req_o            ] -clock clk_i
set_output_delay $out_delay_instr_addr  [ get_ports instr_addr_o*          ] -clock clk_i

set_output_delay $out_delay_data_req    [ get_ports data_req_o             ] -clock clk_i
set_output_delay $out_delay_data_we     [ get_ports data_we_o              ] -clock clk_i
set_output_delay $out_delay_data_be     [ get_ports data_be_o*             ] -clock clk_i
set_output_delay $out_delay_data_addr   [ get_ports data_addr_o*           ] -clock clk_i
set_output_delay $out_delay_data_wdata  [ get_ports data_wdata_o*          ] -clock clk_i

# Misc
set_input_delay  $in_delay_early        [get_ports $early_input_ports      ] -clock clk_i
set_input_delay  $in_delay_other        [get_ports $all_other_input_ports  ] -clock clk_i

set_output_delay $out_delay_other       [get_ports $all_other_output_ports ] -clock clk_i
set_output_delay $out_delay_core_sleep  [ get_ports core_sleep_o           ] -clock clk_i


####################################################################################
           #########################################################
                  #### Section 4 : Driving cells ####
           #########################################################
####################################################################################

set_driving_cell -lib_cell SAEDRVT14_BUF_4 -pin X [remove_from_collection [all_inputs] [get_ports {clk_i rst_ni}]]


####################################################################################
           #########################################################
                  #### Section 5 : Output load ####
           ########################################################
####################################################################################

set_load 0.5 [all_outputs] 

set_max_fanout 25 [current_design]


####################################################################################
           #########################################################
                 #### Section 6 : Operating Condition ####
           #########################################################
####################################################################################

# Define the Worst Library for Max(#setup) analysis
# Define the Best Library for Min(hold) analysis

set_operating_conditions -min_library "saed14rvt_ff0p88vm40c" -min "ff0p88vm40c" -max_library "saed14rvt_ss0p6v125c" -max "ss0p6v125c"

