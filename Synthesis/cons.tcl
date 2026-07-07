
####################################################################################
# Constraints
# ----------------------------------------------------------------------------
#
# 0. Design Compiler variables
#
# 1. Master Clock Definitions
#
# 2. Generated Clock Definitions
#
# 3. Clock Uncertainties
#
# 4. Clock Latencies 
#
# 5. Clock Relationships
#
# 6. #set input/output delay on ports
#
# 7. Driving cells
#
# 8. Output load

####################################################################################
           #########################################################
                  #### Section 0 : DC Variables ####
           #########################################################
#################################################################################### 

# Prevent assign statements in the generated netlist (must be applied before compile command)
set_fix_multiple_port_nets -all -buffer_constants -feedthroughs

####################################################################################
           #########################################################
                  #### Section 1 : Clock Definition ####
           #########################################################
#################################################################################### 
# 1. Master Clock Definitions 
# 2. Generated Clock Definitions
# 3. Clock Latencies
# 4. Clock Uncertainties
# 4. Clock Transitions
####################################################################################

#1. Master Clocks
set refrence REF_CLK
set REF_CLK_PER 20
set REF_CLK_SETUP_SKEW 0.2
set REF_CLK_HOLD_SKEW 0.1
set REF_CLK_RISE 0.05
set REF_CLK_FALL 0.05

create_clock -name $refrence -period $REF_CLK_PER -waveform "0 [expr $REF_CLK_PER/2]" [get_ports REF_CLK]
set_clock_uncertainty -setup $REF_CLK_SETUP_SKEW [get_clocks $refrence]
set_clock_uncertainty -hold $REF_CLK_HOLD_SKEW  [get_clocks $refrence]
set_clock_transition -rise $REF_CLK_RISE  [get_clocks $refrence]
set_clock_transition -fall $REF_CLK_FALL  [get_clocks $refrence]

set uart UART_CLK
set UART_CLK_PER 271.2967987

create_clock -name $uart -period $UART_CLK_PER -waveform "0 [expr $UART_CLK_PER/2]" [get_ports UART_CLK]
set_clock_uncertainty -setup $REF_CLK_SETUP_SKEW [get_clocks $uart]
set_clock_uncertainty -hold $REF_CLK_HOLD_SKEW  [get_clocks $uart]
set_clock_transition -rise $REF_CLK_RISE  [get_clocks $uart]
set_clock_transition -fall $REF_CLK_FALL  [get_clocks $uart]

#2. Generated clocks
create_generated_clock -master_clock $uart -source [get_ports UART_CLK] \
                       -name "TX_CLK" [get_port div_tx/o_div_clk] \
                       -divide_by 32
set_clock_uncertainty -setup $REF_CLK_SETUP_SKEW [get_clocks TX_CLK]
set_clock_uncertainty -hold $REF_CLK_HOLD_SKEW  [get_clocks TX_CLK]



create_generated_clock -master_clock $uart -source [get_ports UART_CLK] \
                       -name "RX_CLK" [get_port div_RX/o_div_clk] \
                       -divide_by 1
set_clock_uncertainty -setup $REF_CLK_SETUP_SKEW [get_clocks RX_CLK]
set_clock_uncertainty -hold $REF_CLK_HOLD_SKEW  [get_clocks RX_CLK]


create_generated_clock -master_clock $refrence -source [get_ports REF_CLK] \
                       -name "ALU_CLK" [get_port clock_gate_inst/GATED_CLK] \
                       -divide_by 1
set_clock_uncertainty -setup $REF_CLK_SETUP_SKEW [get_clocks ALU_CLK]
set_clock_uncertainty -hold $REF_CLK_HOLD_SKEW  [get_clocks ALU_CLK]

set_dont_touch_network [get_clocks {REF_CLK UART_CLK ALU_CLK RX_CLK TX_CLK}]
####################################################################################
           #########################################################
             #### Section 2 : Clocks Relationship ####
           #########################################################
####################################################################################


set_clock_groups -asynchronous -group [get_clocks "REF_CLK ALU_CLK"] -group [get_clocks "UART_CLK TX_CLK RX_CLK"]


####################################################################################
           #########################################################
             #### Section 3 : set input/output delay on ports ####
           #########################################################
####################################################################################
set in_uart_delay  [expr 0.2*$UART_CLK_PER]
set out_uart_delay [expr 0.2*$UART_CLK_PER]

set TX_IN_delay  [expr 0.2*$UART_CLK_PER*32]
set TX_out_delay [expr 0.2*$UART_CLK_PER*32]

#Constrain Input Paths
set_input_delay $in_uart_delay -clock RX_CLK [get_port UART_RX_IN]


#Constrain Output Paths
set_output_delay $TX_out_delay -clock TX_CLK [get_port UART_TX_O]
set_output_delay $out_uart_delay -clock TX_CLK [get_port parity_error]
set_output_delay $out_uart_delay -clock TX_CLK [get_port framing_error]


####################################################################################
           #########################################################
                  #### Section 4 : Driving cells ####
           #########################################################
####################################################################################
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_port UART_RX_IN]


####################################################################################
           #########################################################
                  #### Section 5 : Output load ####
           #########################################################
####################################################################################
set_load 0.1 [get_port UART_TX_O]
set_load 0.1 [get_port parity_error]
set_load 0.1 [get_port framing_error]

####################################################################################
           #########################################################
                 #### Section 6 : Operating Condition ####
           #########################################################
####################################################################################

# Define the Worst Library for Max(#setup) analysis
# Define the Best Library for Min(hold) analysis

set_operating_conditions -min_library "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" -min "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" -max_library "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c" -max "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c"

####################################################################################
           #########################################################
                  #### Section 7 : wireload Model ####
           #########################################################
####################################################################################


####################################################################################
           #########################################################
                  #### Section 8 : premapped cells ####
           #########################################################
####################################################################################


####################################################################################

