module fifo_w #(parameter add_width = 3)(
input winc , 
input wclk , 
input wrst , 
input [add_width : 0] wq2_rptr , 
output reg wfull , 
output reg [add_width-1 : 0] waddr , 
output  [add_width : 0] wptr 
);

reg [add_width : 0] bin ; 

assign wptr = bin ^ (bin >> 1) ; //gray_out


always @(posedge wclk or negedge wrst )
	begin 
		if (!wrst)
			begin 
				waddr <= 'b1 ;
				bin <= 'b1 ;
			end
		else if (winc && !wfull)
			begin 
				waddr <= waddr +1'b1 ;  
				bin <= bin + 'b1 ;
			end
	end
	
always @(*) //full flag 
	begin 
		if ((wptr[3] != wq2_rptr[3] ) && (wptr[2] != wq2_rptr[2] ) && (wptr[1:0] == wq2_rptr[1:0] ) )
			begin 
				wfull = 1'b1;
			end
		else 
			begin 
				wfull = 1'b0;
			end
	end
	
	
	
endmodule