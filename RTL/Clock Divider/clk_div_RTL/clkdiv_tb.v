`timescale 1ns/1ps ;
module clkdiv_tb();



////////////////////////////////////////////////////////
/////////////////// parameters  //////////////////////// 
////////////////////////////////////////////////////////
parameter Clock_PERIOD = 5 ;

////////////////////////////////////////////////////////
/////////////////// DUT Signals //////////////////////// 
////////////////////////////////////////////////////////
reg i_ref_clk_tb ;
reg i_rst_n_tb ;
reg i_clk_en_tb ;
reg [7:0] i_div_ratio_tb ; 
wire o_div_clk_tb ;





////////////////////////////////////////////////////////
////////////////// initial block /////////////////////// 
////////////////////////////////////////////////////////
initial 
	begin
	$dumpfile("clkdiv.vcd");       
	$dumpvars; 
 
	initialize();
	reset();
	en_rat(1'b1 , 8'b1); //enable , ratio 
	#(Clock_PERIOD * 15);
	
	en_rat(1'b1 , 8'b0); //enable , ratio 
	#(Clock_PERIOD * 15);
	
	en_rat(1'b1 , 8'b10); //enable , ratio 
	#(Clock_PERIOD * 15);
	
	en_rat(1'b1 , 8'b11); //enable , ratio 
	#(Clock_PERIOD * 15);
	
	en_rat(1'b1 , 8'b100); //enable , ratio 
	#(Clock_PERIOD * 15);
	
	en_rat(1'b1 , 8'b101); //enable , ratio 
	#(Clock_PERIOD * 15);
	
	en_rat(1'b1 , 8'b110); //enable , ratio 
	#(Clock_PERIOD * 15);
	
	en_rat(1'b1 , 8'b111); //enable , ratio 
	#(Clock_PERIOD * 15);
	
	en_rat(1'b1 , 8'b101); //enable , ratio 
	#(Clock_PERIOD * 15);
	
	en_rat(1'b1 , 8'b100); //enable , ratio 
	#(Clock_PERIOD * 15);
	
	en_rat(1'b0 , 8'b111); //enable , ratio 
	#(Clock_PERIOD * 15);
	
	en_rat(1'b1 , 8'd8); //enable , ratio 
	#(Clock_PERIOD * 25);
	
	en_rat(1'b1 , 8'd9); //enable , ratio 
	#(Clock_PERIOD * 25);
	
	en_rat(1'b1 , 8'd10); //enable , ratio 
	#(Clock_PERIOD * 25);
	
	en_rat(1'b1 , 8'd11); //enable , ratio 
	#(Clock_PERIOD * 25);
	
	en_rat(1'b1 , 8'd15); //enable , ratio 
	#(Clock_PERIOD * 35);
	
	en_rat(1'b1 , 8'd35); //enable , ratio 
	#(Clock_PERIOD * 45);
	#100;  
    $finish;
	end









////////////////////////////////////////////////////////
/////////////////////// TASKS //////////////////////////
////////////////////////////////////////////////////////

/////////////// Signals Initialization //////////////////
task initialize;
        begin
            i_ref_clk_tb = 1'b0;
			i_rst_n_tb = 1'b1;
			i_clk_en_tb = 1'b0;
			i_div_ratio_tb = 1'b1; 
        end
    endtask
///////////////////////// RESET /////////////////////////

task reset;
        begin
			#(Clock_PERIOD);
            i_rst_n_tb = 1'b0; 
            #(Clock_PERIOD);
            i_rst_n_tb = 1'b1;
            #(Clock_PERIOD);
        end
    endtask
///////////////////////// enable and set ratio /////////////////////////

task en_rat (               
input enable , 
input [7:0] ratio
);
	begin 
		i_clk_en_tb = enable;
		i_div_ratio_tb = ratio;
	end
endtask



////////////////////////////////////////////////////////
////////////////// Clock Generator  ////////////////////
////////////////////////////////////////////////////////
always #2.5  i_ref_clk_tb = ~i_ref_clk_tb ;//200M


////////////////////////////////////////////////////////
/////////////////// DUT Instantation ///////////////////
////////////////////////////////////////////////////////
clkdiv DUT (
.i_ref_clk (i_ref_clk_tb),
.i_rst_n (i_rst_n_tb),
.i_clk_en (i_clk_en_tb),
.i_div_ratio (i_div_ratio_tb), 
.o_div_clk(o_div_clk_tb)
);

endmodule