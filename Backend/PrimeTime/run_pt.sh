mkdir -p logs
mkdir -p sessions
mkdir -p output

pt_shell -f scripts/pt.tcl | tee logs/pt.log

pt_shell -m -f scripts/DMSA.tcl | tee logs/DMSA.log

pt_shell -m -f scripts/DMSA_check.tcl | tee logs/DMSA_check.log
