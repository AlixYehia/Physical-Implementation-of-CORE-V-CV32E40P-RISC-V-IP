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


set_dont_touch [get_cells {sspare_0}]
set_dont_touch [get_cells {sspare_1}]
set_dont_touch [get_cells {sspare_2}]
set_dont_touch [get_cells {sspare_3}]
set_dont_touch [get_cells {sspare_4}]
set_dont_touch [get_cells {sspare_5}]
set_dont_touch [get_cells {sspare_6}]
set_dont_touch [get_cells {sspare_7}]
set_dont_touch [get_cells {sspare_8}]
set_dont_touch [get_cells {sspare_9}]
set_dont_touch [get_cells {sspare_10}]
set_dont_touch [get_cells {sspare_11}]
set_dont_touch [get_cells {sspare_12}]
set_dont_touch [get_cells {sspare_13}]
set_dont_touch [get_cells {sspare_14}]
set_dont_touch [get_cells {sspare_15}]
set_dont_touch [get_cells {sspare_16}]
set_dont_touch [get_cells {sspare_17}]
set_dont_touch [get_cells {sspare_18}]
set_dont_touch [get_cells {sspare_19}]
set_dont_touch [get_cells {sspare_20}]
set_dont_touch [get_cells {sspare_21}]
set_dont_touch [get_cells {sspare_22}]
set_dont_touch [get_cells {sspare_23}]
set_dont_touch [get_cells {sspare_24}]
set_dont_touch [get_cells {sspare_0_0}]
set_dont_touch [get_cells {sspare_0_1}]
set_dont_touch [get_cells {sspare_0_2}]
set_dont_touch [get_cells {sspare_0_3}]
set_dont_touch [get_cells {sspare_0_4}]
set_dont_touch [get_cells {sspare_0_5}]
set_dont_touch [get_cells {sspare_0_6}]
set_dont_touch [get_cells {sspare_0_7}]
set_dont_touch [get_cells {sspare_0_8}]
set_dont_touch [get_cells {sspare_0_9}]
set_dont_touch [get_cells {sspare_0_10}]
set_dont_touch [get_cells {sspare_0_11}]
set_dont_touch [get_cells {sspare_0_12}]
set_dont_touch [get_cells {sspare_0_13}]
set_dont_touch [get_cells {sspare_0_14}]
set_dont_touch [get_cells {sspare_0_15}]
set_dont_touch [get_cells {sspare_0_16}]
set_dont_touch [get_cells {sspare_0_17}]
set_dont_touch [get_cells {sspare_0_18}]
set_dont_touch [get_cells {sspare_0_19}]
set_dont_touch [get_cells {sspare_0_20}]
set_dont_touch [get_cells {sspare_0_21}]
set_dont_touch [get_cells {sspare_0_22}]
set_dont_touch [get_cells {sspare_0_23}]
set_dont_touch [get_cells {sspare_0_24}]
set_budget_options -adjust_latency prects  -top_level
set_app_options -block [current_block] -list \
    {cts.common.user_instance_name_prefix CTS_ clock_opt.flow.enable_ccd true \
    mv.pg.default_power_supply_net_name VDD \
    mv.pg.default_ground_supply_net_name VSS \
    mv.pg.default_power_supply_port_name VDD \
    mv.pg.default_ground_supply_port_name VSS \
    opt.common.user_instance_name_prefix CTS_ opt.tie_cell.max_fanout 25 \
    place.coarse.max_density 0.2 place.coarse.congestion_driven_max_util 0.3 \
    place.coarse.target_routing_density 0.6 \
    place.coarse.continue_on_missing_scandef true \
    place.common.exclude_unfixed_physical_only_cells false \
    place.legalize.output_violated_info_file false route.common.verbose_level 0 \
    route.global.deterministic off route.global.timing_driven false \
    route.detail.antenna true route.detail.force_end_on_preferred_grid false}
set_ignored_layers -min_routing_layer M1 -max_routing_layer M9
remove_routing_rules "clknet_NDR"
create_routing_rule "clknet_NDR" -widths {"M1" 0.0340 "M2" 0.0340 "M3" 0.0340 \
    "M4" 0.0600 "M5" 0.0600 "M6" 0.0600 "M7" 0.0600 "M8" 0.0600 "M9" 0.0600 \
    "MRDL" 2.0000} -spacings {"M1" {0.0260} "M2" {0.0260} "M3" {0.0260} "M4" \
    {0.0400} "M5" {0.0400} "M6" {0.0400} "M7" {0.0400} "M8" {0.0400} "M9" \
    {0.0400} "MRDL" {2.0000}} -spacing_weight_levels {"M1" {hard} "M2" {hard} \
    "M3" {hard} "M4" {hard} "M5" {hard} "M6" {hard} "M7" {hard} "M8" {hard} \
    "M9" {hard} "MRDL" {hard}} -spacing_length_thresholds {"M1" {0.0000} "M2" \
    {0.0000} "M3" {0.0000} "M4" {0.0000} "M5" {0.0000} "M6" {0.0000} "M7" \
    {0.0000} "M8" {0.0000} "M9" {0.0000} "MRDL" {0.0000}} -multiplier_width 2 \
    -multiplier_spacing 2
remove_routing_rules "default_rule_equivalent_ndr_double_spacing"
create_routing_rule "default_rule_equivalent_ndr_double_spacing" -widths {"M1" \
    0.0340 "M2" 0.0340 "M3" 0.0340 "M4" 0.0600 "M5" 0.0600 "M6" 0.0600 "M7" \
    0.0600 "M8" 0.0600 "M9" 0.0600 "MRDL" 2.0000} -spacings {"M3" {0.0520 \
    0.0520} "M4" {0.0800 0.0800} "M5" {0.0800 0.0800} "M6" {0.0800 0.0800} "M7" \
    {0.0800 0.0800} "M8" {0.0800 0.0800} "M9" {0.0800 0.0800}} \
    -spacing_weight_levels {"M3" {hard hard} "M4" {hard hard} "M5" {hard hard} \
    "M6" {hard hard} "M7" {hard hard} "M8" {hard hard} "M9" {hard hard}} \
    -spacing_length_thresholds {"M3" {0.0000 0.0000} "M4" {0.0000 0.0000} "M5" \
    {0.0000 0.0000} "M6" {0.0000 0.0000} "M7" {0.0000 0.0000} "M8" {0.0000 \
    0.0000} "M9" {0.0000 0.0000}} -multiplier_width 1 -multiplier_spacing 1
remove_routing_rules "clknet_NDR_ext_spacing"
create_routing_rule "clknet_NDR_ext_spacing" -widths {"M1" 0.0340 "M2" 0.0340 \
    "M3" 0.0340 "M4" 0.0600 "M5" 0.0600 "M6" 0.0600 "M7" 0.0600 "M8" 0.0600 \
    "M9" 0.0600 "MRDL" 2.0000} -spacings {"M1" {0.0260} "M2" {0.0260} "M3" \
    {0.0520} "M4" {0.0800} "M5" {0.0800} "M6" {0.0800} "M7" {0.0800} "M8" \
    {0.0800} "M9" {0.0800} "MRDL" {2.0000}} -spacing_weight_levels {"M1" {hard} \
    "M2" {hard} "M3" {hard} "M4" {hard} "M5" {hard} "M6" {hard} "M7" {hard} \
    "M8" {hard} "M9" {hard} "MRDL" {hard}} -spacing_length_thresholds {"M1" \
    {0.0000} "M2" {0.0000} "M3" {0.0000} "M4" {0.0000} "M5" {0.0000} "M6" \
    {0.0000} "M7" {0.0000} "M8" {0.0000} "M9" {0.0000} "MRDL" {0.0000}} \
    -multiplier_width 2 -multiplier_spacing 2
set_routing_rule -rule "clknet_NDR_ext_spacing" -rule_is_user false \
    -min_routing_layer "M3" -max_routing_layer "M9" [get_nets {clk_i}]
set_routing_rule -rule "clknet_NDR" -rule_is_user false -min_routing_layer "M3" \
    -max_routing_layer "M9" [get_nets \
    {core_i/sleep_unit_i/core_clock_gate_i/p_abuf231}]
set_routing_rule -rule_is_user false -min_routing_layer "M3" -max_routing_layer \
    "M9" [get_nets {core_i/p_abuf484}]
set_routing_rule -rule_is_user false -min_routing_layer "M3" -max_routing_layer \
    "M9" [get_nets {core_i/p_abuf485}]
set_routing_rule -rule_is_user false -min_routing_layer "M3" -max_routing_layer \
    "M9" [get_nets {core_i/p_abuf486}]
set_routing_rule -rule_is_user false -min_routing_layer "M3" -max_routing_layer \
    "M9" [get_nets {core_i/p_abuf487}]
set_routing_rule -rule_is_user false -min_routing_layer "M3" -max_routing_layer \
    "M9" [get_nets {core_i/p_abuf488}]
set_routing_rule -rule "default_rule_equivalent_ndr_double_spacing" \
    -rule_is_user false -min_routing_layer "M3" -max_routing_layer "M9" \
    [get_nets {core_i/p_abuf489}]
set_routing_rule -rule_is_user false -min_routing_layer "M3" -max_routing_layer \
    "M9" [get_nets {core_i/p_abuf490}]
set_routing_rule -rule "default_rule_equivalent_ndr_double_spacing" \
    -rule_is_user false -min_routing_layer "M3" -max_routing_layer "M9" \
    [get_nets {core_i/p_abuf491}]
set_routing_rule -rule "default_rule_equivalent_ndr_double_spacing" \
    -rule_is_user false -min_routing_layer "M3" -max_routing_layer "M9" \
    [get_nets {core_i/p_abuf492}]
set_routing_rule -rule "default_rule_equivalent_ndr_double_spacing" \
    -rule_is_user false -min_routing_layer "M3" -max_routing_layer "M9" \
    [get_nets {core_i/p_abuf493}]
set_routing_rule -rule_is_user false -min_routing_layer "M3" -max_routing_layer \
    "M9" [get_nets {core_i/p_abuf494}]
set_routing_rule -rule "default_rule_equivalent_ndr_double_spacing" \
    -rule_is_user false -min_routing_layer "M3" -max_routing_layer "M9" \
    [get_nets {core_i/p_abuf495}]
set_routing_rule -rule "default_rule_equivalent_ndr_double_spacing" \
    -rule_is_user false -min_routing_layer "M3" -max_routing_layer "M9" \
    [get_nets {core_i/p_abuf496}]
set_routing_rule -rule "default_rule_equivalent_ndr_double_spacing" \
    -rule_is_user false -min_routing_layer "M3" -max_routing_layer "M9" \
    [get_nets {core_i/p_abuf498}]
set_routing_rule -rule "default_rule_equivalent_ndr_double_spacing" \
    -rule_is_user false -min_routing_layer "M3" -max_routing_layer "M9" \
    [get_nets {core_i/p_abuf500}]
set_routing_rule -rule_is_user false -min_routing_layer "M3" -max_routing_layer \
    "M9" [get_nets {core_i/p_abuf501}]
set_routing_rule -rule_is_user false -min_routing_layer "M3" -max_routing_layer \
    "M9" [get_nets {core_i/p_abuf503}]
set_routing_rule -rule_is_user false -min_routing_layer "M3" -max_routing_layer \
    "M9" [get_nets {core_i/p_abuf505}]
set_routing_rule -rule "default_rule_equivalent_ndr_double_spacing" \
    -rule_is_user false -min_routing_layer "M3" -max_routing_layer "M9" \
    [get_nets {core_i/p_abuf506}]
set_routing_rule -rule "default_rule_equivalent_ndr_double_spacing" \
    -rule_is_user false -min_routing_layer "M3" -max_routing_layer "M9" \
    [get_nets {core_i/p_abuf507}]
set_routing_rule -rule_is_user false -min_routing_layer "M3" -max_routing_layer \
    "M9" [get_nets {core_i/p_abuf508}]
set_routing_rule -rule "default_rule_equivalent_ndr_double_spacing" \
    -rule_is_user false -min_routing_layer "M3" -max_routing_layer "M9" \
    [get_nets {core_i/p_abuf509}]
set_routing_rule -rule_is_user false -min_routing_layer "M3" -max_routing_layer \
    "M9" [get_nets {core_i/p_abuf510}]
set_routing_rule -rule_is_user false -min_routing_layer "M3" -max_routing_layer \
    "M9" [get_nets {core_i/p_abuf511}]
set_routing_rule -rule_is_user false -min_routing_layer "M3" -max_routing_layer \
    "M9" [get_nets {core_i/p_abuf512}]
set_routing_rule -rule "default_rule_equivalent_ndr_double_spacing" \
    -rule_is_user false -min_routing_layer "M3" -max_routing_layer "M9" \
    [get_nets {core_i/p_abuf513}]
set_routing_rule -rule "default_rule_equivalent_ndr_double_spacing" \
    -rule_is_user false -min_routing_layer "M3" -max_routing_layer "M9" \
    [get_nets {core_i/p_abuf515}]
set_routing_rule -rule "default_rule_equivalent_ndr_double_spacing" \
    -rule_is_user false -min_routing_layer "M3" -max_routing_layer "M9" \
    [get_nets {core_i/p_abuf516}]
set_routing_rule -rule "default_rule_equivalent_ndr_double_spacing" \
    -rule_is_user false -min_routing_layer "M3" -max_routing_layer "M9" \
    [get_nets {core_i/p_abuf517}]
set_routing_rule -rule "default_rule_equivalent_ndr_double_spacing" \
    -rule_is_user false -min_routing_layer "M3" -max_routing_layer "M9" \
    [get_nets {core_i/p_abuf518}]
set_routing_rule -rule "default_rule_equivalent_ndr_double_spacing" \
    -rule_is_user false -min_routing_layer "M3" -max_routing_layer "M9" \
    [get_nets {core_i/p_abuf519}]
set_routing_rule -rule_is_user false -min_routing_layer "M3" -max_routing_layer \
    "M9" [get_nets {core_i/p_abuf675}]
set_routing_rule -rule "default_rule_equivalent_ndr_double_spacing" \
    -rule_is_user false -min_routing_layer "M3" -max_routing_layer "M9" \
    [get_nets {core_i/p_abuf520}]
set_routing_rule -rule "default_rule_equivalent_ndr_double_spacing" \
    -rule_is_user false -min_routing_layer "M3" -max_routing_layer "M9" \
    [get_nets {core_i/p_abuf521}]
set_routing_rule -rule "default_rule_equivalent_ndr_double_spacing" \
    -rule_is_user false -min_routing_layer "M3" -max_routing_layer "M9" \
    [get_nets {core_i/p_abuf522}]
set_routing_rule -rule "default_rule_equivalent_ndr_double_spacing" \
    -rule_is_user false -min_routing_layer "M3" -max_routing_layer "M9" \
    [get_nets {core_i/p_abuf523}]
set_routing_rule -rule "default_rule_equivalent_ndr_double_spacing" \
    -rule_is_user false -min_routing_layer "M3" -max_routing_layer "M9" \
    [get_nets {core_i/p_abuf524}]
set_routing_rule -rule_is_user false -min_routing_layer "M3" -max_routing_layer \
    "M9" [get_nets {core_i/p_abuf525}]
set_routing_rule -rule "default_rule_equivalent_ndr_double_spacing" \
    -rule_is_user false -min_routing_layer "M3" -max_routing_layer "M9" \
    [get_nets {core_i/p_abuf526}]
set_routing_rule -rule "default_rule_equivalent_ndr_double_spacing" \
    -rule_is_user false -min_routing_layer "M3" -max_routing_layer "M9" \
    [get_nets {core_i/p_abuf528}]
set_routing_rule -rule "default_rule_equivalent_ndr_double_spacing" \
    -rule_is_user false -min_routing_layer "M3" -max_routing_layer "M9" \
    [get_nets {core_i/p_abuf529}]
set_routing_rule -rule "default_rule_equivalent_ndr_double_spacing" \
    -rule_is_user false -min_routing_layer "M3" -max_routing_layer "M9" \
    [get_nets {core_i/p_abuf530}]
set_routing_rule -rule_is_user false -min_routing_layer "M3" -max_routing_layer \
    "M9" [get_nets {core_i/p_abuf531}]
set_routing_rule -rule "default_rule_equivalent_ndr_double_spacing" \
    -rule_is_user false -min_routing_layer "M3" -max_routing_layer "M9" \
    [get_nets {core_i/p_abuf532}]
set_routing_rule -rule_is_user false -min_routing_layer "M3" -max_routing_layer \
    "M9" [get_nets {core_i/p_abuf533}]
set_routing_rule -rule_is_user false -min_routing_layer "M3" -max_routing_layer \
    "M9" [get_nets {core_i/p_abuf534}]
set_routing_rule -rule "default_rule_equivalent_ndr_double_spacing" \
    -rule_is_user false -min_routing_layer "M3" -max_routing_layer "M9" \
    [get_nets {core_i/p_abuf535}]
set_routing_rule -rule_is_user false -min_routing_layer "M3" -max_routing_layer \
    "M9" [get_nets {core_i/p_abuf536}]
set_routing_rule -rule "default_rule_equivalent_ndr_double_spacing" \
    -rule_is_user false -min_routing_layer "M3" -max_routing_layer "M9" \
    [get_nets {core_i/p_abuf538}]
set_routing_rule -rule_is_user false -min_routing_layer "M3" -max_routing_layer \
    "M9" [get_nets {core_i/p_abuf539}]
set_routing_rule -rule_is_user false -min_routing_layer "M3" -max_routing_layer \
    "M9" [get_nets {core_i/p_abuf540}]
set_routing_rule -rule_is_user false -min_routing_layer "M3" -max_routing_layer \
    "M9" [get_nets {core_i/p_abuf541}]
set_routing_rule -rule_is_user false -min_routing_layer "M3" -max_routing_layer \
    "M9" [get_nets {core_i/p_abuf542}]
set_routing_rule -rule_is_user false -min_routing_layer "M3" -max_routing_layer \
    "M9" [get_nets {core_i/p_abuf543}]
set_routing_rule -rule_is_user false -min_routing_layer "M3" -max_routing_layer \
    "M9" [get_nets {core_i/p_abuf544}]
set_routing_rule -rule_is_user false -min_routing_layer "M3" -max_routing_layer \
    "M9" [get_nets {core_i/p_abuf545}]
set_routing_rule -rule_is_user false -min_routing_layer "M3" -max_routing_layer \
    "M9" [get_nets {core_i/p_abuf547}]
set_routing_rule -rule_is_user false -min_routing_layer "M3" -max_routing_layer \
    "M9" [get_nets {core_i/p_abuf548}]
set_routing_rule -rule "default_rule_equivalent_ndr_double_spacing" \
    -rule_is_user false -min_routing_layer "M3" -max_routing_layer "M9" \
    [get_nets {core_i/p_abuf549}]
set_routing_rule -rule "default_rule_equivalent_ndr_double_spacing" \
    -rule_is_user false -min_routing_layer "M3" -max_routing_layer "M9" \
    [get_nets {core_i/p_abuf550}]
set_routing_rule -rule_is_user false -min_routing_layer "M3" -max_routing_layer \
    "M9" [get_nets {core_i/p_abuf551}]
set_routing_rule -rule_is_user false -min_routing_layer "M3" -max_routing_layer \
    "M9" [get_nets {core_i/p_abuf552}]
set_routing_rule -rule_is_user false -min_routing_layer "M3" -max_routing_layer \
    "M9" [get_nets {core_i/p_abuf554}]
set_routing_rule -rule_is_user false -min_routing_layer "M3" -max_routing_layer \
    "M9" [get_nets {core_i/p_abuf557}]
set_routing_rule -rule_is_user false -min_routing_layer "M3" -max_routing_layer \
    "M9" [get_nets {core_i/p_abuf558}]
set_routing_rule -rule_is_user false -min_routing_layer "M3" -max_routing_layer \
    "M9" [get_nets {core_i/p_abuf559}]
set_routing_rule -rule_is_user false -min_routing_layer "M3" -max_routing_layer \
    "M9" [get_nets {core_i/p_abuf560}]
set_routing_rule -rule "default_rule_equivalent_ndr_double_spacing" \
    -rule_is_user false -min_routing_layer "M3" -max_routing_layer "M9" \
    [get_nets {core_i/p_abuf562}]
set_routing_rule -rule_is_user false -min_routing_layer "M3" -max_routing_layer \
    "M9" [get_nets {core_i/p_abuf564}]
set_routing_rule -rule_is_user false -min_routing_layer "M3" -max_routing_layer \
    "M9" [get_nets {core_i/p_abuf565}]
set_routing_rule -rule_is_user false -min_routing_layer "M3" -max_routing_layer \
    "M9" [get_nets {core_i/p_abuf566}]
set_routing_rule -rule_is_user false -min_routing_layer "M3" -max_routing_layer \
    "M9" [get_nets {core_i/p_abuf567}]
set_routing_rule -rule_is_user false -min_routing_layer "M3" -max_routing_layer \
    "M9" [get_nets {core_i/p_abuf568}]
set_routing_rule -rule_is_user false -min_routing_layer "M3" -max_routing_layer \
    "M9" [get_nets {core_i/p_abuf569}]
set_routing_rule -rule_is_user false -min_routing_layer "M3" -max_routing_layer \
    "M9" [get_nets {core_i/p_abuf571}]
set_routing_rule -rule_is_user false -min_routing_layer "M3" -max_routing_layer \
    "M9" [get_nets {core_i/p_abuf572}]
set_routing_rule -rule_is_user false -min_routing_layer "M3" -max_routing_layer \
    "M9" [get_nets {core_i/p_abuf573}]
set_routing_rule -rule_is_user false -min_routing_layer "M3" -max_routing_layer \
    "M9" [get_nets {core_i/p_abuf578}]
set_routing_rule -rule_is_user false -min_routing_layer "M3" -max_routing_layer \
    "M9" [get_nets {core_i/p_abuf587}]
set_routing_rule -rule "default_rule_equivalent_ndr_double_spacing" \
    -rule_is_user false -min_routing_layer "M3" -max_routing_layer "M9" \
    [get_nets {core_i/p_abuf600}]
set_routing_rule -rule "default_rule_equivalent_ndr_double_spacing" \
    -rule_is_user false -min_routing_layer "M3" -max_routing_layer "M9" \
    [get_nets {core_i/p_abuf625}]
set_routing_rule -rule_is_user false -min_routing_layer "M3" -max_routing_layer \
    "M9" [get_nets {core_i/p_abuf504}]
set_routing_rule -rule "default_rule_equivalent_ndr_double_spacing" \
    -rule_is_user false -min_routing_layer "M3" -max_routing_layer "M9" \
    [get_nets {core_i/p_abuf644}]
set_routing_rule -rule_is_user false -min_routing_layer "M3" -max_routing_layer \
    "M9" [get_nets {core_i/p_abuf649}]
set_routing_rule -rule_is_user false -min_routing_layer "M3" -max_routing_layer \
    "M9" [get_nets {core_i/p_abuf537}]
set_routing_rule -rule "default_rule_equivalent_ndr_double_spacing" \
    -rule_is_user false -min_routing_layer "M3" -max_routing_layer "M9" \
    [get_nets {core_i/p_abuf657}]
set_routing_rule -rule "default_rule_equivalent_ndr_double_spacing" \
    -rule_is_user false -min_routing_layer "M3" -max_routing_layer "M9" \
    [get_nets {core_i/p_abuf659}]
set_routing_rule -rule_is_user false -min_routing_layer "M3" -max_routing_layer \
    "M9" [get_nets {core_i/p_abuf555}]
set_routing_rule -rule_is_user false -min_routing_layer "M3" -max_routing_layer \
    "M9" [get_nets {core_i/p_abuf664}]
set_routing_rule -rule "default_rule_equivalent_ndr_double_spacing" \
    -rule_is_user false -min_routing_layer "M3" -max_routing_layer "M9" \
    [get_nets {core_i/p_abuf667}]
set_routing_rule -rule "default_rule_equivalent_ndr_double_spacing" \
    -rule_is_user false -min_routing_layer "M3" -max_routing_layer "M9" \
    [get_nets {core_i/p_abuf670}]
set_routing_rule -rule "clknet_NDR" -rule_is_user false -min_routing_layer "M3" \
    -max_routing_layer "M9" [get_nets \
    {core_i/sleep_unit_i/core_clock_gate_i/ctsbuf_net_92970}]
set_routing_rule -rule "clknet_NDR" -rule_is_user false -min_routing_layer "M3" \
    -max_routing_layer "M9" [get_nets \
    {core_i/sleep_unit_i/core_clock_gate_i/ctsbuf_net_93971}]
set_routing_rule -rule "clknet_NDR" -rule_is_user false -min_routing_layer "M3" \
    -max_routing_layer "M9" [get_nets \
    {core_i/sleep_unit_i/core_clock_gate_i/ctsbuf_net_94972}]
set_routing_rule -rule "clknet_NDR" -rule_is_user false -min_routing_layer "M3" \
    -max_routing_layer "M9" [get_nets \
    {core_i/sleep_unit_i/core_clock_gate_i/ctsbuf_net_95973}]
set_routing_rule -rule "clknet_NDR" -rule_is_user false -min_routing_layer "M3" \
    -max_routing_layer "M9" [get_nets \
    {core_i/sleep_unit_i/core_clock_gate_i/ctsbuf_net_96974}]
set_routing_rule -rule "clknet_NDR" -rule_is_user false -min_routing_layer "M3" \
    -max_routing_layer "M9" [get_nets \
    {core_i/sleep_unit_i/core_clock_gate_i/ctsbuf_net_97975}]
set_routing_rule -rule_is_user false -min_routing_layer "M3" -max_routing_layer \
    "M9" [get_nets {ctsbuf_net_98976}]
set_routing_rule -rule "clknet_NDR" -rule_is_user false -min_routing_layer "M3" \
    -max_routing_layer "M9" [get_nets {ctsbuf_net_100978}]
set_attribute -objects [get_layers M1] -name routing_direction -value vertical
set_attribute -objects [get_layers M2] -name routing_direction -value horizontal
set_attribute -objects [get_layers M3] -name routing_direction -value vertical
set_attribute -objects [get_layers M4] -name routing_direction -value horizontal
set_attribute -objects [get_layers M5] -name routing_direction -value vertical
set_attribute -objects [get_layers M6] -name routing_direction -value horizontal
set_attribute -objects [get_layers M7] -name routing_direction -value vertical
set_attribute -objects [get_layers M8] -name routing_direction -value horizontal
set_attribute -objects [get_layers M9] -name routing_direction -value vertical
set_attribute -objects [get_layers MRDL] -name routing_direction -value \
    horizontal
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_ADDF_V1_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_ADDF_V1_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_ADDF_V1_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_ADDF_V2_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_ADDF_V2_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_ADDH_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_ADDH_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AN2_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AN2_0P75}]
set_lib_cell_purpose -include {none} [get_lib_cells {saed14rvt/SAEDRVT14_AN2_1}]
set_lib_cell_purpose -include {none} [get_lib_cells {saed14rvt/SAEDRVT14_AN2_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AN2B_MM_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AN2_ECO_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AN2_MM_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AN2_MM_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AN2_MM_4}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AN3_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AN3_0P75}]
set_lib_cell_purpose -include {none} [get_lib_cells {saed14rvt/SAEDRVT14_AN3_1}]
set_lib_cell_purpose -include {none} [get_lib_cells {saed14rvt/SAEDRVT14_AN3_2}]
set_lib_cell_purpose -include {none} [get_lib_cells {saed14rvt/SAEDRVT14_AN3_4}]
set_lib_cell_purpose -include {none} [get_lib_cells {saed14rvt/SAEDRVT14_AN3_8}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AN3_ECO_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AN4_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AN4_0P75}]
set_lib_cell_purpose -include {none} [get_lib_cells {saed14rvt/SAEDRVT14_AN4_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AN4_ECO_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AO211_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AO211_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AO21_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AO211_U_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AO21_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AO21_4}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AO21B_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AO21B_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AO21B_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AO21B_4}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AO21_ECO_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AO21_U_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AO22_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AO22_0P75}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AO221_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AO221_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AO221_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AO221_4}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AO22_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AO222_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AO222_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AO222_U_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AO2BB2_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AO2BB2_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AO2BB2_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AO2BB2_4}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AO2BB2_V1_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AO2BB2_V1_0P75}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AO2BB2_V1_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AO2BB2_V1_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AO2BB2_V1_4}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AO31_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AO31_U_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AO32_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AO32_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AO32_4}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AO32_U_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AO33_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AO33_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AO33_4}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AO33_U_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AOI21_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AOI21_0P75}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AOI211_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AOI211_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AOI211_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AOI21_1P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AOI21_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AOI21_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AOI21_3}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AOI21_ECO_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AOI22_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AOI22_0P75}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AOI221_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AOI221_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AOI221_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AOI22_1P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AOI22_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AOI222_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AOI222_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AOI22_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AOI22_3}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AOI22_4}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AOI22_6}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AOI22_ECO_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AOI31_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AOI31_0P75}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AOI311_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AOI311_0P75}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AOI311_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AOI311_4}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AOI31_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AOI31_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AOI31_4}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AOI31_ECO_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AOI32_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AOI32_0P75}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AOI32_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AOI33_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AOI33_0P75}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AOI33_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_BUF_1P5}]
set_lib_cell_purpose -include {none} [get_lib_cells {saed14rvt/SAEDRVT14_BUF_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_BUF_ECO_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_BUF_ECO_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_BUF_ECO_3}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_BUF_ECO_4}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_BUF_ECO_6}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_BUF_ECO_7}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_BUF_ECO_8}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_BUF_S_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_BUF_S_0P75}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_BUF_S_1P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_BUF_S_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_BUF_S_3}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_BUF_S_4}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_BUF_U_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_BUF_U_0P75}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_BUF_UCDC_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_BUF_UCDC_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_DCAP_ECO_12}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_DCAP_ECO_15}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_DCAP_ECO_18}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_DCAP_ECO_6}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_DCAP_ECO_9}]
set_lib_cell_purpose -include {hold} [get_lib_cells \
    {saed14rvt/SAEDRVT14_DEL_L4D100_1}]
set_lib_cell_purpose -include {hold} [get_lib_cells \
    {saed14rvt/SAEDRVT14_DEL_R2V1_1}]
set_lib_cell_purpose -include {hold} [get_lib_cells \
    {saed14rvt/SAEDRVT14_DEL_R2V2_1}]
set_lib_cell_purpose -include {hold} [get_lib_cells \
    {saed14rvt/SAEDRVT14_DEL_R2V3_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_EN2_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_EN2_1P5}]
set_lib_cell_purpose -include {none} [get_lib_cells {saed14rvt/SAEDRVT14_EN2_1}]
set_lib_cell_purpose -include {none} [get_lib_cells {saed14rvt/SAEDRVT14_EN2_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_EN2_ECO_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_EN2_V1_0P75}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_EN2_V1_1P5}]
set_lib_cell_purpose -include {none} [get_lib_cells {saed14rvt/SAEDRVT14_EN3_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_EN3_U_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_EN4_M_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_EN4_U_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_EO2_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_EO2_1P5}]
set_lib_cell_purpose -include {none} [get_lib_cells {saed14rvt/SAEDRVT14_EO2_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_EO2_ECO_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_EO2_MM_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_EO2_MM_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_EO2_V1_0P75}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_EO2_V1_1P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_EO3_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells {saed14rvt/SAEDRVT14_EO3_1}]
set_lib_cell_purpose -include {none} [get_lib_cells {saed14rvt/SAEDRVT14_EO3_4}]
set_lib_cell_purpose -include {none} [get_lib_cells {saed14rvt/SAEDRVT14_EO4_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_EO4_U_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_INV_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_INV_0P75}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_INV_10}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_INV_12}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_INV_16}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_INV_1P5}]
set_lib_cell_purpose -include {none} [get_lib_cells {saed14rvt/SAEDRVT14_INV_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_INV_20}]
set_lib_cell_purpose -include {none} [get_lib_cells {saed14rvt/SAEDRVT14_INV_2}]
set_lib_cell_purpose -include {none} [get_lib_cells {saed14rvt/SAEDRVT14_INV_3}]
set_lib_cell_purpose -include {none} [get_lib_cells {saed14rvt/SAEDRVT14_INV_4}]
set_lib_cell_purpose -include {none} [get_lib_cells {saed14rvt/SAEDRVT14_INV_6}]
set_lib_cell_purpose -include {none} [get_lib_cells {saed14rvt/SAEDRVT14_INV_8}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_INV_ECO_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_INV_ECO_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_INV_ECO_3}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_INV_ECO_4}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_INV_ECO_6}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_INV_ECO_8}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_INV_S_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_INV_S_0P75}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_INV_S_10}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_INV_S_12}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_INV_S_16}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_INV_S_1P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_INV_S_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_INV_S_20}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_INV_S_9}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_MUX2_1P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_MUX2_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_MUX2_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_MUX2_4}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_MUX2_ECO_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_MUX2_ECO_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_MUX2_MM_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_MUX2_MM_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_MUX2_MM_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_MUX2_MM_4}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_MUX2_U_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_MUX3_V1M_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_MUX3_V1M_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_MUX3_V1M_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_MUX4_V1M_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_MUX4_V1U_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_MUXI2_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_MUXI2_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_MUXI2_B_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_MUXI2_ECO_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_MUXI2_ECO_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_MUXI2_U_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_MUXI3_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_MUXI3_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_MUXI3_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_MUXI3_4}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_MUXI4_U_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_ND2_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_ND2_1P5}]
set_lib_cell_purpose -include {none} [get_lib_cells {saed14rvt/SAEDRVT14_ND2_1}]
set_lib_cell_purpose -exclude {power hold cts optimization} [get_lib_cells \
    {saed14rvt/SAEDRVT14_ND2_2}]
set_lib_cell_purpose -include {none} [get_lib_cells {saed14rvt/SAEDRVT14_ND2_3}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_ND2B_0P75}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_ND2B_1P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_ND2B_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_ND2B_U_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_ND2_CDC_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_ND2_CDC_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_ND2_CDC_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_ND2_ECO_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_ND2_ECO_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_ND2_MM_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_ND2_MM_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_ND2_MM_3}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_ND3_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_ND3_0P75}]
set_lib_cell_purpose -include {none} [get_lib_cells {saed14rvt/SAEDRVT14_ND3_1}]
set_lib_cell_purpose -include {none} [get_lib_cells {saed14rvt/SAEDRVT14_ND3_3}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_ND3B_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_ND3B_0P75}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_ND3B_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_ND3B_4}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_ND3_ECO_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_ND4_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_ND4_0P75}]
set_lib_cell_purpose -include {none} [get_lib_cells {saed14rvt/SAEDRVT14_ND4_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_NR2_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_NR2_1P5}]
set_lib_cell_purpose -include {none} [get_lib_cells {saed14rvt/SAEDRVT14_NR2_1}]
set_lib_cell_purpose -exclude {power hold cts optimization} [get_lib_cells \
    {saed14rvt/SAEDRVT14_NR2_2}]
set_lib_cell_purpose -include {none} [get_lib_cells {saed14rvt/SAEDRVT14_NR2_3}]
set_lib_cell_purpose -include {none} [get_lib_cells {saed14rvt/SAEDRVT14_NR2_5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_NR2B_0P75}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_NR2B_1P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_NR2B_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_NR2B_U_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_NR2_ECO_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_NR2_ECO_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_NR2_MM_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_NR2_MM_10}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_NR2_MM_12}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_NR2_MM_16}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_NR2_MM_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_NR2_MM_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_NR2_MM_3}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_NR2_MM_4}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_NR2_MM_6}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_NR2_MM_8}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_NR3_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_NR3_0P75}]
set_lib_cell_purpose -include {none} [get_lib_cells {saed14rvt/SAEDRVT14_NR3_1}]
set_lib_cell_purpose -include {none} [get_lib_cells {saed14rvt/SAEDRVT14_NR3_2}]
set_lib_cell_purpose -include {none} [get_lib_cells {saed14rvt/SAEDRVT14_NR3_3}]
set_lib_cell_purpose -include {none} [get_lib_cells {saed14rvt/SAEDRVT14_NR3_4}]
set_lib_cell_purpose -include {none} [get_lib_cells {saed14rvt/SAEDRVT14_NR3_8}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_NR3B_0P75}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_NR3B_1P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_NR3B_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_NR3B_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_NR3B_U_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_NR3_ECO_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_NR4_0P75}]
set_lib_cell_purpose -include {none} [get_lib_cells {saed14rvt/SAEDRVT14_NR4_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OA211_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OA21_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OA211_U_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OA21_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OA21_4}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OA21B_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OA21B_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OA21B_U_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OA21_MM_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OA21_U_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OA22_0P75}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OA221_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OA221_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OA221_4}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OA22_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OA221_U_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OA222_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OA22_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OA222_U_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OA22_4}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OA22_U_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OA2BB2_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OA2BB2_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OA2BB2_V1_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OA2BB2_V1_0P75}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OA2BB2_V1_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OA2BB2_V1_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OA31_1P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OA31_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OA31_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OA31_4}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OA31_U_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OA32_0P75}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OA32_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OA32_U_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OA33_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OA33_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OA33_4}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OA33_U_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OAI21_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OAI21_0P75}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OAI211_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OAI211_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OAI21_1P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OAI21_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OAI21_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OAI21_3}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OAI22_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OAI22_0P75}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OAI221_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OAI221_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OAI221_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OAI22_1P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OAI22_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OAI222_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OAI222_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OAI222_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OAI222_4}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OAI22_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OAI31_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OAI31_0P75}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OAI311_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OAI311_0P75}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OAI311_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OAI311_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OAI311_4}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OAI31_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OAI31_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OAI31_4}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OAI32_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OAI32_0P75}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OAI32_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OAI32_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OAI33_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OAI33_0P75}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OAI33_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OAI33_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OAI33_4}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OR2_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OR2_0P75}]
set_lib_cell_purpose -include {none} [get_lib_cells {saed14rvt/SAEDRVT14_OR2_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OR2_ECO_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OR2_ISO_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OR2_MM_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OR2_MM_0P75}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OR2_MM_1P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OR2_MM_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OR2_MM_20}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OR2_MM_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OR2_MM_3}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OR3_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OR3_0P75}]
set_lib_cell_purpose -include {none} [get_lib_cells {saed14rvt/SAEDRVT14_OR3_1}]
set_lib_cell_purpose -include {none} [get_lib_cells {saed14rvt/SAEDRVT14_OR3_2}]
set_lib_cell_purpose -include {none} [get_lib_cells {saed14rvt/SAEDRVT14_OR3_4}]
set_lib_cell_purpose -include {none} [get_lib_cells {saed14rvt/SAEDRVT14_OR4_1}]
set_lib_cell_purpose -include {none} [get_lib_cells {saed14rvt/SAEDRVT14_OR4_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FDNQ_V3_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FDNRBSBQ_V2_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FDNRBSBQ_V2_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FDN_V2_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FDN_V2_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FDPCBQ_V2_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FDPCBQ_V2_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FDPCBQ_V2LP_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FDPCBQ_V2LP_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FDPCBQ_V3_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FDPMQ_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FDPMQ_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FDPQB_V2_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FDPQB_V2LP_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FDPQB_V2LP_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FDPQB_V3_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FDPQ_V2_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FDPQ_V2ECO_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FDPQ_V3_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FDPRBQ_V2_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FDPRBQ_V2_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FDPRBQ_V2_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FDPRBQ_V2_4}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FDPRBQ_V2LP_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FDPRBQ_V2LP_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FDPRBQ_V2LP_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FDPRBSBQ_V2_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FDPRBSBQ_V2_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FDPRB_V3_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FDPSBQ_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FDPSBQ_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FDPSBQ_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FDPSBQ_4}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FDPSYNSBQ_V2_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FDPSYNSBQ_V2_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FDP_V2_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FDP_V2_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FDP_V2LP_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FDP_V2LP_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_CKGTNLT_V5_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_CKGTPLT_V5_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_CKGTPL_V5_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_CKGTPL_V5_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_CKINVGTPLT_V7_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_CLKSPLT_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_LDND2NQ_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_LDNQ_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_LDNQOR2_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_LDNQ_U_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_LDNQ_V1_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_LDNR2PQ_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_LDNRBQ_V2_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_LDNRBQ_V2_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_LDOR2PQ_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_LDPQ_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_LDPQ_ECO_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_LDPQ_U_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_LDPQ_V1_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_LDPRSQB_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_LDPSBQ_V2_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_LDPSBQ_V2_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FSDNQ_V3_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FSDN_V2_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FSDPMQ_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FSDPMQ_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FSDPMQ_LP_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FSDPMQ_LP_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FSDPQB_V2_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FSDPQB_V2_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FSDPQB_V2LP_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FSDPQB_V2LP_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FSDPQB_V3_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FSDPQ_V2_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FSDPQ_V2_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FSDPQ_V2LP_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FSDPQ_V2LP_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FSDPQ_V3_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FSDPRBQ_V2_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FSDPRBQ_V2_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FSDPRBQ_V2_4}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FSDPRBQ_V2LP_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FSDPRBQ_V2LP_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FSDPRBQ_V3_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FSDPRBSBQ_V2_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FSDPRBSBQ_V2_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FSDPRBSBQ_V2LP_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FSDPRBSBQ_V2LP_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FSDPSBQ_V2_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FSDPSBQ_V2_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FSDPSBQ_V2LP_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FSDPSBQ_V2LP_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FSDPSYNRBQ_V2_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FSDPSYNRBQ_V2_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FSDPSYNRBQ_V2LP_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FSDPSYNRBQ_V2LP_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FSDPSYNRBQ_V3_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FSDPSYNSBQ_V2_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FSDPSYNSBQ_V2_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FSDPSYNSBQ_V2LP_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FSDPSYNSBQ_V2LP_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FSDP_V2_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FSDP_V2_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FSDP_V2LP_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_ISOFSDPQ_PECO_8}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_ISOS0CL1_PECO_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_ISOS1CL0_PECO_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AN2B_PMM_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AN2B_PSECO_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_BUF_PECO_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_BUF_PS_0P75}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_BUF_PS_1P5}]
set_lib_cell_purpose -include {hold} [get_lib_cells \
    {saed14rvt/SAEDRVT14_DEL_PR2V2_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_INV_PECO_12}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_INV_PECO_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_INV_PECO_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_INV_PECO_4}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_INV_PECO_8}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_INV_PS_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_INV_PS_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_INV_PS_3}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_INV_PS_6}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OR2B_PMM_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OR2B_PSECO_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_OR2B_PSECO_2}]
set_lib_cell_purpose -exclude {cts} [get_lib_cells {saed14rvt/SAEDRVT14_TIE0_4}]
set_lib_cell_purpose -exclude {cts} [get_lib_cells \
    {saed14rvt/SAEDRVT14_TIE0_V1_2}]
set_lib_cell_purpose -exclude {cts} [get_lib_cells \
    {saed14rvt/SAEDRVT14_TIE1_V1_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_TIE1_V1ECO_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_TIE0_PV1ECO_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_TIE1_PV1ECO_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_DCAP_PV1ECO_12}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AN2_ISO_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AN2_ISO4_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AOBUF_IW_0P75}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AOBUF_IW_1P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AOINV_IW_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AOINV_IW_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AOINV_IW_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AOINV_IW_4}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_AOINV_IW_6}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FSB2BDPRBQ_PV2_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FSDN2_V2_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FSDN2_V2_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FSDN4_V2_0P5}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FSDN4_V2_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FSDPQM4_V2LPY2_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FSDPQM4_V2Y2_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FSDPSYNRBQM4_V2LPY2_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FSDPSYNRBQM4_V2Y2_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_INV_OR2_AN2_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_ISOS0CL1_PECO4_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_LSRDPQ_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_LSRDPQ4_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_NR2_ISO_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_SRRDPQ_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_SRRDPQ4_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_SSRRDPQ_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_SSRRDPQ4_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FILL_ECO_1}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FILL_ECO_12}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FILL_ECO_15}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FILL_ECO_18}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FILL_ECO_2}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FILL_ECO_3}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FILL_ECO_6}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_FILL_ECO_9}]
set_lib_cell_purpose -exclude {cts} [get_lib_cells {saed14rvt/SAEDRVT14_TAPDS}]
set_lib_cell_purpose -include {none} [get_lib_cells \
    {saed14rvt/SAEDRVT14_CAPTTAPP6}]
set_placement_spacing_label -name X -side left -lib_cells {  \
    saed14rvt/SAEDRVT14_ADDF_V1_0P5  saed14rvt/SAEDRVT14_ADDF_V1_1  \
    saed14rvt/SAEDRVT14_ADDF_V1_2  saed14rvt/SAEDRVT14_ADDF_V2_0P5  \
    saed14rvt/SAEDRVT14_ADDF_V2_1  saed14rvt/SAEDRVT14_ADDF_V2_2  \
    saed14rvt/SAEDRVT14_ADDH_0P5  saed14rvt/SAEDRVT14_ADDH_1  \
    saed14rvt/SAEDRVT14_ADDH_2  saed14rvt/SAEDRVT14_ADDH_4  \
    saed14rvt/SAEDRVT14_AN2B_MM_1  saed14rvt/SAEDRVT14_AN2B_MM_12  \
    saed14rvt/SAEDRVT14_AN2B_MM_16  saed14rvt/SAEDRVT14_AN2B_MM_2  \
    saed14rvt/SAEDRVT14_AN2B_MM_20  saed14rvt/SAEDRVT14_AN2B_MM_4  \
    saed14rvt/SAEDRVT14_AN2B_MM_6  saed14rvt/SAEDRVT14_AN2B_MM_8  \
    saed14rvt/SAEDRVT14_AN2B_PMM_2  saed14rvt/SAEDRVT14_AN2B_PMM_8  \
    saed14rvt/SAEDRVT14_AN2B_PSECO_1  saed14rvt/SAEDRVT14_AN2B_PSECO_2  \
    saed14rvt/SAEDRVT14_AN2B_PSECO_4  saed14rvt/SAEDRVT14_AN2B_PSECO_8  \
    saed14rvt/SAEDRVT14_AN2_0P5  saed14rvt/SAEDRVT14_AN2_0P75  \
    saed14rvt/SAEDRVT14_AN2_1  saed14rvt/SAEDRVT14_AN2_2  \
    saed14rvt/SAEDRVT14_AN2_4  saed14rvt/SAEDRVT14_AN2_8  \
    saed14rvt/SAEDRVT14_AN2_ECO_2  saed14rvt/SAEDRVT14_AN2_ISO4_1  \
    saed14rvt/SAEDRVT14_AN2_ISO4_4  saed14rvt/SAEDRVT14_AN2_ISO_1  \
    saed14rvt/SAEDRVT14_AN2_ISO_4  saed14rvt/SAEDRVT14_AN2_MM_0P5  \
    saed14rvt/SAEDRVT14_AN2_MM_1  saed14rvt/SAEDRVT14_AN2_MM_12  \
    saed14rvt/SAEDRVT14_AN2_MM_16  saed14rvt/SAEDRVT14_AN2_MM_2  \
    saed14rvt/SAEDRVT14_AN2_MM_20  saed14rvt/SAEDRVT14_AN2_MM_3  \
    saed14rvt/SAEDRVT14_AN2_MM_4  saed14rvt/SAEDRVT14_AN2_MM_6  \
    saed14rvt/SAEDRVT14_AN2_MM_8  saed14rvt/SAEDRVT14_AN3_0P5  \
    saed14rvt/SAEDRVT14_AN3_0P75  saed14rvt/SAEDRVT14_AN3_1  \
    saed14rvt/SAEDRVT14_AN3_2  saed14rvt/SAEDRVT14_AN3_4  \
    saed14rvt/SAEDRVT14_AN3_8  saed14rvt/SAEDRVT14_AN3_ECO_1  \
    saed14rvt/SAEDRVT14_AN4_0P5  saed14rvt/SAEDRVT14_AN4_0P75  \
    saed14rvt/SAEDRVT14_AN4_1  saed14rvt/SAEDRVT14_AN4_2  \
    saed14rvt/SAEDRVT14_AN4_4  saed14rvt/SAEDRVT14_AN4_8  \
    saed14rvt/SAEDRVT14_AN4_ECO_2  saed14rvt/SAEDRVT14_AO211_1  \
    saed14rvt/SAEDRVT14_AO211_2  saed14rvt/SAEDRVT14_AO211_4  \
    saed14rvt/SAEDRVT14_AO211_U_0P5  saed14rvt/SAEDRVT14_AO21B_0P5  \
    saed14rvt/SAEDRVT14_AO21B_1  saed14rvt/SAEDRVT14_AO21B_2  \
    saed14rvt/SAEDRVT14_AO21B_4  saed14rvt/SAEDRVT14_AO21_1  \
    saed14rvt/SAEDRVT14_AO21_2  saed14rvt/SAEDRVT14_AO21_4  \
    saed14rvt/SAEDRVT14_AO21_ECO_1  saed14rvt/SAEDRVT14_AO21_U_0P5  \
    saed14rvt/SAEDRVT14_AO221_0P5  saed14rvt/SAEDRVT14_AO221_1  \
    saed14rvt/SAEDRVT14_AO221_2  saed14rvt/SAEDRVT14_AO221_4  \
    saed14rvt/SAEDRVT14_AO222_1  saed14rvt/SAEDRVT14_AO222_2  \
    saed14rvt/SAEDRVT14_AO222_4  saed14rvt/SAEDRVT14_AO222_U_0P5  \
    saed14rvt/SAEDRVT14_AO22_0P5  saed14rvt/SAEDRVT14_AO22_0P75  \
    saed14rvt/SAEDRVT14_AO22_1  saed14rvt/SAEDRVT14_AO22_2  \
    saed14rvt/SAEDRVT14_AO22_4  saed14rvt/SAEDRVT14_AO2BB2_0P5  \
    saed14rvt/SAEDRVT14_AO2BB2_1  saed14rvt/SAEDRVT14_AO2BB2_2  \
    saed14rvt/SAEDRVT14_AO2BB2_4  saed14rvt/SAEDRVT14_AO2BB2_V1_0P5  \
    saed14rvt/SAEDRVT14_AO2BB2_V1_0P75  saed14rvt/SAEDRVT14_AO2BB2_V1_1  \
    saed14rvt/SAEDRVT14_AO2BB2_V1_2  saed14rvt/SAEDRVT14_AO2BB2_V1_4  \
    saed14rvt/SAEDRVT14_AO31_1  saed14rvt/SAEDRVT14_AO31_2  \
    saed14rvt/SAEDRVT14_AO31_4  saed14rvt/SAEDRVT14_AO31_U_0P5  \
    saed14rvt/SAEDRVT14_AO32_1  saed14rvt/SAEDRVT14_AO32_2  \
    saed14rvt/SAEDRVT14_AO32_4  saed14rvt/SAEDRVT14_AO32_U_0P5  \
    saed14rvt/SAEDRVT14_AO33_1  saed14rvt/SAEDRVT14_AO33_2  \
    saed14rvt/SAEDRVT14_AO33_4  saed14rvt/SAEDRVT14_AO33_U_0P5  \
    saed14rvt/SAEDRVT14_AOBUF_IW_0P75  saed14rvt/SAEDRVT14_AOBUF_IW_1P5  \
    saed14rvt/SAEDRVT14_AOBUF_IW_3  saed14rvt/SAEDRVT14_AOBUF_IW_6  \
    saed14rvt/SAEDRVT14_AOI211_0P5  saed14rvt/SAEDRVT14_AOI211_1  \
    saed14rvt/SAEDRVT14_AOI211_2  saed14rvt/SAEDRVT14_AOI211_4  \
    saed14rvt/SAEDRVT14_AOI21_0P5  saed14rvt/SAEDRVT14_AOI21_0P75  \
    saed14rvt/SAEDRVT14_AOI21_1  saed14rvt/SAEDRVT14_AOI21_1P5  \
    saed14rvt/SAEDRVT14_AOI21_2  saed14rvt/SAEDRVT14_AOI21_3  \
    saed14rvt/SAEDRVT14_AOI21_4  saed14rvt/SAEDRVT14_AOI21_6  \
    saed14rvt/SAEDRVT14_AOI21_8  saed14rvt/SAEDRVT14_AOI21_ECO_1  \
    saed14rvt/SAEDRVT14_AOI21_V1_4  saed14rvt/SAEDRVT14_AOI21_V1_6  \
    saed14rvt/SAEDRVT14_AOI21_V1_8  saed14rvt/SAEDRVT14_AOI221_0P5  \
    saed14rvt/SAEDRVT14_AOI221_1  saed14rvt/SAEDRVT14_AOI221_2  \
    saed14rvt/SAEDRVT14_AOI221_4  saed14rvt/SAEDRVT14_AOI222_0P5  \
    saed14rvt/SAEDRVT14_AOI222_1  saed14rvt/SAEDRVT14_AOI222_2  \
    saed14rvt/SAEDRVT14_AOI222_4  saed14rvt/SAEDRVT14_AOI22_0P5  \
    saed14rvt/SAEDRVT14_AOI22_0P75  saed14rvt/SAEDRVT14_AOI22_1  \
    saed14rvt/SAEDRVT14_AOI22_1P5  saed14rvt/SAEDRVT14_AOI22_2  \
    saed14rvt/SAEDRVT14_AOI22_3  saed14rvt/SAEDRVT14_AOI22_4  \
    saed14rvt/SAEDRVT14_AOI22_6  saed14rvt/SAEDRVT14_AOI22_ECO_1  \
    saed14rvt/SAEDRVT14_AOI311_0P5  saed14rvt/SAEDRVT14_AOI311_0P75  \
    saed14rvt/SAEDRVT14_AOI311_1  saed14rvt/SAEDRVT14_AOI311_2  \
    saed14rvt/SAEDRVT14_AOI311_4  saed14rvt/SAEDRVT14_AOI31_0P5  \
    saed14rvt/SAEDRVT14_AOI31_0P75  saed14rvt/SAEDRVT14_AOI31_1  \
    saed14rvt/SAEDRVT14_AOI31_2  saed14rvt/SAEDRVT14_AOI31_4  \
    saed14rvt/SAEDRVT14_AOI31_ECO_1  saed14rvt/SAEDRVT14_AOI32_0P5  \
    saed14rvt/SAEDRVT14_AOI32_0P75  saed14rvt/SAEDRVT14_AOI32_1  \
    saed14rvt/SAEDRVT14_AOI32_2  saed14rvt/SAEDRVT14_AOI32_4  \
    saed14rvt/SAEDRVT14_AOI33_0P5  saed14rvt/SAEDRVT14_AOI33_0P75  \
    saed14rvt/SAEDRVT14_AOI33_1  saed14rvt/SAEDRVT14_AOI33_2  \
    saed14rvt/SAEDRVT14_AOI33_4  saed14rvt/SAEDRVT14_AOINV_IW_0P5  \
    saed14rvt/SAEDRVT14_AOINV_IW_1  saed14rvt/SAEDRVT14_AOINV_IW_2  \
    saed14rvt/SAEDRVT14_AOINV_IW_4  saed14rvt/SAEDRVT14_AOINV_IW_6  \
    saed14rvt/SAEDRVT14_BUF_1  saed14rvt/SAEDRVT14_BUF_10  \
    saed14rvt/SAEDRVT14_BUF_12  saed14rvt/SAEDRVT14_BUF_16  \
    saed14rvt/SAEDRVT14_BUF_1P5  saed14rvt/SAEDRVT14_BUF_2  \
    saed14rvt/SAEDRVT14_BUF_20  saed14rvt/SAEDRVT14_BUF_3  \
    saed14rvt/SAEDRVT14_BUF_4  saed14rvt/SAEDRVT14_BUF_6  \
    saed14rvt/SAEDRVT14_BUF_8  saed14rvt/SAEDRVT14_BUF_CDC_2  \
    saed14rvt/SAEDRVT14_BUF_CDC_4  saed14rvt/SAEDRVT14_BUF_ECO_1  \
    saed14rvt/SAEDRVT14_BUF_ECO_2  saed14rvt/SAEDRVT14_BUF_ECO_3  \
    saed14rvt/SAEDRVT14_BUF_ECO_4  saed14rvt/SAEDRVT14_BUF_ECO_6  \
    saed14rvt/SAEDRVT14_BUF_ECO_7  saed14rvt/SAEDRVT14_BUF_ECO_8  \
    saed14rvt/SAEDRVT14_BUF_PECO_1  saed14rvt/SAEDRVT14_BUF_PECO_12  \
    saed14rvt/SAEDRVT14_BUF_PECO_2  saed14rvt/SAEDRVT14_BUF_PECO_4  \
    saed14rvt/SAEDRVT14_BUF_PECO_8  saed14rvt/SAEDRVT14_BUF_PS_0P75  \
    saed14rvt/SAEDRVT14_BUF_PS_1P5  saed14rvt/SAEDRVT14_BUF_PS_3  \
    saed14rvt/SAEDRVT14_BUF_PS_6  saed14rvt/SAEDRVT14_BUF_S_0P5  \
    saed14rvt/SAEDRVT14_BUF_S_0P75  saed14rvt/SAEDRVT14_BUF_S_1  \
    saed14rvt/SAEDRVT14_BUF_S_10  saed14rvt/SAEDRVT14_BUF_S_12  \
    saed14rvt/SAEDRVT14_BUF_S_16  saed14rvt/SAEDRVT14_BUF_S_1P5  \
    saed14rvt/SAEDRVT14_BUF_S_2  saed14rvt/SAEDRVT14_BUF_S_20  \
    saed14rvt/SAEDRVT14_BUF_S_3  saed14rvt/SAEDRVT14_BUF_S_4  \
    saed14rvt/SAEDRVT14_BUF_S_6  saed14rvt/SAEDRVT14_BUF_S_8  \
    saed14rvt/SAEDRVT14_BUF_UCDC_0P5  saed14rvt/SAEDRVT14_BUF_UCDC_1  \
    saed14rvt/SAEDRVT14_BUF_U_0P5  saed14rvt/SAEDRVT14_BUF_U_0P75  \
    saed14rvt/SAEDRVT14_CAPB2  saed14rvt/SAEDRVT14_CAPB3  \
    saed14rvt/SAEDRVT14_CAPBIN13  saed14rvt/SAEDRVT14_CAPBTAP6  \
    saed14rvt/SAEDRVT14_CAPSPACER1  saed14rvt/SAEDRVT14_CAPT2  \
    saed14rvt/SAEDRVT14_CAPT3  saed14rvt/SAEDRVT14_CAPTIN13  \
    saed14rvt/SAEDRVT14_CAPTTAP6  saed14rvt/SAEDRVT14_CAPTTAPP6  \
    saed14rvt/SAEDRVT14_CKGTNLT_V5_1  saed14rvt/SAEDRVT14_CKGTNLT_V5_12  \
    saed14rvt/SAEDRVT14_CKGTNLT_V5_2  saed14rvt/SAEDRVT14_CKGTNLT_V5_3  \
    saed14rvt/SAEDRVT14_CKGTNLT_V5_4  saed14rvt/SAEDRVT14_CKGTNLT_V5_5  \
    saed14rvt/SAEDRVT14_CKGTNLT_V5_6  saed14rvt/SAEDRVT14_CKGTNLT_V5_8  \
    saed14rvt/SAEDRVT14_CKGTPLT_V5_1  saed14rvt/SAEDRVT14_CKGTPLT_V5_12  \
    saed14rvt/SAEDRVT14_CKGTPLT_V5_16  saed14rvt/SAEDRVT14_CKGTPLT_V5_2  \
    saed14rvt/SAEDRVT14_CKGTPLT_V5_20  saed14rvt/SAEDRVT14_CKGTPLT_V5_24  \
    saed14rvt/SAEDRVT14_CKGTPLT_V5_3  saed14rvt/SAEDRVT14_CKGTPLT_V5_4  \
    saed14rvt/SAEDRVT14_CKGTPLT_V5_5  saed14rvt/SAEDRVT14_CKGTPLT_V5_6  \
    saed14rvt/SAEDRVT14_CKGTPLT_V5_8  saed14rvt/SAEDRVT14_CKGTPL_V5_0P5  \
    saed14rvt/SAEDRVT14_CKGTPL_V5_1  saed14rvt/SAEDRVT14_CKGTPL_V5_2  \
    saed14rvt/SAEDRVT14_CKGTPL_V5_4  saed14rvt/SAEDRVT14_CKINVGTPLT_V7_1  \
    saed14rvt/SAEDRVT14_CKINVGTPLT_V7_2  saed14rvt/SAEDRVT14_CKINVGTPLT_V7_3  \
    saed14rvt/SAEDRVT14_CKINVGTPLT_V7_4  saed14rvt/SAEDRVT14_CKINVGTPLT_V7_5  \
    saed14rvt/SAEDRVT14_CKINVGTPLT_V7_6  saed14rvt/SAEDRVT14_CKINVGTPLT_V7_8  \
    saed14rvt/SAEDRVT14_CLKSPLT_1  saed14rvt/SAEDRVT14_CLKSPLT_8  \
    saed14rvt/SAEDRVT14_DCAP_ECO_12  saed14rvt/SAEDRVT14_DCAP_ECO_15  \
    saed14rvt/SAEDRVT14_DCAP_ECO_18  saed14rvt/SAEDRVT14_DCAP_ECO_6  \
    saed14rvt/SAEDRVT14_DCAP_ECO_9  saed14rvt/SAEDRVT14_DCAP_PV1ECO_12  \
    saed14rvt/SAEDRVT14_DCAP_PV1ECO_15  saed14rvt/SAEDRVT14_DCAP_PV1ECO_18  \
    saed14rvt/SAEDRVT14_DCAP_PV1ECO_6  saed14rvt/SAEDRVT14_DCAP_PV1ECO_9  \
    saed14rvt/SAEDRVT14_DCAP_PV3_3  saed14rvt/SAEDRVT14_DCAP_V4_16  \
    saed14rvt/SAEDRVT14_DCAP_V4_32  saed14rvt/SAEDRVT14_DCAP_V4_5  \
    saed14rvt/SAEDRVT14_DCAP_V4_64  saed14rvt/SAEDRVT14_DCAP_V4_8  \
    saed14rvt/SAEDRVT14_DELPROGS4_12  saed14rvt/SAEDRVT14_DELPROGS4_16  \
    saed14rvt/SAEDRVT14_DELPROGS4_4  saed14rvt/SAEDRVT14_DELPROGS4_6  \
    saed14rvt/SAEDRVT14_DELPROGS4_8  saed14rvt/SAEDRVT14_DELPROGS4_Y2_24  \
    saed14rvt/SAEDRVT14_DELPROGS9_V1_4  saed14rvt/SAEDRVT14_DELPROGS9_V2_4  \
    saed14rvt/SAEDRVT14_DEL_L4D100_1  saed14rvt/SAEDRVT14_DEL_L4D100_2  \
    saed14rvt/SAEDRVT14_DEL_PR2V2_1  saed14rvt/SAEDRVT14_DEL_R2V1_1  \
    saed14rvt/SAEDRVT14_DEL_R2V1_2  saed14rvt/SAEDRVT14_DEL_R2V2_1  \
    saed14rvt/SAEDRVT14_DEL_R2V2_2  saed14rvt/SAEDRVT14_DEL_R2V3_1  \
    saed14rvt/SAEDRVT14_DEL_R2V3_2  saed14rvt/SAEDRVT14_EN2_0P5  \
    saed14rvt/SAEDRVT14_EN2_1  saed14rvt/SAEDRVT14_EN2_1P5  \
    saed14rvt/SAEDRVT14_EN2_2  saed14rvt/SAEDRVT14_EN2_3  \
    saed14rvt/SAEDRVT14_EN2_4  saed14rvt/SAEDRVT14_EN2_ECO_1  \
    saed14rvt/SAEDRVT14_EN2_V1_0P75  saed14rvt/SAEDRVT14_EN2_V1_1P5  \
    saed14rvt/SAEDRVT14_EN3_1  saed14rvt/SAEDRVT14_EN3_2  \
    saed14rvt/SAEDRVT14_EN3_3  saed14rvt/SAEDRVT14_EN3_U_0P5  \
    saed14rvt/SAEDRVT14_EN4_2  saed14rvt/SAEDRVT14_EN4_4  \
    saed14rvt/SAEDRVT14_EN4_M_1  saed14rvt/SAEDRVT14_EN4_U_0P5  \
    saed14rvt/SAEDRVT14_EO2_0P5  saed14rvt/SAEDRVT14_EO2_1  \
    saed14rvt/SAEDRVT14_EO2_1P5  saed14rvt/SAEDRVT14_EO2_2  \
    saed14rvt/SAEDRVT14_EO2_3  saed14rvt/SAEDRVT14_EO2_4  \
    saed14rvt/SAEDRVT14_EO2_ECO_1  saed14rvt/SAEDRVT14_EO2_MM_0P5  \
    saed14rvt/SAEDRVT14_EO2_MM_1  saed14rvt/SAEDRVT14_EO2_MM_2  \
    saed14rvt/SAEDRVT14_EO2_MM_4  saed14rvt/SAEDRVT14_EO2_V1_0P75  \
    saed14rvt/SAEDRVT14_EO2_V1_1P5  saed14rvt/SAEDRVT14_EO3_0P5  \
    saed14rvt/SAEDRVT14_EO3_1  saed14rvt/SAEDRVT14_EO3_2  \
    saed14rvt/SAEDRVT14_EO3_4  saed14rvt/SAEDRVT14_EO4_1  \
    saed14rvt/SAEDRVT14_EO4_2  saed14rvt/SAEDRVT14_EO4_4  \
    saed14rvt/SAEDRVT14_EO4_U_0P5  saed14rvt/SAEDRVT14_FDNQ_V2_8  \
    saed14rvt/SAEDRVT14_FDNQ_V3_1  saed14rvt/SAEDRVT14_FDNQ_V3_2  \
    saed14rvt/SAEDRVT14_FDNQ_V3_4  saed14rvt/SAEDRVT14_FDNRBSBQ_V2_0P5  \
    saed14rvt/SAEDRVT14_FDNRBSBQ_V2_1  saed14rvt/SAEDRVT14_FDNRBSBQ_V2_2  \
    saed14rvt/SAEDRVT14_FDNRBSBQ_V2_4  saed14rvt/SAEDRVT14_FDN_V2_0P5  \
    saed14rvt/SAEDRVT14_FDN_V2_1  saed14rvt/SAEDRVT14_FDN_V2_2  \
    saed14rvt/SAEDRVT14_FDN_V2_4  saed14rvt/SAEDRVT14_FDPCBQ_V2LP_0P5  \
    saed14rvt/SAEDRVT14_FDPCBQ_V2LP_1  saed14rvt/SAEDRVT14_FDPCBQ_V2LP_2  \
    saed14rvt/SAEDRVT14_FDPCBQ_V2_0P5  saed14rvt/SAEDRVT14_FDPCBQ_V2_1  \
    saed14rvt/SAEDRVT14_FDPCBQ_V2_2  saed14rvt/SAEDRVT14_FDPCBQ_V2_4  \
    saed14rvt/SAEDRVT14_FDPCBQ_V3_1  saed14rvt/SAEDRVT14_FDPCBQ_V3_2  \
    saed14rvt/SAEDRVT14_FDPCBQ_V3_4  saed14rvt/SAEDRVT14_FDPMQ_0P5  \
    saed14rvt/SAEDRVT14_FDPMQ_1  saed14rvt/SAEDRVT14_FDPMQ_2  \
    saed14rvt/SAEDRVT14_FDPMQ_4  saed14rvt/SAEDRVT14_FDPQB_V2LP_0P5  \
    saed14rvt/SAEDRVT14_FDPQB_V2LP_1  saed14rvt/SAEDRVT14_FDPQB_V2LP_2  \
    saed14rvt/SAEDRVT14_FDPQB_V2_1  saed14rvt/SAEDRVT14_FDPQB_V2_2  \
    saed14rvt/SAEDRVT14_FDPQB_V2_4  saed14rvt/SAEDRVT14_FDPQB_V2_8  \
    saed14rvt/SAEDRVT14_FDPQB_V3_1  saed14rvt/SAEDRVT14_FDPQB_V3_2  \
    saed14rvt/SAEDRVT14_FDPQB_V3_4  saed14rvt/SAEDRVT14_FDPQB_V3_8  \
    saed14rvt/SAEDRVT14_FDPQ_V2ECO_1  saed14rvt/SAEDRVT14_FDPQ_V2_1  \
    saed14rvt/SAEDRVT14_FDPQ_V2_6  saed14rvt/SAEDRVT14_FDPQ_V2_8  \
    saed14rvt/SAEDRVT14_FDPQ_V3_1  saed14rvt/SAEDRVT14_FDPQ_V3_2  \
    saed14rvt/SAEDRVT14_FDPQ_V3_4  saed14rvt/SAEDRVT14_FDPRBQ_V2LP_0P5  \
    saed14rvt/SAEDRVT14_FDPRBQ_V2LP_1  saed14rvt/SAEDRVT14_FDPRBQ_V2LP_2  \
    saed14rvt/SAEDRVT14_FDPRBQ_V2_0P5  saed14rvt/SAEDRVT14_FDPRBQ_V2_1  \
    saed14rvt/SAEDRVT14_FDPRBQ_V2_2  saed14rvt/SAEDRVT14_FDPRBQ_V2_4  \
    saed14rvt/SAEDRVT14_FDPRBSBQ_V2_0P5  saed14rvt/SAEDRVT14_FDPRBSBQ_V2_1  \
    saed14rvt/SAEDRVT14_FDPRBSBQ_V2_2  saed14rvt/SAEDRVT14_FDPRBSBQ_V2_4  \
    saed14rvt/SAEDRVT14_FDPRB_V3_2  saed14rvt/SAEDRVT14_FDPSBQ_0P5  \
    saed14rvt/SAEDRVT14_FDPSBQ_1  saed14rvt/SAEDRVT14_FDPSBQ_2  \
    saed14rvt/SAEDRVT14_FDPSBQ_4  saed14rvt/SAEDRVT14_FDPSQB_2  \
    saed14rvt/SAEDRVT14_FDPSYNSBQ_V2_0P5  saed14rvt/SAEDRVT14_FDPSYNSBQ_V2_1  \
    saed14rvt/SAEDRVT14_FDPSYNSBQ_V2_2  saed14rvt/SAEDRVT14_FDPSYNSBQ_V2_4  \
    saed14rvt/SAEDRVT14_FDPS_V3_2  saed14rvt/SAEDRVT14_FDP_V2LP_0P5  \
    saed14rvt/SAEDRVT14_FDP_V2LP_1  saed14rvt/SAEDRVT14_FDP_V2LP_2  \
    saed14rvt/SAEDRVT14_FDP_V2_0P5  saed14rvt/SAEDRVT14_FDP_V2_1  \
    saed14rvt/SAEDRVT14_FDP_V2_2  saed14rvt/SAEDRVT14_FDP_V2_4  \
    saed14rvt/SAEDRVT14_FILL16  saed14rvt/SAEDRVT14_FILL2  \
    saed14rvt/SAEDRVT14_FILL3  saed14rvt/SAEDRVT14_FILL32  \
    saed14rvt/SAEDRVT14_FILL4  saed14rvt/SAEDRVT14_FILL5  \
    saed14rvt/SAEDRVT14_FILL64  saed14rvt/SAEDRVT14_FILLP2  \
    saed14rvt/SAEDRVT14_FILLP3  saed14rvt/SAEDRVT14_FILL_ECO_1  \
    saed14rvt/SAEDRVT14_FILL_ECO_12  saed14rvt/SAEDRVT14_FILL_ECO_15  \
    saed14rvt/SAEDRVT14_FILL_ECO_18  saed14rvt/SAEDRVT14_FILL_ECO_2  \
    saed14rvt/SAEDRVT14_FILL_ECO_3  saed14rvt/SAEDRVT14_FILL_ECO_6  \
    saed14rvt/SAEDRVT14_FILL_ECO_9  saed14rvt/SAEDRVT14_FILL_NNWIV1Y2_2  \
    saed14rvt/SAEDRVT14_FILL_NNWIV1Y2_3  saed14rvt/SAEDRVT14_FILL_NNWIY2_2  \
    saed14rvt/SAEDRVT14_FILL_NNWIY2_3  saed14rvt/SAEDRVT14_FILL_NNWSPACERY2_7  \
    saed14rvt/SAEDRVT14_FILL_NNWVDDBRKY2_3  saed14rvt/SAEDRVT14_FILL_SPACER_7  \
    saed14rvt/SAEDRVT14_FILL_Y2_3  saed14rvt/SAEDRVT14_FSB2BDPRBQ_PV2_1  \
    saed14rvt/SAEDRVT14_FSB2BDPRBQ_PV2_2  saed14rvt/SAEDRVT14_FSB2BDPRBQ_PV2_4  \
    saed14rvt/SAEDRVT14_FSB2BDPRBQ_PV2_8  saed14rvt/SAEDRVT14_FSDN2_V2_0P5  \
    saed14rvt/SAEDRVT14_FSDN2_V2_1  saed14rvt/SAEDRVT14_FSDN2_V2_2  \
    saed14rvt/SAEDRVT14_FSDN2_V2_4  saed14rvt/SAEDRVT14_FSDN4_V2_0P5  \
    saed14rvt/SAEDRVT14_FSDN4_V2_1  saed14rvt/SAEDRVT14_FSDN4_V2_2  \
    saed14rvt/SAEDRVT14_FSDN4_V2_4  saed14rvt/SAEDRVT14_FSDNQ_V3_1  \
    saed14rvt/SAEDRVT14_FSDNQ_V3_2  saed14rvt/SAEDRVT14_FSDNQ_V3_4  \
    saed14rvt/SAEDRVT14_FSDN_V2_1  saed14rvt/SAEDRVT14_FSDN_V2_2  \
    saed14rvt/SAEDRVT14_FSDN_V2_4  saed14rvt/SAEDRVT14_FSDPMQ_0P5  \
    saed14rvt/SAEDRVT14_FSDPMQ_1  saed14rvt/SAEDRVT14_FSDPMQ_2  \
    saed14rvt/SAEDRVT14_FSDPMQ_4  saed14rvt/SAEDRVT14_FSDPMQ_LP_0P5  \
    saed14rvt/SAEDRVT14_FSDPMQ_LP_1  saed14rvt/SAEDRVT14_FSDPMQ_LP_2  \
    saed14rvt/SAEDRVT14_FSDPQB_V2LP_0P5  saed14rvt/SAEDRVT14_FSDPQB_V2LP_1  \
    saed14rvt/SAEDRVT14_FSDPQB_V2LP_2  saed14rvt/SAEDRVT14_FSDPQB_V2_0P5  \
    saed14rvt/SAEDRVT14_FSDPQB_V2_1  saed14rvt/SAEDRVT14_FSDPQB_V2_2  \
    saed14rvt/SAEDRVT14_FSDPQB_V2_4  saed14rvt/SAEDRVT14_FSDPQB_V2_8  \
    saed14rvt/SAEDRVT14_FSDPQB_V3_1  saed14rvt/SAEDRVT14_FSDPQB_V3_2  \
    saed14rvt/SAEDRVT14_FSDPQB_V3_4  saed14rvt/SAEDRVT14_FSDPQB_V3_8  \
    saed14rvt/SAEDRVT14_FSDPQM4_V2LPY2_1  saed14rvt/SAEDRVT14_FSDPQM4_V2Y2_1  \
    saed14rvt/SAEDRVT14_FSDPQ_V2LP_0P5  saed14rvt/SAEDRVT14_FSDPQ_V2LP_1  \
    saed14rvt/SAEDRVT14_FSDPQ_V2LP_2  saed14rvt/SAEDRVT14_FSDPQ_V2_0P5  \
    saed14rvt/SAEDRVT14_FSDPQ_V2_1  saed14rvt/SAEDRVT14_FSDPQ_V2_2  \
    saed14rvt/SAEDRVT14_FSDPQ_V2_4  saed14rvt/SAEDRVT14_FSDPQ_V3_1  \
    saed14rvt/SAEDRVT14_FSDPQ_V3_2  saed14rvt/SAEDRVT14_FSDPQ_V3_4  \
    saed14rvt/SAEDRVT14_FSDPRBQ_V2LP_0P5  saed14rvt/SAEDRVT14_FSDPRBQ_V2LP_1  \
    saed14rvt/SAEDRVT14_FSDPRBQ_V2LP_2  saed14rvt/SAEDRVT14_FSDPRBQ_V2_0P5  \
    saed14rvt/SAEDRVT14_FSDPRBQ_V2_1  saed14rvt/SAEDRVT14_FSDPRBQ_V2_2  \
    saed14rvt/SAEDRVT14_FSDPRBQ_V2_4  saed14rvt/SAEDRVT14_FSDPRBQ_V3_1  \
    saed14rvt/SAEDRVT14_FSDPRBQ_V3_2  saed14rvt/SAEDRVT14_FSDPRBQ_V3_4  \
    saed14rvt/SAEDRVT14_FSDPRBSBQ_V2LP_0P5  \
    saed14rvt/SAEDRVT14_FSDPRBSBQ_V2LP_1  saed14rvt/SAEDRVT14_FSDPRBSBQ_V2LP_2  \
    saed14rvt/SAEDRVT14_FSDPRBSBQ_V2_0P5  saed14rvt/SAEDRVT14_FSDPRBSBQ_V2_1  \
    saed14rvt/SAEDRVT14_FSDPRBSBQ_V2_2  saed14rvt/SAEDRVT14_FSDPRBSBQ_V2_4  \
    saed14rvt/SAEDRVT14_FSDPSBQ_V2LP_0P5  saed14rvt/SAEDRVT14_FSDPSBQ_V2LP_1  \
    saed14rvt/SAEDRVT14_FSDPSBQ_V2LP_2  saed14rvt/SAEDRVT14_FSDPSBQ_V2_0P5  \
    saed14rvt/SAEDRVT14_FSDPSBQ_V2_1  saed14rvt/SAEDRVT14_FSDPSBQ_V2_2  \
    saed14rvt/SAEDRVT14_FSDPSBQ_V2_4  saed14rvt/SAEDRVT14_FSDPSYNRBQM4_V2LPY2_1 \
     saed14rvt/SAEDRVT14_FSDPSYNRBQM4_V2Y2_1  \
    saed14rvt/SAEDRVT14_FSDPSYNRBQ_V2LP_0P5  \
    saed14rvt/SAEDRVT14_FSDPSYNRBQ_V2LP_1  \
    saed14rvt/SAEDRVT14_FSDPSYNRBQ_V2LP_2  \
    saed14rvt/SAEDRVT14_FSDPSYNRBQ_V2_0P5  saed14rvt/SAEDRVT14_FSDPSYNRBQ_V2_1  \
    saed14rvt/SAEDRVT14_FSDPSYNRBQ_V2_2  saed14rvt/SAEDRVT14_FSDPSYNRBQ_V2_4  \
    saed14rvt/SAEDRVT14_FSDPSYNRBQ_V3_1  saed14rvt/SAEDRVT14_FSDPSYNRBQ_V3_2  \
    saed14rvt/SAEDRVT14_FSDPSYNRBQ_V3_4  \
    saed14rvt/SAEDRVT14_FSDPSYNSBQ_V2LP_0P5  \
    saed14rvt/SAEDRVT14_FSDPSYNSBQ_V2LP_1  \
    saed14rvt/SAEDRVT14_FSDPSYNSBQ_V2LP_2  \
    saed14rvt/SAEDRVT14_FSDPSYNSBQ_V2_0P5  saed14rvt/SAEDRVT14_FSDPSYNSBQ_V2_1  \
    saed14rvt/SAEDRVT14_FSDPSYNSBQ_V2_2  saed14rvt/SAEDRVT14_FSDPSYNSBQ_V2_4  \
    saed14rvt/SAEDRVT14_FSDP_V2LP_1  saed14rvt/SAEDRVT14_FSDP_V2LP_2  \
    saed14rvt/SAEDRVT14_FSDP_V2_0P5  saed14rvt/SAEDRVT14_FSDP_V2_1  \
    saed14rvt/SAEDRVT14_FSDP_V2_2  saed14rvt/SAEDRVT14_FSDP_V2_4  \
    saed14rvt/SAEDRVT14_INV_0P5  saed14rvt/SAEDRVT14_INV_0P75  \
    saed14rvt/SAEDRVT14_INV_1  saed14rvt/SAEDRVT14_INV_10  \
    saed14rvt/SAEDRVT14_INV_12  saed14rvt/SAEDRVT14_INV_16  \
    saed14rvt/SAEDRVT14_INV_1P5  saed14rvt/SAEDRVT14_INV_2  \
    saed14rvt/SAEDRVT14_INV_20  saed14rvt/SAEDRVT14_INV_3  \
    saed14rvt/SAEDRVT14_INV_4  saed14rvt/SAEDRVT14_INV_6  \
    saed14rvt/SAEDRVT14_INV_8  saed14rvt/SAEDRVT14_INV_ECO_1  \
    saed14rvt/SAEDRVT14_INV_ECO_2  saed14rvt/SAEDRVT14_INV_ECO_3  \
    saed14rvt/SAEDRVT14_INV_ECO_4  saed14rvt/SAEDRVT14_INV_ECO_6  \
    saed14rvt/SAEDRVT14_INV_ECO_8  saed14rvt/SAEDRVT14_INV_OR2_AN2_1  \
    saed14rvt/SAEDRVT14_INV_PECO_1  saed14rvt/SAEDRVT14_INV_PECO_12  \
    saed14rvt/SAEDRVT14_INV_PECO_2  saed14rvt/SAEDRVT14_INV_PECO_4  \
    saed14rvt/SAEDRVT14_INV_PECO_8  saed14rvt/SAEDRVT14_INV_PS_1  \
    saed14rvt/SAEDRVT14_INV_PS_2  saed14rvt/SAEDRVT14_INV_PS_3  \
    saed14rvt/SAEDRVT14_INV_PS_6  saed14rvt/SAEDRVT14_INV_S_0P5  \
    saed14rvt/SAEDRVT14_INV_S_0P75  saed14rvt/SAEDRVT14_INV_S_1  \
    saed14rvt/SAEDRVT14_INV_S_10  saed14rvt/SAEDRVT14_INV_S_12  \
    saed14rvt/SAEDRVT14_INV_S_16  saed14rvt/SAEDRVT14_INV_S_1P5  \
    saed14rvt/SAEDRVT14_INV_S_2  saed14rvt/SAEDRVT14_INV_S_20  \
    saed14rvt/SAEDRVT14_INV_S_3  saed14rvt/SAEDRVT14_INV_S_4  \
    saed14rvt/SAEDRVT14_INV_S_5  saed14rvt/SAEDRVT14_INV_S_6  \
    saed14rvt/SAEDRVT14_INV_S_7  saed14rvt/SAEDRVT14_INV_S_8  \
    saed14rvt/SAEDRVT14_INV_S_9  saed14rvt/SAEDRVT14_ISOFSDPQ_PECO_4  \
    saed14rvt/SAEDRVT14_ISOFSDPQ_PECO_8  saed14rvt/SAEDRVT14_ISOS0CL1_PECO4_1  \
    saed14rvt/SAEDRVT14_ISOS0CL1_PECO4_2  saed14rvt/SAEDRVT14_ISOS0CL1_PECO_1  \
    saed14rvt/SAEDRVT14_ISOS0CL1_PECO_2  saed14rvt/SAEDRVT14_ISOS0CL1_PECO_4  \
    saed14rvt/SAEDRVT14_ISOS0CL1_PECO_8  saed14rvt/SAEDRVT14_ISOS0CL1_P_2  \
    saed14rvt/SAEDRVT14_ISOS0CL1_P_8  saed14rvt/SAEDRVT14_ISOS1CL0_PECO_1  \
    saed14rvt/SAEDRVT14_ISOS1CL0_PECO_2  saed14rvt/SAEDRVT14_ISOS1CL0_PECO_4  \
    saed14rvt/SAEDRVT14_ISOS1CL0_PECO_8  saed14rvt/SAEDRVT14_ISOS1CL0_P_2  \
    saed14rvt/SAEDRVT14_ISOS1CL0_P_8  saed14rvt/SAEDRVT14_LDCKNR2PQ_5  \
    saed14rvt/SAEDRVT14_LDND2NQ_1  saed14rvt/SAEDRVT14_LDND2NQ_2  \
    saed14rvt/SAEDRVT14_LDND2NQ_4  saed14rvt/SAEDRVT14_LDNQOR2_1  \
    saed14rvt/SAEDRVT14_LDNQOR2_2  saed14rvt/SAEDRVT14_LDNQOR2_4  \
    saed14rvt/SAEDRVT14_LDNQ_1  saed14rvt/SAEDRVT14_LDNQ_2  \
    saed14rvt/SAEDRVT14_LDNQ_3  saed14rvt/SAEDRVT14_LDNQ_4  \
    saed14rvt/SAEDRVT14_LDNQ_5  saed14rvt/SAEDRVT14_LDNQ_6  \
    saed14rvt/SAEDRVT14_LDNQ_8  saed14rvt/SAEDRVT14_LDNQ_U_0P5  \
    saed14rvt/SAEDRVT14_LDNQ_V1_1  saed14rvt/SAEDRVT14_LDNQ_V1_2  \
    saed14rvt/SAEDRVT14_LDNQ_V1_4  saed14rvt/SAEDRVT14_LDNR2PQ_1  \
    saed14rvt/SAEDRVT14_LDNR2PQ_2  saed14rvt/SAEDRVT14_LDNR2PQ_4  \
    saed14rvt/SAEDRVT14_LDNRBQ_V2_0P5  saed14rvt/SAEDRVT14_LDNRBQ_V2_1  \
    saed14rvt/SAEDRVT14_LDNRBQ_V2_2  saed14rvt/SAEDRVT14_LDNRBQ_V2_4  \
    saed14rvt/SAEDRVT14_LDOR2PQ_1  saed14rvt/SAEDRVT14_LDOR2PQ_2  \
    saed14rvt/SAEDRVT14_LDOR2PQ_4  saed14rvt/SAEDRVT14_LDPQ_1  \
    saed14rvt/SAEDRVT14_LDPQ_2  saed14rvt/SAEDRVT14_LDPQ_3  \
    saed14rvt/SAEDRVT14_LDPQ_4  saed14rvt/SAEDRVT14_LDPQ_5  \
    saed14rvt/SAEDRVT14_LDPQ_6  saed14rvt/SAEDRVT14_LDPQ_8  \
    saed14rvt/SAEDRVT14_LDPQ_ECO_1  saed14rvt/SAEDRVT14_LDPQ_U_0P5  \
    saed14rvt/SAEDRVT14_LDPQ_V1_1  saed14rvt/SAEDRVT14_LDPQ_V1_2  \
    saed14rvt/SAEDRVT14_LDPQ_V1_4  saed14rvt/SAEDRVT14_LDPRSQB_1  \
    saed14rvt/SAEDRVT14_LDPSBQ_V2_0P5  saed14rvt/SAEDRVT14_LDPSBQ_V2_1  \
    saed14rvt/SAEDRVT14_LDPSBQ_V2_2  saed14rvt/SAEDRVT14_LDPSBQ_V2_4  \
    saed14rvt/SAEDRVT14_LSRDPQ4_1  saed14rvt/SAEDRVT14_LSRDPQ4_2  \
    saed14rvt/SAEDRVT14_LSRDPQ_1  saed14rvt/SAEDRVT14_LSRDPQ_2  \
    saed14rvt/SAEDRVT14_MUX2_1  saed14rvt/SAEDRVT14_MUX2_1P5  \
    saed14rvt/SAEDRVT14_MUX2_2  saed14rvt/SAEDRVT14_MUX2_4  \
    saed14rvt/SAEDRVT14_MUX2_ECO_1  saed14rvt/SAEDRVT14_MUX2_ECO_2  \
    saed14rvt/SAEDRVT14_MUX2_MM_0P5  saed14rvt/SAEDRVT14_MUX2_MM_1  \
    saed14rvt/SAEDRVT14_MUX2_MM_2  saed14rvt/SAEDRVT14_MUX2_MM_4  \
    saed14rvt/SAEDRVT14_MUX2_U_0P5  saed14rvt/SAEDRVT14_MUX3_V1M_0P5  \
    saed14rvt/SAEDRVT14_MUX3_V1M_1  saed14rvt/SAEDRVT14_MUX3_V1M_2  \
    saed14rvt/SAEDRVT14_MUX3_V1M_4  saed14rvt/SAEDRVT14_MUX4_V1M_1  \
    saed14rvt/SAEDRVT14_MUX4_V1M_2  saed14rvt/SAEDRVT14_MUX4_V1M_4  \
    saed14rvt/SAEDRVT14_MUX4_V1U_0P5  saed14rvt/SAEDRVT14_MUXI2_0P5  \
    saed14rvt/SAEDRVT14_MUXI2_1  saed14rvt/SAEDRVT14_MUXI2_2  \
    saed14rvt/SAEDRVT14_MUXI2_4  saed14rvt/SAEDRVT14_MUXI2_B_1  \
    saed14rvt/SAEDRVT14_MUXI2_ECO_1  saed14rvt/SAEDRVT14_MUXI2_ECO_2  \
    saed14rvt/SAEDRVT14_MUXI2_U_0P5  saed14rvt/SAEDRVT14_MUXI3_0P5  \
    saed14rvt/SAEDRVT14_MUXI3_1  saed14rvt/SAEDRVT14_MUXI3_2  \
    saed14rvt/SAEDRVT14_MUXI3_4  saed14rvt/SAEDRVT14_MUXI4_2  \
    saed14rvt/SAEDRVT14_MUXI4_4  saed14rvt/SAEDRVT14_MUXI4_U_0P5  \
    saed14rvt/SAEDRVT14_ND2B_0P75  saed14rvt/SAEDRVT14_ND2B_1  \
    saed14rvt/SAEDRVT14_ND2B_1P5  saed14rvt/SAEDRVT14_ND2B_2  \
    saed14rvt/SAEDRVT14_ND2B_4  saed14rvt/SAEDRVT14_ND2B_U_0P5  \
    saed14rvt/SAEDRVT14_ND2_0P5  saed14rvt/SAEDRVT14_ND2_1  \
    saed14rvt/SAEDRVT14_ND2_16  saed14rvt/SAEDRVT14_ND2_1P5  \
    saed14rvt/SAEDRVT14_ND2_2  saed14rvt/SAEDRVT14_ND2_3  \
    saed14rvt/SAEDRVT14_ND2_4  saed14rvt/SAEDRVT14_ND2_5  \
    saed14rvt/SAEDRVT14_ND2_6  saed14rvt/SAEDRVT14_ND2_8  \
    saed14rvt/SAEDRVT14_ND2_CDC_0P5  saed14rvt/SAEDRVT14_ND2_CDC_1  \
    saed14rvt/SAEDRVT14_ND2_CDC_2  saed14rvt/SAEDRVT14_ND2_CDC_4  \
    saed14rvt/SAEDRVT14_ND2_ECO_1  saed14rvt/SAEDRVT14_ND2_ECO_2  \
    saed14rvt/SAEDRVT14_ND2_MM_0P5  saed14rvt/SAEDRVT14_ND2_MM_1  \
    saed14rvt/SAEDRVT14_ND2_MM_10  saed14rvt/SAEDRVT14_ND2_MM_12  \
    saed14rvt/SAEDRVT14_ND2_MM_16  saed14rvt/SAEDRVT14_ND2_MM_2  \
    saed14rvt/SAEDRVT14_ND2_MM_3  saed14rvt/SAEDRVT14_ND2_MM_4  \
    saed14rvt/SAEDRVT14_ND2_MM_6  saed14rvt/SAEDRVT14_ND2_MM_8  \
    saed14rvt/SAEDRVT14_ND3B_0P5  saed14rvt/SAEDRVT14_ND3B_0P75  \
    saed14rvt/SAEDRVT14_ND3B_1  saed14rvt/SAEDRVT14_ND3B_2  \
    saed14rvt/SAEDRVT14_ND3B_4  saed14rvt/SAEDRVT14_ND3_0P5  \
    saed14rvt/SAEDRVT14_ND3_0P75  saed14rvt/SAEDRVT14_ND3_1  \
    saed14rvt/SAEDRVT14_ND3_2  saed14rvt/SAEDRVT14_ND3_3  \
    saed14rvt/SAEDRVT14_ND3_4  saed14rvt/SAEDRVT14_ND3_8  \
    saed14rvt/SAEDRVT14_ND3_ECO_1  saed14rvt/SAEDRVT14_ND4_0P5  \
    saed14rvt/SAEDRVT14_ND4_0P75  saed14rvt/SAEDRVT14_ND4_1  \
    saed14rvt/SAEDRVT14_ND4_2  saed14rvt/SAEDRVT14_ND4_3  \
    saed14rvt/SAEDRVT14_ND4_4  saed14rvt/SAEDRVT14_ND4_8  \
    saed14rvt/SAEDRVT14_NR2B_0P75  saed14rvt/SAEDRVT14_NR2B_1  \
    saed14rvt/SAEDRVT14_NR2B_1P5  saed14rvt/SAEDRVT14_NR2B_2  \
    saed14rvt/SAEDRVT14_NR2B_4  saed14rvt/SAEDRVT14_NR2B_U_0P5  \
    saed14rvt/SAEDRVT14_NR2_0P5  saed14rvt/SAEDRVT14_NR2_1  \
    saed14rvt/SAEDRVT14_NR2_16  saed14rvt/SAEDRVT14_NR2_1P5  \
    saed14rvt/SAEDRVT14_NR2_2  saed14rvt/SAEDRVT14_NR2_3  \
    saed14rvt/SAEDRVT14_NR2_4  saed14rvt/SAEDRVT14_NR2_5  \
    saed14rvt/SAEDRVT14_NR2_6  saed14rvt/SAEDRVT14_NR2_8  \
    saed14rvt/SAEDRVT14_NR2_ECO_1  saed14rvt/SAEDRVT14_NR2_ECO_2  \
    saed14rvt/SAEDRVT14_NR2_ISO_1  saed14rvt/SAEDRVT14_NR2_ISO_4  \
    saed14rvt/SAEDRVT14_NR2_MM_0P5  saed14rvt/SAEDRVT14_NR2_MM_1  \
    saed14rvt/SAEDRVT14_NR2_MM_10  saed14rvt/SAEDRVT14_NR2_MM_12  \
    saed14rvt/SAEDRVT14_NR2_MM_16  saed14rvt/SAEDRVT14_NR2_MM_2  \
    saed14rvt/SAEDRVT14_NR2_MM_3  saed14rvt/SAEDRVT14_NR2_MM_4  \
    saed14rvt/SAEDRVT14_NR2_MM_6  saed14rvt/SAEDRVT14_NR2_MM_8  \
    saed14rvt/SAEDRVT14_NR3B_0P75  saed14rvt/SAEDRVT14_NR3B_1  \
    saed14rvt/SAEDRVT14_NR3B_1P5  saed14rvt/SAEDRVT14_NR3B_2  \
    saed14rvt/SAEDRVT14_NR3B_4  saed14rvt/SAEDRVT14_NR3B_U_0P5  \
    saed14rvt/SAEDRVT14_NR3_0P5  saed14rvt/SAEDRVT14_NR3_0P75  \
    saed14rvt/SAEDRVT14_NR3_1  saed14rvt/SAEDRVT14_NR3_2  \
    saed14rvt/SAEDRVT14_NR3_3  saed14rvt/SAEDRVT14_NR3_4  \
    saed14rvt/SAEDRVT14_NR3_8  saed14rvt/SAEDRVT14_NR3_ECO_1  \
    saed14rvt/SAEDRVT14_NR4_0P75  saed14rvt/SAEDRVT14_NR4_2  \
    saed14rvt/SAEDRVT14_OA211_1  saed14rvt/SAEDRVT14_OA211_2  \
    saed14rvt/SAEDRVT14_OA211_4  saed14rvt/SAEDRVT14_OA211_U_0P5  \
    saed14rvt/SAEDRVT14_OA21B_1  saed14rvt/SAEDRVT14_OA21B_2  \
    saed14rvt/SAEDRVT14_OA21B_4  saed14rvt/SAEDRVT14_OA21B_U_0P5  \
    saed14rvt/SAEDRVT14_OA21_1  saed14rvt/SAEDRVT14_OA21_2  \
    saed14rvt/SAEDRVT14_OA21_4  saed14rvt/SAEDRVT14_OA21_MM_1  \
    saed14rvt/SAEDRVT14_OA21_MM_2  saed14rvt/SAEDRVT14_OA21_MM_6  \
    saed14rvt/SAEDRVT14_OA21_U_0P5  saed14rvt/SAEDRVT14_OA221_1  \
    saed14rvt/SAEDRVT14_OA221_2  saed14rvt/SAEDRVT14_OA221_4  \
    saed14rvt/SAEDRVT14_OA221_U_0P5  saed14rvt/SAEDRVT14_OA222_1  \
    saed14rvt/SAEDRVT14_OA222_2  saed14rvt/SAEDRVT14_OA222_4  \
    saed14rvt/SAEDRVT14_OA222_U_0P5  saed14rvt/SAEDRVT14_OA22_0P75  \
    saed14rvt/SAEDRVT14_OA22_1  saed14rvt/SAEDRVT14_OA22_2  \
    saed14rvt/SAEDRVT14_OA22_4  saed14rvt/SAEDRVT14_OA22_U_0P5  \
    saed14rvt/SAEDRVT14_OA2BB2_0P5  saed14rvt/SAEDRVT14_OA2BB2_1  \
    saed14rvt/SAEDRVT14_OA2BB2_2  saed14rvt/SAEDRVT14_OA2BB2_4  \
    saed14rvt/SAEDRVT14_OA2BB2_V1_0P5  saed14rvt/SAEDRVT14_OA2BB2_V1_0P75  \
    saed14rvt/SAEDRVT14_OA2BB2_V1_1  saed14rvt/SAEDRVT14_OA2BB2_V1_2  \
    saed14rvt/SAEDRVT14_OA2BB2_V1_4  saed14rvt/SAEDRVT14_OA31_1  \
    saed14rvt/SAEDRVT14_OA31_1P5  saed14rvt/SAEDRVT14_OA31_2  \
    saed14rvt/SAEDRVT14_OA31_4  saed14rvt/SAEDRVT14_OA31_U_0P5  \
    saed14rvt/SAEDRVT14_OA32_0P75  saed14rvt/SAEDRVT14_OA32_1  \
    saed14rvt/SAEDRVT14_OA32_2  saed14rvt/SAEDRVT14_OA32_4  \
    saed14rvt/SAEDRVT14_OA32_U_0P5  saed14rvt/SAEDRVT14_OA33_1  \
    saed14rvt/SAEDRVT14_OA33_2  saed14rvt/SAEDRVT14_OA33_4  \
    saed14rvt/SAEDRVT14_OA33_U_0P5  saed14rvt/SAEDRVT14_OAI211_0P5  \
    saed14rvt/SAEDRVT14_OAI211_1  saed14rvt/SAEDRVT14_OAI211_2  \
    saed14rvt/SAEDRVT14_OAI211_4  saed14rvt/SAEDRVT14_OAI21_0P5  \
    saed14rvt/SAEDRVT14_OAI21_0P75  saed14rvt/SAEDRVT14_OAI21_1  \
    saed14rvt/SAEDRVT14_OAI21_1P5  saed14rvt/SAEDRVT14_OAI21_2  \
    saed14rvt/SAEDRVT14_OAI21_3  saed14rvt/SAEDRVT14_OAI21_4  \
    saed14rvt/SAEDRVT14_OAI21_V1_4  saed14rvt/SAEDRVT14_OAI21_V1_6  \
    saed14rvt/SAEDRVT14_OAI21_V1_8  saed14rvt/SAEDRVT14_OAI221_0P5  \
    saed14rvt/SAEDRVT14_OAI221_1  saed14rvt/SAEDRVT14_OAI221_2  \
    saed14rvt/SAEDRVT14_OAI221_4  saed14rvt/SAEDRVT14_OAI222_0P5  \
    saed14rvt/SAEDRVT14_OAI222_1  saed14rvt/SAEDRVT14_OAI222_2  \
    saed14rvt/SAEDRVT14_OAI222_4  saed14rvt/SAEDRVT14_OAI22_0P5  \
    saed14rvt/SAEDRVT14_OAI22_0P75  saed14rvt/SAEDRVT14_OAI22_1  \
    saed14rvt/SAEDRVT14_OAI22_1P5  saed14rvt/SAEDRVT14_OAI22_2  \
    saed14rvt/SAEDRVT14_OAI22_3  saed14rvt/SAEDRVT14_OAI22_4  \
    saed14rvt/SAEDRVT14_OAI311_0P5  saed14rvt/SAEDRVT14_OAI311_0P75  \
    saed14rvt/SAEDRVT14_OAI311_1  saed14rvt/SAEDRVT14_OAI311_2  \
    saed14rvt/SAEDRVT14_OAI311_4  saed14rvt/SAEDRVT14_OAI31_0P5  \
    saed14rvt/SAEDRVT14_OAI31_0P75  saed14rvt/SAEDRVT14_OAI31_1  \
    saed14rvt/SAEDRVT14_OAI31_2  saed14rvt/SAEDRVT14_OAI31_4  \
    saed14rvt/SAEDRVT14_OAI32_0P5  saed14rvt/SAEDRVT14_OAI32_0P75  \
    saed14rvt/SAEDRVT14_OAI32_1  saed14rvt/SAEDRVT14_OAI32_2  \
    saed14rvt/SAEDRVT14_OAI32_4  saed14rvt/SAEDRVT14_OAI33_0P5  \
    saed14rvt/SAEDRVT14_OAI33_0P75  saed14rvt/SAEDRVT14_OAI33_1  \
    saed14rvt/SAEDRVT14_OAI33_2  saed14rvt/SAEDRVT14_OAI33_4  \
    saed14rvt/SAEDRVT14_OR2B_PMM_2  saed14rvt/SAEDRVT14_OR2B_PMM_8  \
    saed14rvt/SAEDRVT14_OR2B_PSECO_1  saed14rvt/SAEDRVT14_OR2B_PSECO_2  \
    saed14rvt/SAEDRVT14_OR2B_PSECO_4  saed14rvt/SAEDRVT14_OR2B_PSECO_8  \
    saed14rvt/SAEDRVT14_OR2_0P5  saed14rvt/SAEDRVT14_OR2_0P75  \
    saed14rvt/SAEDRVT14_OR2_1  saed14rvt/SAEDRVT14_OR2_2  \
    saed14rvt/SAEDRVT14_OR2_4  saed14rvt/SAEDRVT14_OR2_ECO_2  \
    saed14rvt/SAEDRVT14_OR2_ISO_1  saed14rvt/SAEDRVT14_OR2_ISO_4  \
    saed14rvt/SAEDRVT14_OR2_MM_0P5  saed14rvt/SAEDRVT14_OR2_MM_0P75  \
    saed14rvt/SAEDRVT14_OR2_MM_1  saed14rvt/SAEDRVT14_OR2_MM_12  \
    saed14rvt/SAEDRVT14_OR2_MM_16  saed14rvt/SAEDRVT14_OR2_MM_1P5  \
    saed14rvt/SAEDRVT14_OR2_MM_2  saed14rvt/SAEDRVT14_OR2_MM_20  \
    saed14rvt/SAEDRVT14_OR2_MM_3  saed14rvt/SAEDRVT14_OR2_MM_4  \
    saed14rvt/SAEDRVT14_OR2_MM_6  saed14rvt/SAEDRVT14_OR2_MM_8  \
    saed14rvt/SAEDRVT14_OR3_0P5  saed14rvt/SAEDRVT14_OR3_0P75  \
    saed14rvt/SAEDRVT14_OR3_1  saed14rvt/SAEDRVT14_OR3_2  \
    saed14rvt/SAEDRVT14_OR3_4  saed14rvt/SAEDRVT14_OR4_1  \
    saed14rvt/SAEDRVT14_OR4_2  saed14rvt/SAEDRVT14_SRLD_3  \
    saed14rvt/SAEDRVT14_SRRDPQ4_1  saed14rvt/SAEDRVT14_SRRDPQ4_2  \
    saed14rvt/SAEDRVT14_SRRDPQ_1  saed14rvt/SAEDRVT14_SRRDPQ_2  \
    saed14rvt/SAEDRVT14_SSRRDPQ4_1  saed14rvt/SAEDRVT14_SSRRDPQ4_2  \
    saed14rvt/SAEDRVT14_SSRRDPQ_1  saed14rvt/SAEDRVT14_SSRRDPQ_2  \
    saed14rvt/SAEDRVT14_TAPDS  saed14rvt/SAEDRVT14_TAPPN  \
    saed14rvt/SAEDRVT14_TAPPP10  saed14rvt/SAEDRVT14_TIE0_4  \
    saed14rvt/SAEDRVT14_TIE0_PV1ECO_1  saed14rvt/SAEDRVT14_TIE0_V1_2  \
    saed14rvt/SAEDRVT14_TIE1_4  saed14rvt/SAEDRVT14_TIE1_PV1ECO_1  \
    saed14rvt/SAEDRVT14_TIE1_V1ECO_1  saed14rvt/SAEDRVT14_TIE1_V1_2  \
    saed14rvt/SAEDRVT14_TIEDIN_4  saed14rvt/SAEDRVT14_TIEDIN_PV1ECO_6  \
    saed14rvt/SAEDRVT14_TIEDIN_V1ECO_6 } 
set_placement_spacing_label -name X -side right -lib_cells {  \
    saed14rvt/SAEDRVT14_ADDF_V1_0P5  saed14rvt/SAEDRVT14_ADDF_V1_1  \
    saed14rvt/SAEDRVT14_ADDF_V1_2  saed14rvt/SAEDRVT14_ADDF_V2_0P5  \
    saed14rvt/SAEDRVT14_ADDF_V2_1  saed14rvt/SAEDRVT14_ADDF_V2_2  \
    saed14rvt/SAEDRVT14_ADDH_0P5  saed14rvt/SAEDRVT14_ADDH_1  \
    saed14rvt/SAEDRVT14_ADDH_2  saed14rvt/SAEDRVT14_ADDH_4  \
    saed14rvt/SAEDRVT14_AN2B_MM_1  saed14rvt/SAEDRVT14_AN2B_MM_12  \
    saed14rvt/SAEDRVT14_AN2B_MM_16  saed14rvt/SAEDRVT14_AN2B_MM_2  \
    saed14rvt/SAEDRVT14_AN2B_MM_20  saed14rvt/SAEDRVT14_AN2B_MM_4  \
    saed14rvt/SAEDRVT14_AN2B_MM_6  saed14rvt/SAEDRVT14_AN2B_MM_8  \
    saed14rvt/SAEDRVT14_AN2B_PMM_2  saed14rvt/SAEDRVT14_AN2B_PMM_8  \
    saed14rvt/SAEDRVT14_AN2B_PSECO_1  saed14rvt/SAEDRVT14_AN2B_PSECO_2  \
    saed14rvt/SAEDRVT14_AN2B_PSECO_4  saed14rvt/SAEDRVT14_AN2B_PSECO_8  \
    saed14rvt/SAEDRVT14_AN2_0P5  saed14rvt/SAEDRVT14_AN2_0P75  \
    saed14rvt/SAEDRVT14_AN2_1  saed14rvt/SAEDRVT14_AN2_2  \
    saed14rvt/SAEDRVT14_AN2_4  saed14rvt/SAEDRVT14_AN2_8  \
    saed14rvt/SAEDRVT14_AN2_ECO_2  saed14rvt/SAEDRVT14_AN2_ISO4_1  \
    saed14rvt/SAEDRVT14_AN2_ISO4_4  saed14rvt/SAEDRVT14_AN2_ISO_1  \
    saed14rvt/SAEDRVT14_AN2_ISO_4  saed14rvt/SAEDRVT14_AN2_MM_0P5  \
    saed14rvt/SAEDRVT14_AN2_MM_1  saed14rvt/SAEDRVT14_AN2_MM_12  \
    saed14rvt/SAEDRVT14_AN2_MM_16  saed14rvt/SAEDRVT14_AN2_MM_2  \
    saed14rvt/SAEDRVT14_AN2_MM_20  saed14rvt/SAEDRVT14_AN2_MM_3  \
    saed14rvt/SAEDRVT14_AN2_MM_4  saed14rvt/SAEDRVT14_AN2_MM_6  \
    saed14rvt/SAEDRVT14_AN2_MM_8  saed14rvt/SAEDRVT14_AN3_0P5  \
    saed14rvt/SAEDRVT14_AN3_0P75  saed14rvt/SAEDRVT14_AN3_1  \
    saed14rvt/SAEDRVT14_AN3_2  saed14rvt/SAEDRVT14_AN3_4  \
    saed14rvt/SAEDRVT14_AN3_8  saed14rvt/SAEDRVT14_AN3_ECO_1  \
    saed14rvt/SAEDRVT14_AN4_0P5  saed14rvt/SAEDRVT14_AN4_0P75  \
    saed14rvt/SAEDRVT14_AN4_1  saed14rvt/SAEDRVT14_AN4_2  \
    saed14rvt/SAEDRVT14_AN4_4  saed14rvt/SAEDRVT14_AN4_8  \
    saed14rvt/SAEDRVT14_AN4_ECO_2  saed14rvt/SAEDRVT14_AO211_1  \
    saed14rvt/SAEDRVT14_AO211_2  saed14rvt/SAEDRVT14_AO211_4  \
    saed14rvt/SAEDRVT14_AO211_U_0P5  saed14rvt/SAEDRVT14_AO21B_0P5  \
    saed14rvt/SAEDRVT14_AO21B_1  saed14rvt/SAEDRVT14_AO21B_2  \
    saed14rvt/SAEDRVT14_AO21B_4  saed14rvt/SAEDRVT14_AO21_1  \
    saed14rvt/SAEDRVT14_AO21_2  saed14rvt/SAEDRVT14_AO21_4  \
    saed14rvt/SAEDRVT14_AO21_ECO_1  saed14rvt/SAEDRVT14_AO21_U_0P5  \
    saed14rvt/SAEDRVT14_AO221_0P5  saed14rvt/SAEDRVT14_AO221_1  \
    saed14rvt/SAEDRVT14_AO221_2  saed14rvt/SAEDRVT14_AO221_4  \
    saed14rvt/SAEDRVT14_AO222_1  saed14rvt/SAEDRVT14_AO222_2  \
    saed14rvt/SAEDRVT14_AO222_4  saed14rvt/SAEDRVT14_AO222_U_0P5  \
    saed14rvt/SAEDRVT14_AO22_0P5  saed14rvt/SAEDRVT14_AO22_0P75  \
    saed14rvt/SAEDRVT14_AO22_1  saed14rvt/SAEDRVT14_AO22_2  \
    saed14rvt/SAEDRVT14_AO22_4  saed14rvt/SAEDRVT14_AO2BB2_0P5  \
    saed14rvt/SAEDRVT14_AO2BB2_1  saed14rvt/SAEDRVT14_AO2BB2_2  \
    saed14rvt/SAEDRVT14_AO2BB2_4  saed14rvt/SAEDRVT14_AO2BB2_V1_0P5  \
    saed14rvt/SAEDRVT14_AO2BB2_V1_0P75  saed14rvt/SAEDRVT14_AO2BB2_V1_1  \
    saed14rvt/SAEDRVT14_AO2BB2_V1_2  saed14rvt/SAEDRVT14_AO2BB2_V1_4  \
    saed14rvt/SAEDRVT14_AO31_1  saed14rvt/SAEDRVT14_AO31_2  \
    saed14rvt/SAEDRVT14_AO31_4  saed14rvt/SAEDRVT14_AO31_U_0P5  \
    saed14rvt/SAEDRVT14_AO32_1  saed14rvt/SAEDRVT14_AO32_2  \
    saed14rvt/SAEDRVT14_AO32_4  saed14rvt/SAEDRVT14_AO32_U_0P5  \
    saed14rvt/SAEDRVT14_AO33_1  saed14rvt/SAEDRVT14_AO33_2  \
    saed14rvt/SAEDRVT14_AO33_4  saed14rvt/SAEDRVT14_AO33_U_0P5  \
    saed14rvt/SAEDRVT14_AOBUF_IW_0P75  saed14rvt/SAEDRVT14_AOBUF_IW_1P5  \
    saed14rvt/SAEDRVT14_AOBUF_IW_3  saed14rvt/SAEDRVT14_AOBUF_IW_6  \
    saed14rvt/SAEDRVT14_AOI211_0P5  saed14rvt/SAEDRVT14_AOI211_1  \
    saed14rvt/SAEDRVT14_AOI211_2  saed14rvt/SAEDRVT14_AOI211_4  \
    saed14rvt/SAEDRVT14_AOI21_0P5  saed14rvt/SAEDRVT14_AOI21_0P75  \
    saed14rvt/SAEDRVT14_AOI21_1  saed14rvt/SAEDRVT14_AOI21_1P5  \
    saed14rvt/SAEDRVT14_AOI21_2  saed14rvt/SAEDRVT14_AOI21_3  \
    saed14rvt/SAEDRVT14_AOI21_4  saed14rvt/SAEDRVT14_AOI21_6  \
    saed14rvt/SAEDRVT14_AOI21_8  saed14rvt/SAEDRVT14_AOI21_ECO_1  \
    saed14rvt/SAEDRVT14_AOI21_V1_4  saed14rvt/SAEDRVT14_AOI21_V1_6  \
    saed14rvt/SAEDRVT14_AOI21_V1_8  saed14rvt/SAEDRVT14_AOI221_0P5  \
    saed14rvt/SAEDRVT14_AOI221_1  saed14rvt/SAEDRVT14_AOI221_2  \
    saed14rvt/SAEDRVT14_AOI221_4  saed14rvt/SAEDRVT14_AOI222_0P5  \
    saed14rvt/SAEDRVT14_AOI222_1  saed14rvt/SAEDRVT14_AOI222_2  \
    saed14rvt/SAEDRVT14_AOI222_4  saed14rvt/SAEDRVT14_AOI22_0P5  \
    saed14rvt/SAEDRVT14_AOI22_0P75  saed14rvt/SAEDRVT14_AOI22_1  \
    saed14rvt/SAEDRVT14_AOI22_1P5  saed14rvt/SAEDRVT14_AOI22_2  \
    saed14rvt/SAEDRVT14_AOI22_3  saed14rvt/SAEDRVT14_AOI22_4  \
    saed14rvt/SAEDRVT14_AOI22_6  saed14rvt/SAEDRVT14_AOI22_ECO_1  \
    saed14rvt/SAEDRVT14_AOI311_0P5  saed14rvt/SAEDRVT14_AOI311_0P75  \
    saed14rvt/SAEDRVT14_AOI311_1  saed14rvt/SAEDRVT14_AOI311_2  \
    saed14rvt/SAEDRVT14_AOI311_4  saed14rvt/SAEDRVT14_AOI31_0P5  \
    saed14rvt/SAEDRVT14_AOI31_0P75  saed14rvt/SAEDRVT14_AOI31_1  \
    saed14rvt/SAEDRVT14_AOI31_2  saed14rvt/SAEDRVT14_AOI31_4  \
    saed14rvt/SAEDRVT14_AOI31_ECO_1  saed14rvt/SAEDRVT14_AOI32_0P5  \
    saed14rvt/SAEDRVT14_AOI32_0P75  saed14rvt/SAEDRVT14_AOI32_1  \
    saed14rvt/SAEDRVT14_AOI32_2  saed14rvt/SAEDRVT14_AOI32_4  \
    saed14rvt/SAEDRVT14_AOI33_0P5  saed14rvt/SAEDRVT14_AOI33_0P75  \
    saed14rvt/SAEDRVT14_AOI33_1  saed14rvt/SAEDRVT14_AOI33_2  \
    saed14rvt/SAEDRVT14_AOI33_4  saed14rvt/SAEDRVT14_AOINV_IW_0P5  \
    saed14rvt/SAEDRVT14_AOINV_IW_1  saed14rvt/SAEDRVT14_AOINV_IW_2  \
    saed14rvt/SAEDRVT14_AOINV_IW_4  saed14rvt/SAEDRVT14_AOINV_IW_6  \
    saed14rvt/SAEDRVT14_BUF_1  saed14rvt/SAEDRVT14_BUF_10  \
    saed14rvt/SAEDRVT14_BUF_12  saed14rvt/SAEDRVT14_BUF_16  \
    saed14rvt/SAEDRVT14_BUF_1P5  saed14rvt/SAEDRVT14_BUF_2  \
    saed14rvt/SAEDRVT14_BUF_20  saed14rvt/SAEDRVT14_BUF_3  \
    saed14rvt/SAEDRVT14_BUF_4  saed14rvt/SAEDRVT14_BUF_6  \
    saed14rvt/SAEDRVT14_BUF_8  saed14rvt/SAEDRVT14_BUF_CDC_2  \
    saed14rvt/SAEDRVT14_BUF_CDC_4  saed14rvt/SAEDRVT14_BUF_ECO_1  \
    saed14rvt/SAEDRVT14_BUF_ECO_2  saed14rvt/SAEDRVT14_BUF_ECO_3  \
    saed14rvt/SAEDRVT14_BUF_ECO_4  saed14rvt/SAEDRVT14_BUF_ECO_6  \
    saed14rvt/SAEDRVT14_BUF_ECO_7  saed14rvt/SAEDRVT14_BUF_ECO_8  \
    saed14rvt/SAEDRVT14_BUF_PECO_1  saed14rvt/SAEDRVT14_BUF_PECO_12  \
    saed14rvt/SAEDRVT14_BUF_PECO_2  saed14rvt/SAEDRVT14_BUF_PECO_4  \
    saed14rvt/SAEDRVT14_BUF_PECO_8  saed14rvt/SAEDRVT14_BUF_PS_0P75  \
    saed14rvt/SAEDRVT14_BUF_PS_1P5  saed14rvt/SAEDRVT14_BUF_PS_3  \
    saed14rvt/SAEDRVT14_BUF_PS_6  saed14rvt/SAEDRVT14_BUF_S_0P5  \
    saed14rvt/SAEDRVT14_BUF_S_0P75  saed14rvt/SAEDRVT14_BUF_S_1  \
    saed14rvt/SAEDRVT14_BUF_S_10  saed14rvt/SAEDRVT14_BUF_S_12  \
    saed14rvt/SAEDRVT14_BUF_S_16  saed14rvt/SAEDRVT14_BUF_S_1P5  \
    saed14rvt/SAEDRVT14_BUF_S_2  saed14rvt/SAEDRVT14_BUF_S_20  \
    saed14rvt/SAEDRVT14_BUF_S_3  saed14rvt/SAEDRVT14_BUF_S_4  \
    saed14rvt/SAEDRVT14_BUF_S_6  saed14rvt/SAEDRVT14_BUF_S_8  \
    saed14rvt/SAEDRVT14_BUF_UCDC_0P5  saed14rvt/SAEDRVT14_BUF_UCDC_1  \
    saed14rvt/SAEDRVT14_BUF_U_0P5  saed14rvt/SAEDRVT14_BUF_U_0P75  \
    saed14rvt/SAEDRVT14_CAPB2  saed14rvt/SAEDRVT14_CAPB3  \
    saed14rvt/SAEDRVT14_CAPBIN13  saed14rvt/SAEDRVT14_CAPBTAP6  \
    saed14rvt/SAEDRVT14_CAPSPACER1  saed14rvt/SAEDRVT14_CAPT2  \
    saed14rvt/SAEDRVT14_CAPT3  saed14rvt/SAEDRVT14_CAPTIN13  \
    saed14rvt/SAEDRVT14_CAPTTAP6  saed14rvt/SAEDRVT14_CAPTTAPP6  \
    saed14rvt/SAEDRVT14_CKGTNLT_V5_1  saed14rvt/SAEDRVT14_CKGTNLT_V5_12  \
    saed14rvt/SAEDRVT14_CKGTNLT_V5_2  saed14rvt/SAEDRVT14_CKGTNLT_V5_3  \
    saed14rvt/SAEDRVT14_CKGTNLT_V5_4  saed14rvt/SAEDRVT14_CKGTNLT_V5_5  \
    saed14rvt/SAEDRVT14_CKGTNLT_V5_6  saed14rvt/SAEDRVT14_CKGTNLT_V5_8  \
    saed14rvt/SAEDRVT14_CKGTPLT_V5_1  saed14rvt/SAEDRVT14_CKGTPLT_V5_12  \
    saed14rvt/SAEDRVT14_CKGTPLT_V5_16  saed14rvt/SAEDRVT14_CKGTPLT_V5_2  \
    saed14rvt/SAEDRVT14_CKGTPLT_V5_20  saed14rvt/SAEDRVT14_CKGTPLT_V5_24  \
    saed14rvt/SAEDRVT14_CKGTPLT_V5_3  saed14rvt/SAEDRVT14_CKGTPLT_V5_4  \
    saed14rvt/SAEDRVT14_CKGTPLT_V5_5  saed14rvt/SAEDRVT14_CKGTPLT_V5_6  \
    saed14rvt/SAEDRVT14_CKGTPLT_V5_8  saed14rvt/SAEDRVT14_CKGTPL_V5_0P5  \
    saed14rvt/SAEDRVT14_CKGTPL_V5_1  saed14rvt/SAEDRVT14_CKGTPL_V5_2  \
    saed14rvt/SAEDRVT14_CKGTPL_V5_4  saed14rvt/SAEDRVT14_CKINVGTPLT_V7_1  \
    saed14rvt/SAEDRVT14_CKINVGTPLT_V7_2  saed14rvt/SAEDRVT14_CKINVGTPLT_V7_3  \
    saed14rvt/SAEDRVT14_CKINVGTPLT_V7_4  saed14rvt/SAEDRVT14_CKINVGTPLT_V7_5  \
    saed14rvt/SAEDRVT14_CKINVGTPLT_V7_6  saed14rvt/SAEDRVT14_CKINVGTPLT_V7_8  \
    saed14rvt/SAEDRVT14_CLKSPLT_1  saed14rvt/SAEDRVT14_CLKSPLT_8  \
    saed14rvt/SAEDRVT14_DCAP_ECO_12  saed14rvt/SAEDRVT14_DCAP_ECO_15  \
    saed14rvt/SAEDRVT14_DCAP_ECO_18  saed14rvt/SAEDRVT14_DCAP_ECO_6  \
    saed14rvt/SAEDRVT14_DCAP_ECO_9  saed14rvt/SAEDRVT14_DCAP_PV1ECO_12  \
    saed14rvt/SAEDRVT14_DCAP_PV1ECO_15  saed14rvt/SAEDRVT14_DCAP_PV1ECO_18  \
    saed14rvt/SAEDRVT14_DCAP_PV1ECO_6  saed14rvt/SAEDRVT14_DCAP_PV1ECO_9  \
    saed14rvt/SAEDRVT14_DCAP_PV3_3  saed14rvt/SAEDRVT14_DCAP_V4_16  \
    saed14rvt/SAEDRVT14_DCAP_V4_32  saed14rvt/SAEDRVT14_DCAP_V4_5  \
    saed14rvt/SAEDRVT14_DCAP_V4_64  saed14rvt/SAEDRVT14_DCAP_V4_8  \
    saed14rvt/SAEDRVT14_DELPROGS4_12  saed14rvt/SAEDRVT14_DELPROGS4_16  \
    saed14rvt/SAEDRVT14_DELPROGS4_4  saed14rvt/SAEDRVT14_DELPROGS4_6  \
    saed14rvt/SAEDRVT14_DELPROGS4_8  saed14rvt/SAEDRVT14_DELPROGS4_Y2_24  \
    saed14rvt/SAEDRVT14_DELPROGS9_V1_4  saed14rvt/SAEDRVT14_DELPROGS9_V2_4  \
    saed14rvt/SAEDRVT14_DEL_L4D100_1  saed14rvt/SAEDRVT14_DEL_L4D100_2  \
    saed14rvt/SAEDRVT14_DEL_PR2V2_1  saed14rvt/SAEDRVT14_DEL_R2V1_1  \
    saed14rvt/SAEDRVT14_DEL_R2V1_2  saed14rvt/SAEDRVT14_DEL_R2V2_1  \
    saed14rvt/SAEDRVT14_DEL_R2V2_2  saed14rvt/SAEDRVT14_DEL_R2V3_1  \
    saed14rvt/SAEDRVT14_DEL_R2V3_2  saed14rvt/SAEDRVT14_EN2_0P5  \
    saed14rvt/SAEDRVT14_EN2_1  saed14rvt/SAEDRVT14_EN2_1P5  \
    saed14rvt/SAEDRVT14_EN2_2  saed14rvt/SAEDRVT14_EN2_3  \
    saed14rvt/SAEDRVT14_EN2_4  saed14rvt/SAEDRVT14_EN2_ECO_1  \
    saed14rvt/SAEDRVT14_EN2_V1_0P75  saed14rvt/SAEDRVT14_EN2_V1_1P5  \
    saed14rvt/SAEDRVT14_EN3_1  saed14rvt/SAEDRVT14_EN3_2  \
    saed14rvt/SAEDRVT14_EN3_3  saed14rvt/SAEDRVT14_EN3_U_0P5  \
    saed14rvt/SAEDRVT14_EN4_2  saed14rvt/SAEDRVT14_EN4_4  \
    saed14rvt/SAEDRVT14_EN4_M_1  saed14rvt/SAEDRVT14_EN4_U_0P5  \
    saed14rvt/SAEDRVT14_EO2_0P5  saed14rvt/SAEDRVT14_EO2_1  \
    saed14rvt/SAEDRVT14_EO2_1P5  saed14rvt/SAEDRVT14_EO2_2  \
    saed14rvt/SAEDRVT14_EO2_3  saed14rvt/SAEDRVT14_EO2_4  \
    saed14rvt/SAEDRVT14_EO2_ECO_1  saed14rvt/SAEDRVT14_EO2_MM_0P5  \
    saed14rvt/SAEDRVT14_EO2_MM_1  saed14rvt/SAEDRVT14_EO2_MM_2  \
    saed14rvt/SAEDRVT14_EO2_MM_4  saed14rvt/SAEDRVT14_EO2_V1_0P75  \
    saed14rvt/SAEDRVT14_EO2_V1_1P5  saed14rvt/SAEDRVT14_EO3_0P5  \
    saed14rvt/SAEDRVT14_EO3_1  saed14rvt/SAEDRVT14_EO3_2  \
    saed14rvt/SAEDRVT14_EO3_4  saed14rvt/SAEDRVT14_EO4_1  \
    saed14rvt/SAEDRVT14_EO4_2  saed14rvt/SAEDRVT14_EO4_4  \
    saed14rvt/SAEDRVT14_EO4_U_0P5  saed14rvt/SAEDRVT14_FDNQ_V2_8  \
    saed14rvt/SAEDRVT14_FDNQ_V3_1  saed14rvt/SAEDRVT14_FDNQ_V3_2  \
    saed14rvt/SAEDRVT14_FDNQ_V3_4  saed14rvt/SAEDRVT14_FDNRBSBQ_V2_0P5  \
    saed14rvt/SAEDRVT14_FDNRBSBQ_V2_1  saed14rvt/SAEDRVT14_FDNRBSBQ_V2_2  \
    saed14rvt/SAEDRVT14_FDNRBSBQ_V2_4  saed14rvt/SAEDRVT14_FDN_V2_0P5  \
    saed14rvt/SAEDRVT14_FDN_V2_1  saed14rvt/SAEDRVT14_FDN_V2_2  \
    saed14rvt/SAEDRVT14_FDN_V2_4  saed14rvt/SAEDRVT14_FDPCBQ_V2LP_0P5  \
    saed14rvt/SAEDRVT14_FDPCBQ_V2LP_1  saed14rvt/SAEDRVT14_FDPCBQ_V2LP_2  \
    saed14rvt/SAEDRVT14_FDPCBQ_V2_0P5  saed14rvt/SAEDRVT14_FDPCBQ_V2_1  \
    saed14rvt/SAEDRVT14_FDPCBQ_V2_2  saed14rvt/SAEDRVT14_FDPCBQ_V2_4  \
    saed14rvt/SAEDRVT14_FDPCBQ_V3_1  saed14rvt/SAEDRVT14_FDPCBQ_V3_2  \
    saed14rvt/SAEDRVT14_FDPCBQ_V3_4  saed14rvt/SAEDRVT14_FDPMQ_0P5  \
    saed14rvt/SAEDRVT14_FDPMQ_1  saed14rvt/SAEDRVT14_FDPMQ_2  \
    saed14rvt/SAEDRVT14_FDPMQ_4  saed14rvt/SAEDRVT14_FDPQB_V2LP_0P5  \
    saed14rvt/SAEDRVT14_FDPQB_V2LP_1  saed14rvt/SAEDRVT14_FDPQB_V2LP_2  \
    saed14rvt/SAEDRVT14_FDPQB_V2_1  saed14rvt/SAEDRVT14_FDPQB_V2_2  \
    saed14rvt/SAEDRVT14_FDPQB_V2_4  saed14rvt/SAEDRVT14_FDPQB_V2_8  \
    saed14rvt/SAEDRVT14_FDPQB_V3_1  saed14rvt/SAEDRVT14_FDPQB_V3_2  \
    saed14rvt/SAEDRVT14_FDPQB_V3_4  saed14rvt/SAEDRVT14_FDPQB_V3_8  \
    saed14rvt/SAEDRVT14_FDPQ_V2ECO_1  saed14rvt/SAEDRVT14_FDPQ_V2_1  \
    saed14rvt/SAEDRVT14_FDPQ_V2_6  saed14rvt/SAEDRVT14_FDPQ_V2_8  \
    saed14rvt/SAEDRVT14_FDPQ_V3_1  saed14rvt/SAEDRVT14_FDPQ_V3_2  \
    saed14rvt/SAEDRVT14_FDPQ_V3_4  saed14rvt/SAEDRVT14_FDPRBQ_V2LP_0P5  \
    saed14rvt/SAEDRVT14_FDPRBQ_V2LP_1  saed14rvt/SAEDRVT14_FDPRBQ_V2LP_2  \
    saed14rvt/SAEDRVT14_FDPRBQ_V2_0P5  saed14rvt/SAEDRVT14_FDPRBQ_V2_1  \
    saed14rvt/SAEDRVT14_FDPRBQ_V2_2  saed14rvt/SAEDRVT14_FDPRBQ_V2_4  \
    saed14rvt/SAEDRVT14_FDPRBSBQ_V2_0P5  saed14rvt/SAEDRVT14_FDPRBSBQ_V2_1  \
    saed14rvt/SAEDRVT14_FDPRBSBQ_V2_2  saed14rvt/SAEDRVT14_FDPRBSBQ_V2_4  \
    saed14rvt/SAEDRVT14_FDPRB_V3_2  saed14rvt/SAEDRVT14_FDPSBQ_0P5  \
    saed14rvt/SAEDRVT14_FDPSBQ_1  saed14rvt/SAEDRVT14_FDPSBQ_2  \
    saed14rvt/SAEDRVT14_FDPSBQ_4  saed14rvt/SAEDRVT14_FDPSQB_2  \
    saed14rvt/SAEDRVT14_FDPSYNSBQ_V2_0P5  saed14rvt/SAEDRVT14_FDPSYNSBQ_V2_1  \
    saed14rvt/SAEDRVT14_FDPSYNSBQ_V2_2  saed14rvt/SAEDRVT14_FDPSYNSBQ_V2_4  \
    saed14rvt/SAEDRVT14_FDPS_V3_2  saed14rvt/SAEDRVT14_FDP_V2LP_0P5  \
    saed14rvt/SAEDRVT14_FDP_V2LP_1  saed14rvt/SAEDRVT14_FDP_V2LP_2  \
    saed14rvt/SAEDRVT14_FDP_V2_0P5  saed14rvt/SAEDRVT14_FDP_V2_1  \
    saed14rvt/SAEDRVT14_FDP_V2_2  saed14rvt/SAEDRVT14_FDP_V2_4  \
    saed14rvt/SAEDRVT14_FILL16  saed14rvt/SAEDRVT14_FILL2  \
    saed14rvt/SAEDRVT14_FILL3  saed14rvt/SAEDRVT14_FILL32  \
    saed14rvt/SAEDRVT14_FILL4  saed14rvt/SAEDRVT14_FILL5  \
    saed14rvt/SAEDRVT14_FILL64  saed14rvt/SAEDRVT14_FILLP2  \
    saed14rvt/SAEDRVT14_FILLP3  saed14rvt/SAEDRVT14_FILL_ECO_1  \
    saed14rvt/SAEDRVT14_FILL_ECO_12  saed14rvt/SAEDRVT14_FILL_ECO_15  \
    saed14rvt/SAEDRVT14_FILL_ECO_18  saed14rvt/SAEDRVT14_FILL_ECO_2  \
    saed14rvt/SAEDRVT14_FILL_ECO_3  saed14rvt/SAEDRVT14_FILL_ECO_6  \
    saed14rvt/SAEDRVT14_FILL_ECO_9  saed14rvt/SAEDRVT14_FILL_NNWIV1Y2_2  \
    saed14rvt/SAEDRVT14_FILL_NNWIV1Y2_3  saed14rvt/SAEDRVT14_FILL_NNWIY2_2  \
    saed14rvt/SAEDRVT14_FILL_NNWIY2_3  saed14rvt/SAEDRVT14_FILL_NNWSPACERY2_7  \
    saed14rvt/SAEDRVT14_FILL_NNWVDDBRKY2_3  saed14rvt/SAEDRVT14_FILL_SPACER_7  \
    saed14rvt/SAEDRVT14_FILL_Y2_3  saed14rvt/SAEDRVT14_FSB2BDPRBQ_PV2_1  \
    saed14rvt/SAEDRVT14_FSB2BDPRBQ_PV2_2  saed14rvt/SAEDRVT14_FSB2BDPRBQ_PV2_4  \
    saed14rvt/SAEDRVT14_FSB2BDPRBQ_PV2_8  saed14rvt/SAEDRVT14_FSDN2_V2_0P5  \
    saed14rvt/SAEDRVT14_FSDN2_V2_1  saed14rvt/SAEDRVT14_FSDN2_V2_2  \
    saed14rvt/SAEDRVT14_FSDN2_V2_4  saed14rvt/SAEDRVT14_FSDN4_V2_0P5  \
    saed14rvt/SAEDRVT14_FSDN4_V2_1  saed14rvt/SAEDRVT14_FSDN4_V2_2  \
    saed14rvt/SAEDRVT14_FSDN4_V2_4  saed14rvt/SAEDRVT14_FSDNQ_V3_1  \
    saed14rvt/SAEDRVT14_FSDNQ_V3_2  saed14rvt/SAEDRVT14_FSDNQ_V3_4  \
    saed14rvt/SAEDRVT14_FSDN_V2_1  saed14rvt/SAEDRVT14_FSDN_V2_2  \
    saed14rvt/SAEDRVT14_FSDN_V2_4  saed14rvt/SAEDRVT14_FSDPMQ_0P5  \
    saed14rvt/SAEDRVT14_FSDPMQ_1  saed14rvt/SAEDRVT14_FSDPMQ_2  \
    saed14rvt/SAEDRVT14_FSDPMQ_4  saed14rvt/SAEDRVT14_FSDPMQ_LP_0P5  \
    saed14rvt/SAEDRVT14_FSDPMQ_LP_1  saed14rvt/SAEDRVT14_FSDPMQ_LP_2  \
    saed14rvt/SAEDRVT14_FSDPQB_V2LP_0P5  saed14rvt/SAEDRVT14_FSDPQB_V2LP_1  \
    saed14rvt/SAEDRVT14_FSDPQB_V2LP_2  saed14rvt/SAEDRVT14_FSDPQB_V2_0P5  \
    saed14rvt/SAEDRVT14_FSDPQB_V2_1  saed14rvt/SAEDRVT14_FSDPQB_V2_2  \
    saed14rvt/SAEDRVT14_FSDPQB_V2_4  saed14rvt/SAEDRVT14_FSDPQB_V2_8  \
    saed14rvt/SAEDRVT14_FSDPQB_V3_1  saed14rvt/SAEDRVT14_FSDPQB_V3_2  \
    saed14rvt/SAEDRVT14_FSDPQB_V3_4  saed14rvt/SAEDRVT14_FSDPQB_V3_8  \
    saed14rvt/SAEDRVT14_FSDPQM4_V2LPY2_1  saed14rvt/SAEDRVT14_FSDPQM4_V2Y2_1  \
    saed14rvt/SAEDRVT14_FSDPQ_V2LP_0P5  saed14rvt/SAEDRVT14_FSDPQ_V2LP_1  \
    saed14rvt/SAEDRVT14_FSDPQ_V2LP_2  saed14rvt/SAEDRVT14_FSDPQ_V2_0P5  \
    saed14rvt/SAEDRVT14_FSDPQ_V2_1  saed14rvt/SAEDRVT14_FSDPQ_V2_2  \
    saed14rvt/SAEDRVT14_FSDPQ_V2_4  saed14rvt/SAEDRVT14_FSDPQ_V3_1  \
    saed14rvt/SAEDRVT14_FSDPQ_V3_2  saed14rvt/SAEDRVT14_FSDPQ_V3_4  \
    saed14rvt/SAEDRVT14_FSDPRBQ_V2LP_0P5  saed14rvt/SAEDRVT14_FSDPRBQ_V2LP_1  \
    saed14rvt/SAEDRVT14_FSDPRBQ_V2LP_2  saed14rvt/SAEDRVT14_FSDPRBQ_V2_0P5  \
    saed14rvt/SAEDRVT14_FSDPRBQ_V2_1  saed14rvt/SAEDRVT14_FSDPRBQ_V2_2  \
    saed14rvt/SAEDRVT14_FSDPRBQ_V2_4  saed14rvt/SAEDRVT14_FSDPRBQ_V3_1  \
    saed14rvt/SAEDRVT14_FSDPRBQ_V3_2  saed14rvt/SAEDRVT14_FSDPRBQ_V3_4  \
    saed14rvt/SAEDRVT14_FSDPRBSBQ_V2LP_0P5  \
    saed14rvt/SAEDRVT14_FSDPRBSBQ_V2LP_1  saed14rvt/SAEDRVT14_FSDPRBSBQ_V2LP_2  \
    saed14rvt/SAEDRVT14_FSDPRBSBQ_V2_0P5  saed14rvt/SAEDRVT14_FSDPRBSBQ_V2_1  \
    saed14rvt/SAEDRVT14_FSDPRBSBQ_V2_2  saed14rvt/SAEDRVT14_FSDPRBSBQ_V2_4  \
    saed14rvt/SAEDRVT14_FSDPSBQ_V2LP_0P5  saed14rvt/SAEDRVT14_FSDPSBQ_V2LP_1  \
    saed14rvt/SAEDRVT14_FSDPSBQ_V2LP_2  saed14rvt/SAEDRVT14_FSDPSBQ_V2_0P5  \
    saed14rvt/SAEDRVT14_FSDPSBQ_V2_1  saed14rvt/SAEDRVT14_FSDPSBQ_V2_2  \
    saed14rvt/SAEDRVT14_FSDPSBQ_V2_4  saed14rvt/SAEDRVT14_FSDPSYNRBQM4_V2LPY2_1 \
     saed14rvt/SAEDRVT14_FSDPSYNRBQM4_V2Y2_1  \
    saed14rvt/SAEDRVT14_FSDPSYNRBQ_V2LP_0P5  \
    saed14rvt/SAEDRVT14_FSDPSYNRBQ_V2LP_1  \
    saed14rvt/SAEDRVT14_FSDPSYNRBQ_V2LP_2  \
    saed14rvt/SAEDRVT14_FSDPSYNRBQ_V2_0P5  saed14rvt/SAEDRVT14_FSDPSYNRBQ_V2_1  \
    saed14rvt/SAEDRVT14_FSDPSYNRBQ_V2_2  saed14rvt/SAEDRVT14_FSDPSYNRBQ_V2_4  \
    saed14rvt/SAEDRVT14_FSDPSYNRBQ_V3_1  saed14rvt/SAEDRVT14_FSDPSYNRBQ_V3_2  \
    saed14rvt/SAEDRVT14_FSDPSYNRBQ_V3_4  \
    saed14rvt/SAEDRVT14_FSDPSYNSBQ_V2LP_0P5  \
    saed14rvt/SAEDRVT14_FSDPSYNSBQ_V2LP_1  \
    saed14rvt/SAEDRVT14_FSDPSYNSBQ_V2LP_2  \
    saed14rvt/SAEDRVT14_FSDPSYNSBQ_V2_0P5  saed14rvt/SAEDRVT14_FSDPSYNSBQ_V2_1  \
    saed14rvt/SAEDRVT14_FSDPSYNSBQ_V2_2  saed14rvt/SAEDRVT14_FSDPSYNSBQ_V2_4  \
    saed14rvt/SAEDRVT14_FSDP_V2LP_1  saed14rvt/SAEDRVT14_FSDP_V2LP_2  \
    saed14rvt/SAEDRVT14_FSDP_V2_0P5  saed14rvt/SAEDRVT14_FSDP_V2_1  \
    saed14rvt/SAEDRVT14_FSDP_V2_2  saed14rvt/SAEDRVT14_FSDP_V2_4  \
    saed14rvt/SAEDRVT14_INV_0P5  saed14rvt/SAEDRVT14_INV_0P75  \
    saed14rvt/SAEDRVT14_INV_1  saed14rvt/SAEDRVT14_INV_10  \
    saed14rvt/SAEDRVT14_INV_12  saed14rvt/SAEDRVT14_INV_16  \
    saed14rvt/SAEDRVT14_INV_1P5  saed14rvt/SAEDRVT14_INV_2  \
    saed14rvt/SAEDRVT14_INV_20  saed14rvt/SAEDRVT14_INV_3  \
    saed14rvt/SAEDRVT14_INV_4  saed14rvt/SAEDRVT14_INV_6  \
    saed14rvt/SAEDRVT14_INV_8  saed14rvt/SAEDRVT14_INV_ECO_1  \
    saed14rvt/SAEDRVT14_INV_ECO_2  saed14rvt/SAEDRVT14_INV_ECO_3  \
    saed14rvt/SAEDRVT14_INV_ECO_4  saed14rvt/SAEDRVT14_INV_ECO_6  \
    saed14rvt/SAEDRVT14_INV_ECO_8  saed14rvt/SAEDRVT14_INV_OR2_AN2_1  \
    saed14rvt/SAEDRVT14_INV_PECO_1  saed14rvt/SAEDRVT14_INV_PECO_12  \
    saed14rvt/SAEDRVT14_INV_PECO_2  saed14rvt/SAEDRVT14_INV_PECO_4  \
    saed14rvt/SAEDRVT14_INV_PECO_8  saed14rvt/SAEDRVT14_INV_PS_1  \
    saed14rvt/SAEDRVT14_INV_PS_2  saed14rvt/SAEDRVT14_INV_PS_3  \
    saed14rvt/SAEDRVT14_INV_PS_6  saed14rvt/SAEDRVT14_INV_S_0P5  \
    saed14rvt/SAEDRVT14_INV_S_0P75  saed14rvt/SAEDRVT14_INV_S_1  \
    saed14rvt/SAEDRVT14_INV_S_10  saed14rvt/SAEDRVT14_INV_S_12  \
    saed14rvt/SAEDRVT14_INV_S_16  saed14rvt/SAEDRVT14_INV_S_1P5  \
    saed14rvt/SAEDRVT14_INV_S_2  saed14rvt/SAEDRVT14_INV_S_20  \
    saed14rvt/SAEDRVT14_INV_S_3  saed14rvt/SAEDRVT14_INV_S_4  \
    saed14rvt/SAEDRVT14_INV_S_5  saed14rvt/SAEDRVT14_INV_S_6  \
    saed14rvt/SAEDRVT14_INV_S_7  saed14rvt/SAEDRVT14_INV_S_8  \
    saed14rvt/SAEDRVT14_INV_S_9  saed14rvt/SAEDRVT14_ISOFSDPQ_PECO_4  \
    saed14rvt/SAEDRVT14_ISOFSDPQ_PECO_8  saed14rvt/SAEDRVT14_ISOS0CL1_PECO4_1  \
    saed14rvt/SAEDRVT14_ISOS0CL1_PECO4_2  saed14rvt/SAEDRVT14_ISOS0CL1_PECO_1  \
    saed14rvt/SAEDRVT14_ISOS0CL1_PECO_2  saed14rvt/SAEDRVT14_ISOS0CL1_PECO_4  \
    saed14rvt/SAEDRVT14_ISOS0CL1_PECO_8  saed14rvt/SAEDRVT14_ISOS0CL1_P_2  \
    saed14rvt/SAEDRVT14_ISOS0CL1_P_8  saed14rvt/SAEDRVT14_ISOS1CL0_PECO_1  \
    saed14rvt/SAEDRVT14_ISOS1CL0_PECO_2  saed14rvt/SAEDRVT14_ISOS1CL0_PECO_4  \
    saed14rvt/SAEDRVT14_ISOS1CL0_PECO_8  saed14rvt/SAEDRVT14_ISOS1CL0_P_2  \
    saed14rvt/SAEDRVT14_ISOS1CL0_P_8  saed14rvt/SAEDRVT14_LDCKNR2PQ_5  \
    saed14rvt/SAEDRVT14_LDND2NQ_1  saed14rvt/SAEDRVT14_LDND2NQ_2  \
    saed14rvt/SAEDRVT14_LDND2NQ_4  saed14rvt/SAEDRVT14_LDNQOR2_1  \
    saed14rvt/SAEDRVT14_LDNQOR2_2  saed14rvt/SAEDRVT14_LDNQOR2_4  \
    saed14rvt/SAEDRVT14_LDNQ_1  saed14rvt/SAEDRVT14_LDNQ_2  \
    saed14rvt/SAEDRVT14_LDNQ_3  saed14rvt/SAEDRVT14_LDNQ_4  \
    saed14rvt/SAEDRVT14_LDNQ_5  saed14rvt/SAEDRVT14_LDNQ_6  \
    saed14rvt/SAEDRVT14_LDNQ_8  saed14rvt/SAEDRVT14_LDNQ_U_0P5  \
    saed14rvt/SAEDRVT14_LDNQ_V1_1  saed14rvt/SAEDRVT14_LDNQ_V1_2  \
    saed14rvt/SAEDRVT14_LDNQ_V1_4  saed14rvt/SAEDRVT14_LDNR2PQ_1  \
    saed14rvt/SAEDRVT14_LDNR2PQ_2  saed14rvt/SAEDRVT14_LDNR2PQ_4  \
    saed14rvt/SAEDRVT14_LDNRBQ_V2_0P5  saed14rvt/SAEDRVT14_LDNRBQ_V2_1  \
    saed14rvt/SAEDRVT14_LDNRBQ_V2_2  saed14rvt/SAEDRVT14_LDNRBQ_V2_4  \
    saed14rvt/SAEDRVT14_LDOR2PQ_1  saed14rvt/SAEDRVT14_LDOR2PQ_2  \
    saed14rvt/SAEDRVT14_LDOR2PQ_4  saed14rvt/SAEDRVT14_LDPQ_1  \
    saed14rvt/SAEDRVT14_LDPQ_2  saed14rvt/SAEDRVT14_LDPQ_3  \
    saed14rvt/SAEDRVT14_LDPQ_4  saed14rvt/SAEDRVT14_LDPQ_5  \
    saed14rvt/SAEDRVT14_LDPQ_6  saed14rvt/SAEDRVT14_LDPQ_8  \
    saed14rvt/SAEDRVT14_LDPQ_ECO_1  saed14rvt/SAEDRVT14_LDPQ_U_0P5  \
    saed14rvt/SAEDRVT14_LDPQ_V1_1  saed14rvt/SAEDRVT14_LDPQ_V1_2  \
    saed14rvt/SAEDRVT14_LDPQ_V1_4  saed14rvt/SAEDRVT14_LDPRSQB_1  \
    saed14rvt/SAEDRVT14_LDPSBQ_V2_0P5  saed14rvt/SAEDRVT14_LDPSBQ_V2_1  \
    saed14rvt/SAEDRVT14_LDPSBQ_V2_2  saed14rvt/SAEDRVT14_LDPSBQ_V2_4  \
    saed14rvt/SAEDRVT14_LSRDPQ4_1  saed14rvt/SAEDRVT14_LSRDPQ4_2  \
    saed14rvt/SAEDRVT14_LSRDPQ_1  saed14rvt/SAEDRVT14_LSRDPQ_2  \
    saed14rvt/SAEDRVT14_MUX2_1  saed14rvt/SAEDRVT14_MUX2_1P5  \
    saed14rvt/SAEDRVT14_MUX2_2  saed14rvt/SAEDRVT14_MUX2_4  \
    saed14rvt/SAEDRVT14_MUX2_ECO_1  saed14rvt/SAEDRVT14_MUX2_ECO_2  \
    saed14rvt/SAEDRVT14_MUX2_MM_0P5  saed14rvt/SAEDRVT14_MUX2_MM_1  \
    saed14rvt/SAEDRVT14_MUX2_MM_2  saed14rvt/SAEDRVT14_MUX2_MM_4  \
    saed14rvt/SAEDRVT14_MUX2_U_0P5  saed14rvt/SAEDRVT14_MUX3_V1M_0P5  \
    saed14rvt/SAEDRVT14_MUX3_V1M_1  saed14rvt/SAEDRVT14_MUX3_V1M_2  \
    saed14rvt/SAEDRVT14_MUX3_V1M_4  saed14rvt/SAEDRVT14_MUX4_V1M_1  \
    saed14rvt/SAEDRVT14_MUX4_V1M_2  saed14rvt/SAEDRVT14_MUX4_V1M_4  \
    saed14rvt/SAEDRVT14_MUX4_V1U_0P5  saed14rvt/SAEDRVT14_MUXI2_0P5  \
    saed14rvt/SAEDRVT14_MUXI2_1  saed14rvt/SAEDRVT14_MUXI2_2  \
    saed14rvt/SAEDRVT14_MUXI2_4  saed14rvt/SAEDRVT14_MUXI2_B_1  \
    saed14rvt/SAEDRVT14_MUXI2_ECO_1  saed14rvt/SAEDRVT14_MUXI2_ECO_2  \
    saed14rvt/SAEDRVT14_MUXI2_U_0P5  saed14rvt/SAEDRVT14_MUXI3_0P5  \
    saed14rvt/SAEDRVT14_MUXI3_1  saed14rvt/SAEDRVT14_MUXI3_2  \
    saed14rvt/SAEDRVT14_MUXI3_4  saed14rvt/SAEDRVT14_MUXI4_2  \
    saed14rvt/SAEDRVT14_MUXI4_4  saed14rvt/SAEDRVT14_MUXI4_U_0P5  \
    saed14rvt/SAEDRVT14_ND2B_0P75  saed14rvt/SAEDRVT14_ND2B_1  \
    saed14rvt/SAEDRVT14_ND2B_1P5  saed14rvt/SAEDRVT14_ND2B_2  \
    saed14rvt/SAEDRVT14_ND2B_4  saed14rvt/SAEDRVT14_ND2B_U_0P5  \
    saed14rvt/SAEDRVT14_ND2_0P5  saed14rvt/SAEDRVT14_ND2_1  \
    saed14rvt/SAEDRVT14_ND2_16  saed14rvt/SAEDRVT14_ND2_1P5  \
    saed14rvt/SAEDRVT14_ND2_2  saed14rvt/SAEDRVT14_ND2_3  \
    saed14rvt/SAEDRVT14_ND2_4  saed14rvt/SAEDRVT14_ND2_5  \
    saed14rvt/SAEDRVT14_ND2_6  saed14rvt/SAEDRVT14_ND2_8  \
    saed14rvt/SAEDRVT14_ND2_CDC_0P5  saed14rvt/SAEDRVT14_ND2_CDC_1  \
    saed14rvt/SAEDRVT14_ND2_CDC_2  saed14rvt/SAEDRVT14_ND2_CDC_4  \
    saed14rvt/SAEDRVT14_ND2_ECO_1  saed14rvt/SAEDRVT14_ND2_ECO_2  \
    saed14rvt/SAEDRVT14_ND2_MM_0P5  saed14rvt/SAEDRVT14_ND2_MM_1  \
    saed14rvt/SAEDRVT14_ND2_MM_10  saed14rvt/SAEDRVT14_ND2_MM_12  \
    saed14rvt/SAEDRVT14_ND2_MM_16  saed14rvt/SAEDRVT14_ND2_MM_2  \
    saed14rvt/SAEDRVT14_ND2_MM_3  saed14rvt/SAEDRVT14_ND2_MM_4  \
    saed14rvt/SAEDRVT14_ND2_MM_6  saed14rvt/SAEDRVT14_ND2_MM_8  \
    saed14rvt/SAEDRVT14_ND3B_0P5  saed14rvt/SAEDRVT14_ND3B_0P75  \
    saed14rvt/SAEDRVT14_ND3B_1  saed14rvt/SAEDRVT14_ND3B_2  \
    saed14rvt/SAEDRVT14_ND3B_4  saed14rvt/SAEDRVT14_ND3_0P5  \
    saed14rvt/SAEDRVT14_ND3_0P75  saed14rvt/SAEDRVT14_ND3_1  \
    saed14rvt/SAEDRVT14_ND3_2  saed14rvt/SAEDRVT14_ND3_3  \
    saed14rvt/SAEDRVT14_ND3_4  saed14rvt/SAEDRVT14_ND3_8  \
    saed14rvt/SAEDRVT14_ND3_ECO_1  saed14rvt/SAEDRVT14_ND4_0P5  \
    saed14rvt/SAEDRVT14_ND4_0P75  saed14rvt/SAEDRVT14_ND4_1  \
    saed14rvt/SAEDRVT14_ND4_2  saed14rvt/SAEDRVT14_ND4_3  \
    saed14rvt/SAEDRVT14_ND4_4  saed14rvt/SAEDRVT14_ND4_8  \
    saed14rvt/SAEDRVT14_NR2B_0P75  saed14rvt/SAEDRVT14_NR2B_1  \
    saed14rvt/SAEDRVT14_NR2B_1P5  saed14rvt/SAEDRVT14_NR2B_2  \
    saed14rvt/SAEDRVT14_NR2B_4  saed14rvt/SAEDRVT14_NR2B_U_0P5  \
    saed14rvt/SAEDRVT14_NR2_0P5  saed14rvt/SAEDRVT14_NR2_1  \
    saed14rvt/SAEDRVT14_NR2_16  saed14rvt/SAEDRVT14_NR2_1P5  \
    saed14rvt/SAEDRVT14_NR2_2  saed14rvt/SAEDRVT14_NR2_3  \
    saed14rvt/SAEDRVT14_NR2_4  saed14rvt/SAEDRVT14_NR2_5  \
    saed14rvt/SAEDRVT14_NR2_6  saed14rvt/SAEDRVT14_NR2_8  \
    saed14rvt/SAEDRVT14_NR2_ECO_1  saed14rvt/SAEDRVT14_NR2_ECO_2  \
    saed14rvt/SAEDRVT14_NR2_ISO_1  saed14rvt/SAEDRVT14_NR2_ISO_4  \
    saed14rvt/SAEDRVT14_NR2_MM_0P5  saed14rvt/SAEDRVT14_NR2_MM_1  \
    saed14rvt/SAEDRVT14_NR2_MM_10  saed14rvt/SAEDRVT14_NR2_MM_12  \
    saed14rvt/SAEDRVT14_NR2_MM_16  saed14rvt/SAEDRVT14_NR2_MM_2  \
    saed14rvt/SAEDRVT14_NR2_MM_3  saed14rvt/SAEDRVT14_NR2_MM_4  \
    saed14rvt/SAEDRVT14_NR2_MM_6  saed14rvt/SAEDRVT14_NR2_MM_8  \
    saed14rvt/SAEDRVT14_NR3B_0P75  saed14rvt/SAEDRVT14_NR3B_1  \
    saed14rvt/SAEDRVT14_NR3B_1P5  saed14rvt/SAEDRVT14_NR3B_2  \
    saed14rvt/SAEDRVT14_NR3B_4  saed14rvt/SAEDRVT14_NR3B_U_0P5  \
    saed14rvt/SAEDRVT14_NR3_0P5  saed14rvt/SAEDRVT14_NR3_0P75  \
    saed14rvt/SAEDRVT14_NR3_1  saed14rvt/SAEDRVT14_NR3_2  \
    saed14rvt/SAEDRVT14_NR3_3  saed14rvt/SAEDRVT14_NR3_4  \
    saed14rvt/SAEDRVT14_NR3_8  saed14rvt/SAEDRVT14_NR3_ECO_1  \
    saed14rvt/SAEDRVT14_NR4_0P75  saed14rvt/SAEDRVT14_NR4_2  \
    saed14rvt/SAEDRVT14_OA211_1  saed14rvt/SAEDRVT14_OA211_2  \
    saed14rvt/SAEDRVT14_OA211_4  saed14rvt/SAEDRVT14_OA211_U_0P5  \
    saed14rvt/SAEDRVT14_OA21B_1  saed14rvt/SAEDRVT14_OA21B_2  \
    saed14rvt/SAEDRVT14_OA21B_4  saed14rvt/SAEDRVT14_OA21B_U_0P5  \
    saed14rvt/SAEDRVT14_OA21_1  saed14rvt/SAEDRVT14_OA21_2  \
    saed14rvt/SAEDRVT14_OA21_4  saed14rvt/SAEDRVT14_OA21_MM_1  \
    saed14rvt/SAEDRVT14_OA21_MM_2  saed14rvt/SAEDRVT14_OA21_MM_6  \
    saed14rvt/SAEDRVT14_OA21_U_0P5  saed14rvt/SAEDRVT14_OA221_1  \
    saed14rvt/SAEDRVT14_OA221_2  saed14rvt/SAEDRVT14_OA221_4  \
    saed14rvt/SAEDRVT14_OA221_U_0P5  saed14rvt/SAEDRVT14_OA222_1  \
    saed14rvt/SAEDRVT14_OA222_2  saed14rvt/SAEDRVT14_OA222_4  \
    saed14rvt/SAEDRVT14_OA222_U_0P5  saed14rvt/SAEDRVT14_OA22_0P75  \
    saed14rvt/SAEDRVT14_OA22_1  saed14rvt/SAEDRVT14_OA22_2  \
    saed14rvt/SAEDRVT14_OA22_4  saed14rvt/SAEDRVT14_OA22_U_0P5  \
    saed14rvt/SAEDRVT14_OA2BB2_0P5  saed14rvt/SAEDRVT14_OA2BB2_1  \
    saed14rvt/SAEDRVT14_OA2BB2_2  saed14rvt/SAEDRVT14_OA2BB2_4  \
    saed14rvt/SAEDRVT14_OA2BB2_V1_0P5  saed14rvt/SAEDRVT14_OA2BB2_V1_0P75  \
    saed14rvt/SAEDRVT14_OA2BB2_V1_1  saed14rvt/SAEDRVT14_OA2BB2_V1_2  \
    saed14rvt/SAEDRVT14_OA2BB2_V1_4  saed14rvt/SAEDRVT14_OA31_1  \
    saed14rvt/SAEDRVT14_OA31_1P5  saed14rvt/SAEDRVT14_OA31_2  \
    saed14rvt/SAEDRVT14_OA31_4  saed14rvt/SAEDRVT14_OA31_U_0P5  \
    saed14rvt/SAEDRVT14_OA32_0P75  saed14rvt/SAEDRVT14_OA32_1  \
    saed14rvt/SAEDRVT14_OA32_2  saed14rvt/SAEDRVT14_OA32_4  \
    saed14rvt/SAEDRVT14_OA32_U_0P5  saed14rvt/SAEDRVT14_OA33_1  \
    saed14rvt/SAEDRVT14_OA33_2  saed14rvt/SAEDRVT14_OA33_4  \
    saed14rvt/SAEDRVT14_OA33_U_0P5  saed14rvt/SAEDRVT14_OAI211_0P5  \
    saed14rvt/SAEDRVT14_OAI211_1  saed14rvt/SAEDRVT14_OAI211_2  \
    saed14rvt/SAEDRVT14_OAI211_4  saed14rvt/SAEDRVT14_OAI21_0P5  \
    saed14rvt/SAEDRVT14_OAI21_0P75  saed14rvt/SAEDRVT14_OAI21_1  \
    saed14rvt/SAEDRVT14_OAI21_1P5  saed14rvt/SAEDRVT14_OAI21_2  \
    saed14rvt/SAEDRVT14_OAI21_3  saed14rvt/SAEDRVT14_OAI21_4  \
    saed14rvt/SAEDRVT14_OAI21_V1_4  saed14rvt/SAEDRVT14_OAI21_V1_6  \
    saed14rvt/SAEDRVT14_OAI21_V1_8  saed14rvt/SAEDRVT14_OAI221_0P5  \
    saed14rvt/SAEDRVT14_OAI221_1  saed14rvt/SAEDRVT14_OAI221_2  \
    saed14rvt/SAEDRVT14_OAI221_4  saed14rvt/SAEDRVT14_OAI222_0P5  \
    saed14rvt/SAEDRVT14_OAI222_1  saed14rvt/SAEDRVT14_OAI222_2  \
    saed14rvt/SAEDRVT14_OAI222_4  saed14rvt/SAEDRVT14_OAI22_0P5  \
    saed14rvt/SAEDRVT14_OAI22_0P75  saed14rvt/SAEDRVT14_OAI22_1  \
    saed14rvt/SAEDRVT14_OAI22_1P5  saed14rvt/SAEDRVT14_OAI22_2  \
    saed14rvt/SAEDRVT14_OAI22_3  saed14rvt/SAEDRVT14_OAI22_4  \
    saed14rvt/SAEDRVT14_OAI311_0P5  saed14rvt/SAEDRVT14_OAI311_0P75  \
    saed14rvt/SAEDRVT14_OAI311_1  saed14rvt/SAEDRVT14_OAI311_2  \
    saed14rvt/SAEDRVT14_OAI311_4  saed14rvt/SAEDRVT14_OAI31_0P5  \
    saed14rvt/SAEDRVT14_OAI31_0P75  saed14rvt/SAEDRVT14_OAI31_1  \
    saed14rvt/SAEDRVT14_OAI31_2  saed14rvt/SAEDRVT14_OAI31_4  \
    saed14rvt/SAEDRVT14_OAI32_0P5  saed14rvt/SAEDRVT14_OAI32_0P75  \
    saed14rvt/SAEDRVT14_OAI32_1  saed14rvt/SAEDRVT14_OAI32_2  \
    saed14rvt/SAEDRVT14_OAI32_4  saed14rvt/SAEDRVT14_OAI33_0P5  \
    saed14rvt/SAEDRVT14_OAI33_0P75  saed14rvt/SAEDRVT14_OAI33_1  \
    saed14rvt/SAEDRVT14_OAI33_2  saed14rvt/SAEDRVT14_OAI33_4  \
    saed14rvt/SAEDRVT14_OR2B_PMM_2  saed14rvt/SAEDRVT14_OR2B_PMM_8  \
    saed14rvt/SAEDRVT14_OR2B_PSECO_1  saed14rvt/SAEDRVT14_OR2B_PSECO_2  \
    saed14rvt/SAEDRVT14_OR2B_PSECO_4  saed14rvt/SAEDRVT14_OR2B_PSECO_8  \
    saed14rvt/SAEDRVT14_OR2_0P5  saed14rvt/SAEDRVT14_OR2_0P75  \
    saed14rvt/SAEDRVT14_OR2_1  saed14rvt/SAEDRVT14_OR2_2  \
    saed14rvt/SAEDRVT14_OR2_4  saed14rvt/SAEDRVT14_OR2_ECO_2  \
    saed14rvt/SAEDRVT14_OR2_ISO_1  saed14rvt/SAEDRVT14_OR2_ISO_4  \
    saed14rvt/SAEDRVT14_OR2_MM_0P5  saed14rvt/SAEDRVT14_OR2_MM_0P75  \
    saed14rvt/SAEDRVT14_OR2_MM_1  saed14rvt/SAEDRVT14_OR2_MM_12  \
    saed14rvt/SAEDRVT14_OR2_MM_16  saed14rvt/SAEDRVT14_OR2_MM_1P5  \
    saed14rvt/SAEDRVT14_OR2_MM_2  saed14rvt/SAEDRVT14_OR2_MM_20  \
    saed14rvt/SAEDRVT14_OR2_MM_3  saed14rvt/SAEDRVT14_OR2_MM_4  \
    saed14rvt/SAEDRVT14_OR2_MM_6  saed14rvt/SAEDRVT14_OR2_MM_8  \
    saed14rvt/SAEDRVT14_OR3_0P5  saed14rvt/SAEDRVT14_OR3_0P75  \
    saed14rvt/SAEDRVT14_OR3_1  saed14rvt/SAEDRVT14_OR3_2  \
    saed14rvt/SAEDRVT14_OR3_4  saed14rvt/SAEDRVT14_OR4_1  \
    saed14rvt/SAEDRVT14_OR4_2  saed14rvt/SAEDRVT14_SRLD_3  \
    saed14rvt/SAEDRVT14_SRRDPQ4_1  saed14rvt/SAEDRVT14_SRRDPQ4_2  \
    saed14rvt/SAEDRVT14_SRRDPQ_1  saed14rvt/SAEDRVT14_SRRDPQ_2  \
    saed14rvt/SAEDRVT14_SSRRDPQ4_1  saed14rvt/SAEDRVT14_SSRRDPQ4_2  \
    saed14rvt/SAEDRVT14_SSRRDPQ_1  saed14rvt/SAEDRVT14_SSRRDPQ_2  \
    saed14rvt/SAEDRVT14_TAPDS  saed14rvt/SAEDRVT14_TAPPN  \
    saed14rvt/SAEDRVT14_TAPPP10  saed14rvt/SAEDRVT14_TIE0_4  \
    saed14rvt/SAEDRVT14_TIE0_PV1ECO_1  saed14rvt/SAEDRVT14_TIE0_V1_2  \
    saed14rvt/SAEDRVT14_TIE1_4  saed14rvt/SAEDRVT14_TIE1_PV1ECO_1  \
    saed14rvt/SAEDRVT14_TIE1_V1ECO_1  saed14rvt/SAEDRVT14_TIE1_V1_2  \
    saed14rvt/SAEDRVT14_TIEDIN_4  saed14rvt/SAEDRVT14_TIEDIN_PV1ECO_6  \
    saed14rvt/SAEDRVT14_TIEDIN_V1ECO_6 } 

set_placement_spacing_rule -labels { X X } { 0 2 }

# MD5_SIGNATURE: 35BE75576BF631BF18260776238CF6D8 
