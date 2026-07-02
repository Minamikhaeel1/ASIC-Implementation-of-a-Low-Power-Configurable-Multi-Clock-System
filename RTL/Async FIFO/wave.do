onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group dut /fifo_top_tb/DUT/wclk_t
add wave -noupdate -group dut /fifo_top_tb/DUT/rclk_t
add wave -noupdate -group dut /fifo_top_tb/DUT/wrst_t
add wave -noupdate -group dut /fifo_top_tb/DUT/rrst_t
add wave -noupdate -group dut /fifo_top_tb/DUT/winc_t
add wave -noupdate -group dut /fifo_top_tb/DUT/rinc_t
add wave -noupdate -group dut /fifo_top_tb/DUT/wdata_t
add wave -noupdate -group dut /fifo_top_tb/DUT/full_t
add wave -noupdate -group dut /fifo_top_tb/DUT/empty_t
add wave -noupdate -group dut /fifo_top_tb/DUT/rdata_t
add wave -noupdate -group dut /fifo_top_tb/DUT/waddr_t
add wave -noupdate -group dut /fifo_top_tb/DUT/wptr_t
add wave -noupdate -group dut /fifo_top_tb/DUT/raddr_t
add wave -noupdate -group dut /fifo_top_tb/DUT/rptr_t
add wave -noupdate -group dut /fifo_top_tb/DUT/wq2_rptr_t
add wave -noupdate -group dut /fifo_top_tb/DUT/rq2_rptr_t
add wave -noupdate -expand -group memory -radix unsigned /fifo_top_tb/DUT/memory/wdata
add wave -noupdate -expand -group memory -radix unsigned /fifo_top_tb/DUT/memory/rdata
add wave -noupdate -expand -group memory /fifo_top_tb/DUT/memory/wclk
add wave -noupdate -expand -group memory /fifo_top_tb/DUT/memory/wrst
add wave -noupdate -expand -group memory /fifo_top_tb/DUT/memory/waddr
add wave -noupdate -expand -group memory /fifo_top_tb/DUT/memory/raddr
add wave -noupdate -expand -group memory /fifo_top_tb/DUT/memory/winc
add wave -noupdate -expand -group memory /fifo_top_tb/DUT/memory/wfull
add wave -noupdate -expand -group memory /fifo_top_tb/DUT/memory/wclk_en
add wave -noupdate -expand -group memory /fifo_top_tb/DUT/memory/i
add wave -noupdate -group write_domin /fifo_top_tb/DUT/write_domain/winc
add wave -noupdate -group write_domin /fifo_top_tb/DUT/write_domain/wclk
add wave -noupdate -group write_domin /fifo_top_tb/DUT/write_domain/wrst
add wave -noupdate -group write_domin /fifo_top_tb/DUT/write_domain/wq2_rptr
add wave -noupdate -group write_domin /fifo_top_tb/DUT/write_domain/wfull
add wave -noupdate -group write_domin /fifo_top_tb/DUT/write_domain/waddr
add wave -noupdate -group write_domin /fifo_top_tb/DUT/write_domain/wptr
add wave -noupdate -group write_domin /fifo_top_tb/DUT/write_domain/bin
add wave -noupdate -group read_domain /fifo_top_tb/DUT/read_domain/rinc
add wave -noupdate -group read_domain /fifo_top_tb/DUT/read_domain/rclk
add wave -noupdate -group read_domain /fifo_top_tb/DUT/read_domain/rrst
add wave -noupdate -group read_domain /fifo_top_tb/DUT/read_domain/rq2_wptr
add wave -noupdate -group read_domain /fifo_top_tb/DUT/read_domain/rempty
add wave -noupdate -group read_domain /fifo_top_tb/DUT/read_domain/raddr
add wave -noupdate -group read_domain /fifo_top_tb/DUT/read_domain/rptr
add wave -noupdate -group read_domain /fifo_top_tb/DUT/read_domain/bin
add wave -noupdate -group r2w /fifo_top_tb/DUT/r2w/wclk
add wave -noupdate -group r2w /fifo_top_tb/DUT/r2w/wrst
add wave -noupdate -group r2w /fifo_top_tb/DUT/r2w/rptr
add wave -noupdate -group r2w /fifo_top_tb/DUT/r2w/wq2_rptr
add wave -noupdate -group r2w /fifo_top_tb/DUT/r2w/mem
add wave -noupdate -group w2r /fifo_top_tb/DUT/w2r/rclk
add wave -noupdate -group w2r /fifo_top_tb/DUT/w2r/rrst
add wave -noupdate -group w2r /fifo_top_tb/DUT/w2r/wptr
add wave -noupdate -group w2r /fifo_top_tb/DUT/w2r/rq2_rptr
add wave -noupdate -group w2r /fifo_top_tb/DUT/w2r/mem
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {452219 ps} 0}
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
WaveRestoreZoom {0 ps} {521146 ps}
