vlib work 
vlog *.*v
vsim -voptargs=+acc work.data_sync_tb
do wave.do	
run -all
