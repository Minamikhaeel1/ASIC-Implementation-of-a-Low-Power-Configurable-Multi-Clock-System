module fifo_w #(parameter add_width = 3)(
input winc , 
input wclk , 
input wrst , 
input [add_width : 0] wq2_rptr , 
output reg wfull , 
output reg [add_width-1 : 0] waddr , 
output reg [add_width : 0] wptr 
);

reg [add_width : 0] bin ; 

wire  [add_width : 0] gray ;
assign gray = bin ^ (bin >> 1) ; //gray_out
//should be comp 

always @(posedge wclk or negedge wrst )
	begin 
		if (!wrst)
			begin 
				wptr <= 'b0;
			end
		else 
			begin 
				wptr <= gray ;
			end
	end



always @(posedge wclk or negedge wrst )
	begin 
		if (!wrst)
			begin 
				waddr <= 'b0 ;
				bin <= 'b0 ;
			end
		else if (winc && !wfull)
			begin 
				waddr <= waddr +1'b1 ;  
				bin <= bin + 'b1 ;
			end
	end
	
always @(*) //full flag 
	begin 
		if ((gray[3] != wq2_rptr[3] ) && (gray[2] != wq2_rptr[2] ) && (gray[1:0] == wq2_rptr[1:0] ) )
			begin 
				wfull = 1'b1;
			end
		else 
			begin 
				wfull = 1'b0;
			end
	end
	
	
	
endmodule