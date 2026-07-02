vlib work 
vlog *.*v
vsim -voptargs=+acc work.rst_sync_tb
do wave.do	
run -all
