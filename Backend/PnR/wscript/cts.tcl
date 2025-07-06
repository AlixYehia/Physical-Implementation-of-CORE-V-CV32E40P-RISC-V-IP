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


set_clock_routing_rules -default_rule -min_routing_layer M3 -max_routing_layer \
    M9
set_clock_routing_rules -net_type internal -rules clknet_NDR -min_routing_layer \
    M3 -max_routing_layer M9
set_clock_routing_rules -net_type root -rules clknet_NDR -min_routing_layer M3 \
    -max_routing_layer M9
set_clock_tree_options -target_skew 0.05 -corners slow_Cmax
set_clock_tree_options -target_skew 0.05 -corners slow_Cmin
set_clock_tree_options -target_skew 0.05 -corners fast_Cmax
set_clock_tree_options -target_skew 0.05 -corners fast_Cmin
set_clock_tree_options -target_skew 0.180438 -clocks [get_clocks -mode func \
    clk_i] -corners fast_Cmax
set_clock_tree_options -target_skew 0.180438 -clocks [get_clocks -mode func \
    clk_i] -corners fast_Cmin
set_clock_tree_options -target_skew 0.180438 -clocks [get_clocks -mode func \
    clk_i] -corners slow_Cmax
set_clock_tree_options -target_skew 0.180438 -clocks [get_clocks -mode func \
    clk_i] -corners slow_Cmin
set_clock_tree_options -target_skew 0.180438 -clocks [get_clocks -mode test \
    clk_i] -corners fast_Cmax
set_clock_tree_options -target_skew 0.180438 -clocks [get_clocks -mode test \
    clk_i] -corners fast_Cmin
set_clock_tree_options -target_skew 0.180438 -clocks [get_clocks -mode test \
    clk_i] -corners slow_Cmax
set_clock_tree_options -target_skew 0.180438 -clocks [get_clocks -mode test \
    clk_i] -corners slow_Cmin
