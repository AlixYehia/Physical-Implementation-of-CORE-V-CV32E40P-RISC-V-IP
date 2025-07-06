mkdir -p logs
mkdir -p outputs
mkdir -p netlists
mkdir -p reports

icc2_shell -f scripts/setup.tcl | tee logs/setup.log

icc2_shell -f scripts/floorplan.tcl | tee logs/floorplan.log

icc2_shell -f scripts/powerplan.tcl | tee logs/powerplan.log

icc2_shell -f scripts/placement.tcl | tee logs/placement.log

icc2_shell -f scripts/cts.tcl | tee logs/cts.log

icc2_shell -f scripts/routing.tcl | tee logs/routing.log

icc2_shell -f scripts/primetime.tcl | tee logs/primetime.log

icc2_shell -f scripts/finishing.tcl | tee logs/finishing.log


