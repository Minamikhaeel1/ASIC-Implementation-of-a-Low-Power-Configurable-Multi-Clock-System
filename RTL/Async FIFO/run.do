vlib work 
vlog *.*v
vsim -voptargs=+acc work.fifo_top_tb
do wave.do	
run -all
