onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group uart /sys_top_tb/dut/uart_inst/RST
add wave -noupdate -group uart /sys_top_tb/dut/uart_inst/TX_CLK
add wave -noupdate -group uart /sys_top_tb/dut/uart_inst/RX_CLK
add wave -noupdate -group uart /sys_top_tb/dut/uart_inst/RX_IN_S
add wave -noupdate -group uart -radix binary /sys_top_tb/dut/uart_inst/RX_OUT_P
add wave -noupdate -group uart /sys_top_tb/dut/uart_inst/RX_OUT_V
add wave -noupdate -group uart /sys_top_tb/dut/uart_inst/TX_IN_P
add wave -noupdate -group uart /sys_top_tb/dut/uart_inst/TX_IN_V
add wave -noupdate -group uart /sys_top_tb/dut/uart_inst/TX_OUT_S
add wave -noupdate -group uart /sys_top_tb/dut/uart_inst/TX_OUT_V
add wave -noupdate -group uart /sys_top_tb/dut/uart_inst/Prescale
add wave -noupdate -group uart /sys_top_tb/dut/uart_inst/parity_enable
add wave -noupdate -group uart /sys_top_tb/dut/uart_inst/parity_type
add wave -noupdate -group uart /sys_top_tb/dut/uart_inst/parity_error
add wave -noupdate -group uart /sys_top_tb/dut/uart_inst/framing_error
add wave -noupdate -group div_tx /sys_top_tb/dut/div_tx/i_ref_clk
add wave -noupdate -group div_tx /sys_top_tb/dut/div_tx/i_rst_n
add wave -noupdate -group div_tx /sys_top_tb/dut/div_tx/i_clk_en
add wave -noupdate -group div_tx /sys_top_tb/dut/div_tx/i_div_ratio
add wave -noupdate -group div_tx /sys_top_tb/dut/div_tx/o_div_clk
add wave -noupdate -group div_tx /sys_top_tb/dut/div_tx/counter
add wave -noupdate -group div_tx /sys_top_tb/dut/div_tx/clk_out
add wave -noupdate -group div_tx /sys_top_tb/dut/div_tx/flag1
add wave -noupdate -group div_tx /sys_top_tb/dut/div_tx/half_div_p1
add wave -noupdate -group div_tx /sys_top_tb/dut/div_tx/half_div
add wave -noupdate -group div_tx /sys_top_tb/dut/div_tx/odd
add wave -noupdate -group div_tx /sys_top_tb/dut/div_tx/master_enable
add wave -noupdate -group div_rx /sys_top_tb/dut/div_RX/i_ref_clk
add wave -noupdate -group div_rx /sys_top_tb/dut/div_RX/i_rst_n
add wave -noupdate -group div_rx /sys_top_tb/dut/div_RX/i_clk_en
add wave -noupdate -group div_rx /sys_top_tb/dut/div_RX/i_div_ratio
add wave -noupdate -group div_rx /sys_top_tb/dut/div_RX/o_div_clk
add wave -noupdate -group div_rx /sys_top_tb/dut/div_RX/counter
add wave -noupdate -group div_rx /sys_top_tb/dut/div_RX/clk_out
add wave -noupdate -group div_rx /sys_top_tb/dut/div_RX/flag1
add wave -noupdate -group div_rx /sys_top_tb/dut/div_RX/half_div_p1
add wave -noupdate -group div_rx /sys_top_tb/dut/div_RX/half_div
add wave -noupdate -group div_rx /sys_top_tb/dut/div_RX/odd
add wave -noupdate -group div_rx /sys_top_tb/dut/div_RX/master_enable
add wave -noupdate -group div_mux /sys_top_tb/dut/div_mux/IN
add wave -noupdate -group div_mux /sys_top_tb/dut/div_mux/OUT
add wave -noupdate -group rst_sync2 /sys_top_tb/dut/rst_syn2/rst
add wave -noupdate -group rst_sync2 /sys_top_tb/dut/rst_syn2/clk
add wave -noupdate -group rst_sync2 /sys_top_tb/dut/rst_syn2/sync_rst
add wave -noupdate -group rst_sync2 /sys_top_tb/dut/rst_syn2/shift_reg
add wave -noupdate -group rst_sync1 /sys_top_tb/dut/rst_syn1/rst
add wave -noupdate -group rst_sync1 /sys_top_tb/dut/rst_syn1/clk
add wave -noupdate -group rst_sync1 /sys_top_tb/dut/rst_syn1/sync_rst
add wave -noupdate -group rst_sync1 /sys_top_tb/dut/rst_syn1/shift_reg
add wave -noupdate -group data_syn /sys_top_tb/dut/data_syn/unsync_bus
add wave -noupdate -group data_syn /sys_top_tb/dut/data_syn/bus_enable
add wave -noupdate -group data_syn /sys_top_tb/dut/data_syn/clk
add wave -noupdate -group data_syn /sys_top_tb/dut/data_syn/rst
add wave -noupdate -group data_syn /sys_top_tb/dut/data_syn/sync_bus
add wave -noupdate -group data_syn /sys_top_tb/dut/data_syn/enable_pulse
add wave -noupdate -group data_syn /sys_top_tb/dut/data_syn/shift_reg
add wave -noupdate -group data_syn /sys_top_tb/dut/data_syn/FF_flop
add wave -noupdate -group data_syn /sys_top_tb/dut/data_syn/enable_flop
add wave -noupdate -group data_syn /sys_top_tb/dut/data_syn/enable_pulse_i
add wave -noupdate -group data_syn /sys_top_tb/dut/data_syn/sync_bus_c
add wave -noupdate -expand -group fifo /sys_top_tb/dut/fifo/wclk_t
add wave -noupdate -expand -group fifo /sys_top_tb/dut/fifo/wrst_t
add wave -noupdate -expand -group fifo /sys_top_tb/dut/fifo/winc_t
add wave -noupdate -expand -group fifo /sys_top_tb/dut/fifo/rclk_t
add wave -noupdate -expand -group fifo /sys_top_tb/dut/fifo/rrst_t
add wave -noupdate -expand -group fifo /sys_top_tb/dut/fifo/rinc_t
add wave -noupdate -expand -group fifo /sys_top_tb/dut/fifo/wdata_t
add wave -noupdate -expand -group fifo /sys_top_tb/dut/fifo/full_t
add wave -noupdate -expand -group fifo /sys_top_tb/dut/fifo/empty_t
add wave -noupdate -expand -group fifo /sys_top_tb/dut/fifo/rdata_t
add wave -noupdate -expand -group fifo /sys_top_tb/dut/fifo/waddr_t
add wave -noupdate -expand -group fifo /sys_top_tb/dut/fifo/wptr_t
add wave -noupdate -expand -group fifo /sys_top_tb/dut/fifo/raddr_t
add wave -noupdate -expand -group fifo /sys_top_tb/dut/fifo/rptr_t
add wave -noupdate -expand -group fifo /sys_top_tb/dut/fifo/wq2_rptr_t
add wave -noupdate -expand -group fifo /sys_top_tb/dut/fifo/rq2_rptr_t
add wave -noupdate -expand -group fifo /sys_top_tb/dut/fifo/memory/mem
add wave -noupdate -group {reg file} /sys_top_tb/dut/register_file/rst
add wave -noupdate -group {reg file} /sys_top_tb/dut/register_file/clk
add wave -noupdate -group {reg file} /sys_top_tb/dut/register_file/RdEn
add wave -noupdate -group {reg file} /sys_top_tb/dut/register_file/WrEn
add wave -noupdate -group {reg file} /sys_top_tb/dut/register_file/address
add wave -noupdate -group {reg file} /sys_top_tb/dut/register_file/WrData
add wave -noupdate -group {reg file} /sys_top_tb/dut/register_file/RdData
add wave -noupdate -group {reg file} /sys_top_tb/dut/register_file/rd_d_vld
add wave -noupdate -group {reg file} /sys_top_tb/dut/register_file/mem
add wave -noupdate -group {reg file} /sys_top_tb/dut/register_file/REG0
add wave -noupdate -group {reg file} /sys_top_tb/dut/register_file/REG1
add wave -noupdate -group {reg file} /sys_top_tb/dut/register_file/REG2
add wave -noupdate -group {reg file} /sys_top_tb/dut/register_file/REG3
add wave -noupdate -group {reg file} /sys_top_tb/dut/register_file/I
add wave -noupdate -group {pulse gen} /sys_top_tb/dut/pulse_gen_inst/busy
add wave -noupdate -group {pulse gen} /sys_top_tb/dut/pulse_gen_inst/clk
add wave -noupdate -group {pulse gen} /sys_top_tb/dut/pulse_gen_inst/rst
add wave -noupdate -group {pulse gen} /sys_top_tb/dut/pulse_gen_inst/enable_pulse
add wave -noupdate -group {pulse gen} /sys_top_tb/dut/pulse_gen_inst/enable_flop
add wave -noupdate -group alu /sys_top_tb/dut/alu_inst/A
add wave -noupdate -group alu /sys_top_tb/dut/alu_inst/b
add wave -noupdate -group alu /sys_top_tb/dut/alu_inst/ALU_FUN
add wave -noupdate -group alu /sys_top_tb/dut/alu_inst/clk
add wave -noupdate -group alu /sys_top_tb/dut/alu_inst/rst
add wave -noupdate -group alu /sys_top_tb/dut/alu_inst/enable
add wave -noupdate -group alu /sys_top_tb/dut/alu_inst/ALU_OUT
add wave -noupdate -group alu /sys_top_tb/dut/alu_inst/valid
add wave -noupdate -group alu /sys_top_tb/dut/alu_inst/res
add wave -noupdate -group alu /sys_top_tb/dut/alu_inst/valid_comp
add wave -noupdate -group {clk gate} /sys_top_tb/dut/clock_gate_inst/CLK_EN
add wave -noupdate -group {clk gate} /sys_top_tb/dut/clock_gate_inst/CLK
add wave -noupdate -group {clk gate} /sys_top_tb/dut/clock_gate_inst/GATED_CLK
add wave -noupdate -group {clk gate} /sys_top_tb/dut/clock_gate_inst/Latch_Out
add wave -noupdate -group control /sys_top_tb/dut/control/alu_out
add wave -noupdate -group control /sys_top_tb/dut/control/out_valid
add wave -noupdate -group control /sys_top_tb/dut/control/rx_p_data
add wave -noupdate -group control /sys_top_tb/dut/control/rx_d_vld
add wave -noupdate -group control /sys_top_tb/dut/control/rd_data
add wave -noupdate -group control /sys_top_tb/dut/control/rd_d_vld
add wave -noupdate -group control /sys_top_tb/dut/control/clk
add wave -noupdate -group control /sys_top_tb/dut/control/rst
add wave -noupdate -group control /sys_top_tb/dut/control/alu_en
add wave -noupdate -group control /sys_top_tb/dut/control/alu_fun
add wave -noupdate -group control /sys_top_tb/dut/control/gate_en
add wave -noupdate -group control /sys_top_tb/dut/control/addr
add wave -noupdate -group control /sys_top_tb/dut/control/stored_address
add wave -noupdate -group control /sys_top_tb/dut/control/wr_en
add wave -noupdate -group control /sys_top_tb/dut/control/rd_en
add wave -noupdate -group control /sys_top_tb/dut/control/wr_data
add wave -noupdate -group control /sys_top_tb/dut/control/tx_p_data
add wave -noupdate -group control /sys_top_tb/dut/control/tx_d_vld
add wave -noupdate -group control /sys_top_tb/dut/control/current_state
add wave -noupdate -group control /sys_top_tb/dut/control/next_state
add wave -noupdate -group tb /sys_top_tb/TX_CLK_PERIOD
add wave -noupdate -group tb /sys_top_tb/RX_CLK_PERIOD
add wave -noupdate -group tb /sys_top_tb/REF_PERIOD
add wave -noupdate -group tb /sys_top_tb/rst_tb
add wave -noupdate -group tb /sys_top_tb/ref_clk_tb
add wave -noupdate -group tb /sys_top_tb/uart_clk_tb
add wave -noupdate -group tb /sys_top_tb/tx_clk
add wave -noupdate -group tb /sys_top_tb/Rx_in_tb
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {238027128 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {1531710148 ps} {3183272679 ps}
