onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /data_sync_tb/DUT/unsync_bus
add wave -noupdate -color {Slate Blue} /data_sync_tb/DUT/bus_enable
add wave -noupdate /data_sync_tb/DUT/clk
add wave -noupdate /data_sync_tb/DUT/rst
add wave -noupdate /data_sync_tb/DUT/sync_bus
add wave -noupdate -color Gold /data_sync_tb/DUT/enable_pulse
add wave -noupdate /data_sync_tb/DUT/shift_reg
add wave -noupdate -color Magenta /data_sync_tb/DUT/FF_flop
add wave -noupdate /data_sync_tb/DUT/enable_flop
add wave -noupdate /data_sync_tb/DUT/enable_pulse_i
add wave -noupdate /data_sync_tb/DUT/sync_bus_c
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {70667 ps} 0}
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
WaveRestoreZoom {0 ps} {327600 ps}
