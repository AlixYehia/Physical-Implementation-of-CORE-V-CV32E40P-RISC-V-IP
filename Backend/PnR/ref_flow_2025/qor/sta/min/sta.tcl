set link_path  "/home/standard_cell_libraries/NangateOpenCellLibrary_PDKv1_3_v2010_12/lib/Front_End/Liberty/NLDM/NangateOpenCellLibrary_ff1p25v0c.db"

read_verilog "../../../pnr/output/mips_16_icc.v"

current_design mips_16
link

source ../../../syn/cons/cons.tcl
#read_parasitics ../../rcxt/cmin/mips_16_cmin_t125.spef
read_parasitics ../../../pnr/output/mips_16.spef.min

update_timing

save_session mips_16_min.session

report_constraint -all_violators -significant_digits 4 > ./mips_16.min_constr.rpt
report_timing -delay_type min -nworst 40 -significant_digits 4 > ./mips_16.min_timing.rpt

write_sdf ./mips_16.min.sdf




