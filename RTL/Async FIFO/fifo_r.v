module fifo_r #(parameter add_width = 3)(
input rinc , 
input rclk , 
input rrst , 
input [add_width : 0] rq2_wptr , 
output reg rempty , 
output reg [add_width-1 : 0] raddr , 
output  [add_width : 0] rptr 
);

reg [add_width : 0] bin ; 

assign rptr = bin ^ (bin >> 1) ; //gray_out

reg [add_width : 0] bin1 ; 
wire [add_width : 0] ggray;
assign ggray = bin1 ^ (bin1 >> 1);

always @(posedge rclk or negedge rrst )
	begin 
		if(!rrst)
			begin 
				bin <= 'b0 ; 
				bin1 <= 'b1 ; 
				raddr <= 'b0 ; 
			end 
		else if (rinc )//the controll unit should not read while the empty is high 
			begin 
				raddr <= raddr +1'b1;
				bin <= bin +1'b1;
				bin1 <= bin1 +1'b1;
			end
	end

always @(*) //empty  flag 
	begin 
		if (ggray == rq2_wptr)
			begin 
				rempty = 1'b1;
			end
		else 
			begin 
				rempty = 1'b0;
			end
	end


endmodule