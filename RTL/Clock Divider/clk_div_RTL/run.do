vlib work 
vlog *.*v
vsim -voptargs=+acc work.clkdiv_tb
do wave.do	
run -all
