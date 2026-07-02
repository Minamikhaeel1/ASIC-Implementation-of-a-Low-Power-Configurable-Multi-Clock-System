onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group signals /clkdiv_tb/DUT/i_ref_clk
add wave -noupdate -expand -group signals -color Gold /clkdiv_tb/DUT/o_div_clk
add wave -noupdate -expand -group signals /clkdiv_tb/DUT/i_rst_n
add wave -noupdate -expand -group signals /clkdiv_tb/DUT/i_clk_en
add wave -noupdate -expand -group signals -radix unsigned -childformat {{{/clkdiv_tb/DUT/i_div_ratio[7]} -radix unsigned} {{/clkdiv_tb/DUT/i_div_ratio[6]} -radix unsigned} {{/clkdiv_tb/DUT/i_div_ratio[5]} -radix unsigned} {{/clkdiv_tb/DUT/i_div_ratio[4]} -radix unsigned} {{/clkdiv_tb/DUT/i_div_ratio[3]} -radix unsigned} {{/clkdiv_tb/DUT/i_div_ratio[2]} -radix unsigned} {{/clkdiv_tb/DUT/i_div_ratio[1]} -radix unsigned} {{/clkdiv_tb/DUT/i_div_ratio[0]} -radix unsigned}} -subitemconfig {{/clkdiv_tb/DUT/i_div_ratio[7]} {-height 15 -radix unsigned} {/clkdiv_tb/DUT/i_div_ratio[6]} {-height 15 -radix unsigned} {/clkdiv_tb/DUT/i_div_ratio[5]} {-height 15 -radix unsigned} {/clkdiv_tb/DUT/i_div_ratio[4]} {-height 15 -radix unsigned} {/clkdiv_tb/DUT/i_div_ratio[3]} {-height 15 -radix unsigned} {/clkdiv_tb/DUT/i_div_ratio[2]} {-height 15 -radix unsigned} {/clkdiv_tb/DUT/i_div_ratio[1]} {-height 15 -radix unsigned} {/clkdiv_tb/DUT/i_div_ratio[0]} {-height 15 -radix unsigned}} /clkdiv_tb/DUT/i_div_ratio
add wave -noupdate -expand -group signals -radix unsigned -childformat {{{/clkdiv_tb/DUT/counter[7]} -radix unsigned} {{/clkdiv_tb/DUT/counter[6]} -radix unsigned} {{/clkdiv_tb/DUT/counter[5]} -radix unsigned} {{/clkdiv_tb/DUT/counter[4]} -radix unsigned} {{/clkdiv_tb/DUT/counter[3]} -radix unsigned} {{/clkdiv_tb/DUT/counter[2]} -radix unsigned} {{/clkdiv_tb/DUT/counter[1]} -radix unsigned} {{/clkdiv_tb/DUT/counter[0]} -radix unsigned}} -subitemconfig {{/clkdiv_tb/DUT/counter[7]} {-height 15 -radix unsigned} {/clkdiv_tb/DUT/counter[6]} {-height 15 -radix unsigned} {/clkdiv_tb/DUT/counter[5]} {-height 15 -radix unsigned} {/clkdiv_tb/DUT/counter[4]} {-height 15 -radix unsigned} {/clkdiv_tb/DUT/counter[3]} {-height 15 -radix unsigned} {/clkdiv_tb/DUT/counter[2]} {-height 15 -radix unsigned} {/clkdiv_tb/DUT/counter[1]} {-height 15 -radix unsigned} {/clkdiv_tb/DUT/counter[0]} {-height 15 -radix unsigned}} /clkdiv_tb/DUT/counter
add wave -noupdate -expand -group signals -radix unsigned /clkdiv_tb/DUT/half_div_p1
add wave -noupdate -expand -group signals -radix unsigned -childformat {{{/clkdiv_tb/DUT/half_div[6]} -radix unsigned} {{/clkdiv_tb/DUT/half_div[5]} -radix unsigned} {{/clkdiv_tb/DUT/half_div[4]} -radix unsigned} {{/clkdiv_tb/DUT/half_div[3]} -radix unsigned} {{/clkdiv_tb/DUT/half_div[2]} -radix unsigned} {{/clkdiv_tb/DUT/half_div[1]} -radix unsigned} {{/clkdiv_tb/DUT/half_div[0]} -radix unsigned}} -subitemconfig {{/clkdiv_tb/DUT/half_div[6]} {-height 15 -radix unsigned} {/clkdiv_tb/DUT/half_div[5]} {-height 15 -radix unsigned} {/clkdiv_tb/DUT/half_div[4]} {-height 15 -radix unsigned} {/clkdiv_tb/DUT/half_div[3]} {-height 15 -radix unsigned} {/clkdiv_tb/DUT/half_div[2]} {-height 15 -radix unsigned} {/clkdiv_tb/DUT/half_div[1]} {-height 15 -radix unsigned} {/clkdiv_tb/DUT/half_div[0]} {-height 15 -radix unsigned}} /clkdiv_tb/DUT/half_div
add wave -noupdate -expand -group signals /clkdiv_tb/DUT/odd
add wave -noupdate -expand -group signals -color {Dark Orchid} /clkdiv_tb/DUT/master_enable
add wave -noupdate -expand -group signals /clkdiv_tb/DUT/flag1
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {642444 ps} 0}
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
WaveRestoreZoom {0 ps} {1932 ns}
