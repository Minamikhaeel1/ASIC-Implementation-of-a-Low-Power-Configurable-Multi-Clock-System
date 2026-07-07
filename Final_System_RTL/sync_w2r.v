module sync_w2r #(parameter add_width = 3)(
input rclk ,rrst,
input [add_width : 0] wptr , 
output reg  [add_width : 0] rq2_rptr 
);

reg [add_width : 0] mem ; 

always @(posedge rclk or negedge rrst )
	begin 
		if (!rrst)
			begin 
				mem <= 'b0;
				rq2_rptr <= 'b0;
			end
		else
			begin 
				mem <= wptr ; 
				rq2_rptr <= mem ; 
			end
	end
	
	endmodule 
	
	/*
/////////////////////////////////////////////////////////////
///////////////////// bit synchronizer //////////////////////
/////////////////////////////////////////////////////////////

module BIT_SYNC # ( 
   parameter NUM_STAGES = 2 ,
	 parameter BUS_WIDTH = 4 
)(
input    wire                      rclk,
input    wire                      rrst,
input    wire    [BUS_WIDTH-1:0]   wptr,
output   reg     [BUS_WIDTH-1:0]   rq2_rptr
);


reg   [NUM_STAGES-1:0] sync_reg [BUS_WIDTH-1:0] ;

integer  I ;
					 
//----------------- Multi flop synchronizer --------------

always @(posedge rclk or negedge rrst)
 begin
  if(!rrst)      // active low
   begin
     for (I=0; I<BUS_WIDTH; I=I+1)
      sync_reg[I] <= 'b0 ;
   end
  else
   begin
    for (I=0; I<BUS_WIDTH; I=I+1)
     sync_reg[I] <= {sync_reg[I][NUM_STAGES-2:0],wptr[I]};   // {SYNC,sync_reg} <= {sync_reg[NUM_STAGES-1:0],ASYNC};
   end  
 end


always @(*)
 begin
  for (I=0; I<BUS_WIDTH; I=I+1)
    rq2_rptr[I] = sync_reg[I][NUM_STAGES-1] ; 
 end  

endmodule*/