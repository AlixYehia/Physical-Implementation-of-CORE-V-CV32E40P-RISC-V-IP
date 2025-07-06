set DB_PATH "/mnt/hgfs/saed14_pdk/stdcell_rvt/db_ccs"

set_app_var search_path "$DB_PATH"

# Define all scenarios to process
set scenarios {
    func_fast_Cmax
    func_fast_Cmin
    func_slow_Cmax
    func_slow_Cmin
}

# Main processing loop
foreach scenario $scenarios {
    puts "\n================== Running Scenario: $scenario ==================\n"
    
    sh mkdir -p reports/$scenario
    
    switch $scenario {
        func_fast_Cmax {
            set LIB "saed14rvt_ff0p88vm40c.db"
            set parasitics {/home/ICer/ITI/PnR_Grad/Backend/PnR/outputs/cv32e40p_top.tlup_max_-40.spef}
        }
        func_fast_Cmin {
            set LIB "saed14rvt_ff0p88vm40c.db"
            set parasitics {/home/ICer/ITI/PnR_Grad/Backend/PnR/outputs/cv32e40p_top.tlup_min_-40.spef}
        }
        func_slow_Cmax {
            set LIB "saed14rvt_ss0p6v125c.db" 
            set parasitics {/home/ICer/ITI/PnR_Grad/Backend/PnR/outputs/cv32e40p_top.tlup_max_125.spef}
        }
        func_slow_Cmin {
            set LIB "saed14rvt_ss0p6v125c.db" 
            set parasitics {/home/ICer/ITI/PnR_Grad/Backend/PnR/outputs/cv32e40p_top.tlup_min_125.spef}
        }
    }
    
    set SDC /home/ICer/ITI/PnR_Grad/Backend/PnR/outputs/${scenario}.sdc
    
    
    # Set up link library path
    set link_library [list * $LIB]
    
    # Load design
    read_verilog "/home/ICer/ITI/PnR_Grad/Backend/PnR/netlists/cv32e40p_top_finished_icc2.v"
    link
    current_design cv32e40p_top
    
    # Load constraints and parasitics
    read_sdc -e $SDC
    read_parasitics $parasitics
    
    # Generate reports
    report_global_timing > reports/$scenario/global_timing.rpt
    report_constraint -all_violators > reports/$scenario/constraint_violations.rpt 
    
    # Save session
    save_session sessions/$scenario

    # Clear previous design to avoid conflicts
    remove_design -all
    remove_lib -all

    
    puts "\n================== Finished Scenario: $scenario ==================\n"
}

puts "\n================== All scenarios processed successfully ==================\n"

#start_gui

exit
