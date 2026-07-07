module fifo_mem #(parameter width = 8 , parameter depth = 8, parameter address_width =3)(
input [width-1 : 0] wdata ,
output [width-1 : 0] rdata ,
input wclk , wrst,
input [address_width-1 : 0] waddr , 
input [address_width-1 : 0] raddr ,
input winc , 
input wfull 
);

reg [width-1 : 0] mem [depth -1 : 0] ; 

wire wclk_en;

assign wclk_en = winc && !wfull ;

assign rdata = mem[raddr];

integer i ;

always @(posedge wclk or negedge wrst)
	begin 
		if (!wrst)
			begin 
				for (i=0; i<depth; i=i+1)
				mem[i] <= 'b0 ;

			end
		else if (wclk_en)
			begin 
				mem[waddr] <= wdata ;
			end
	end
	
endmodule