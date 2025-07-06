mkdir -p logs
mkdir -p sessions
mkdir -p output

pt_shell -f scripts/pt.tcl | tee logs/pt.log

pt_shell -m -f scripts/DSMA.tcl | tee logs/DSMA.log

pt_shell -m -f scripts/DSMA_check.tcl | tee logs/DSMA_check.log
