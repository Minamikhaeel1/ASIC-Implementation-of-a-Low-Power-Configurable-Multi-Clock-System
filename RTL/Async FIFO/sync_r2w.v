module sync_r2w #(parameter add_width = 3)(
input wclk ,wrst,
input [add_width : 0] rptr , 
output reg  [add_width : 0] wq2_rptr 
);

reg [add_width : 0] mem ; 

always @(posedge wclk or negedge wrst )
	begin 
		if (!wrst)
			begin 
				mem <= 'b0;
				wq2_rptr <= 'b0;
			end
		else
			begin 
				mem <= rptr ; 
				wq2_rptr <= mem ; 
			end
	end
	
	endmodule 