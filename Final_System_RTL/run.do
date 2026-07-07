vlib work 
vlog *.*v
vsim -voptargs=+acc work.sys_top_tb
do wave.do	
run -all
