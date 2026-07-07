module rst_sync#( parameter NUM_STAGES = 2)(
input rst , 
input clk , 
output reg sync_rst 
);

reg [NUM_STAGES-1 : 0] shift_reg;

always @(posedge clk or negedge rst)
	begin 
		if (!rst)
			begin 
				shift_reg<= 'b0 ;
			end
		else 
			begin 
				shift_reg <= {shift_reg[NUM_STAGES -2:0] , rst };
			end
	end
	
always @(*)
	begin 
		sync_rst = shift_reg[NUM_STAGES -1] ;
	end 


endmodule