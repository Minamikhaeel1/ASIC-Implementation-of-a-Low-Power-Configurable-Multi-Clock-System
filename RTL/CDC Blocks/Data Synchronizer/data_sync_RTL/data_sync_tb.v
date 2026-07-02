`timescale 1ns/1ps ;
module data_sync_tb ();

////////////////////////////////////////////////////////
/////////////////// parameters  //////////////////////// 
////////////////////////////////////////////////////////
parameter num_stages_tb = 2 ;
parameter bus_width_tb = 8 ;
parameter clock = 5 ; 
////////////////////////////////////////////////////////
/////////////////// DUT signals ////////////////////////
////////////////////////////////////////////////////////
reg [bus_width_tb-1 : 0] unsync_bus_tb;
reg bus_enable_tb ;
reg clk_tb ; 
reg rst_tb ; 
wire [bus_width_tb-1 : 0] sync_bus_tb ; 
wire enable_pulse_tb;



////////////////////////////////////////////////////////
////////////////// initial block /////////////////////// 
////////////////////////////////////////////////////////
initial
begin
	$dumpfile("data_sync.vcd");       
	$dumpvars; 
 
clk_tb = 1'b0 ;
rst_tb = 1'b1 ;
unsync_bus_tb = 'b0;
bus_enable_tb = 1'b0;
#12
rst_tb = 1'b0 ;    
#3
rst_tb = 1'b1 ; 

@(negedge clk_tb)
unsync_bus_tb = 'b10101010;
bus_enable_tb =1'b1 ;
#(2*clock);
bus_enable_tb =1'b0 ;
#(10*clock);

@(negedge clk_tb)
unsync_bus_tb = 'b11111111;
bus_enable_tb =1'b1 ;
#(2*clock);
bus_enable_tb =1'b0 ;
#(10*clock);

@(negedge clk_tb)
unsync_bus_tb = 'b11011101;
bus_enable_tb =1'b1 ;
#(2*clock);
bus_enable_tb =1'b0 ;
#(10*clock);


#100 ;
$stop ;
    
end  

////////////////////////////////////////////////////////
/////////////////// RX_CLK generation //////////////////
////////////////////////////////////////////////////////

always #5 clk_tb = ! clk_tb ;

////////////////////////////////////////////////////////
/////////////////// DUT Instantation ///////////////////
////////////////////////////////////////////////////////
					 
data_sync #(.num_stages(num_stages_tb) , .bus_width(bus_width_tb))  DUT
(
.clk(clk_tb),
.rst(rst_tb),
.unsync_bus(unsync_bus_tb),
.bus_enable(bus_enable_tb),
.sync_bus(sync_bus_tb),
.enable_pulse(enable_pulse_tb)
);

endmodule
