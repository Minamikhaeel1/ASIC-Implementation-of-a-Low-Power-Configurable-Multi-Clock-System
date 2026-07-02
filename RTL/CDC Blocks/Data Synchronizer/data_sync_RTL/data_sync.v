module data_sync#(parameter num_stages = 2 , parameter bus_width = 8 )(
input [bus_width-1 : 0] unsync_bus ,
input bus_enable , 
input clk , 
input rst , 
output reg [bus_width-1 : 0] sync_bus ,
output reg enable_pulse
);

//reg   [num_stages-1:0] sync_reg [bus_width-1:0] ;

/////////////////////multi flip flop/////////////////////
reg [num_stages-1 : 0] shift_reg;
reg FF_flop ;
reg enable_flop;

wire enable_pulse_i ;
wire [bus_width-1 : 0] sync_bus_c ; 

always @(posedge clk or negedge rst)
	begin 
		if (!rst)
			begin 
				shift_reg<= 'b0 ;
			end
		else 
			begin 
				shift_reg <= {shift_reg[num_stages - 2:0] , bus_enable };
			end
	end
	
always @(*)
	begin 
			FF_flop = shift_reg[num_stages -1] ;
	end 

/////////////////////pulse gen/////////////////////
always @(posedge clk or negedge rst)
	begin 
		if (!rst)
			begin 
				enable_flop <= 1'b0 ;
			end
		else 
			begin 
				enable_flop <=FF_flop;
			end
	end		

assign enable_pulse_i	= FF_flop && !enable_flop;

always @(posedge clk or negedge rst)
	begin 
		if (!rst)
			begin 
				enable_pulse <= 1'b0 ;
			end
		else 
			begin 
				enable_pulse <= enable_pulse_i;
			end
	end
/////////////////////mux and ff/////////////////////
assign sync_bus_c = enable_pulse_i ? unsync_bus : sync_bus;

always @(posedge clk or negedge rst)
	begin 
		if (!rst)
			begin 
				sync_bus <= 1'b0 ;
			end
		else 
			begin 
				sync_bus <= sync_bus_c;
			end
	end
endmodule


