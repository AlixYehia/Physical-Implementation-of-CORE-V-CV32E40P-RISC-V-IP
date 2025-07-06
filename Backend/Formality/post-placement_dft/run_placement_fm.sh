mkdir -p reports
mkdir -p log

rm -r formality_svf formality.log fm_shell_command.log FM_WORK fm_shell_command.lck formality.lck

fm_shell -f scripts/placement_fm_script.tcl | tee log/placement_fm.log
