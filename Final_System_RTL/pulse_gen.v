module pulse_gen(

input busy , 
input clk , 
input rst , 
output  enable_pulse
);
reg enable_flop;
/////////////////////pulse gen/////////////////////
always @(posedge clk or negedge rst)
	begin 
		if (!rst)
			begin 
				enable_flop <= 1'b0 ;
			end
		else 
			begin 
				enable_flop <=busy;
			end
	end		

assign enable_pulse	= busy && !enable_flop;



endmodule


