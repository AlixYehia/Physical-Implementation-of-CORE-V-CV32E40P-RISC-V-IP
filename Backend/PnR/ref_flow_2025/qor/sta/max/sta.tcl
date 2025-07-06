set link_path  "/home/standard_cell_libraries/NangateOpenCellLibrary_PDKv1_3_v2010_12/lib/Front_End/Liberty/NLDM/NangateOpenCellLibrary_ss0p95vn40c.db"

read_verilog "../../../pnr/output/mips_16_icc.v"

current_design mips_16
link

source ../../../syn/cons/cons.tcl
#read_parasitics ../../rcxt/cmax/mips_16_cmax_tm40.spef
read_parasitics ../../../pnr/output/mips_16.spef.max

update_timing

save_session mips_16_max.session

report_constraint -all_violators -significant_digits 4 > ./mips_16.max_constr.rpt
report_timing -delay_type max -nworst 40 -significant_digits 4 > ./mips_16.max_timing.rpt

write_sdf ./mips_16.max.sdf




