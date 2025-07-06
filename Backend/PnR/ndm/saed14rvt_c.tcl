set_app_options -name lib.workspace.group_libs_combine_physical_only -value false
set_app_options -name lib.workspace.use_workspace_tech -value true
set_app_options -name lib.workspace.fast_exploration -value true
set_app_options -name lib.workspace.reuse_lib -value true
set_app_options -name lib.workspace.create_cached_lib -value true
# workspace saed14rvt:
create_workspace saed14rvt
read_db /mnt/hgfs/saed14_pdk/stdcell_rvt/db_nldm/saed14rvt_ss0p6v125c.db
read_db /mnt/hgfs/saed14_pdk/stdcell_rvt/db_nldm/saed14rvt_tt0p6v25c.db
read_db /mnt/hgfs/saed14_pdk/stdcell_rvt/db_nldm/saed14rvt_ff0p88v125c.db

read_ndm /mnt/hgfs/saed14_pdk/stdcell_rvt/ndm/saed14rvt_frame_only.ndm
process_workspaces -check_options {-allow_missing} -output ndm/saed14rvt2.ndm -force
remove_workspace


