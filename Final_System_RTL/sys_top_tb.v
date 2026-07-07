`timescale 1ns/1ps ;
module sys_top_tb();

////////////////////////////////////////////////////////
/////////////////// parameters  //////////////////////// 
////////////////////////////////////////////////////////
parameter TX_CLK_PERIOD = 8680.555556; //115.2k
parameter RX_CLK_PERIOD = 135.6336806; 
parameter REF_PERIOD = 10; 


////////////////////////////////////////////////////////
/////////////////// DUT signals ////////////////////////
////////////////////////////////////////////////////////

reg rst_tb ; 
reg ref_clk_tb;
reg uart_clk_tb;
reg Rx_in_tb;
wire Tx_out_tb ;
wire par_error_tb ;
wire start_error_tb;
////////////////////////////////////////////////////////
/////////////////// CLK generation //////////////////
////////////////////////////////////////////////////////
always #10  ref_clk_tb = ~ref_clk_tb ;
always #135.6336806  uart_clk_tb = ~uart_clk_tb ;

reg tx_clk ; 
always #4340.277778  tx_clk = ~tx_clk ;
////////////////////////////////////////////////////////
/////////////////// DUT Instantation ///////////////////
////////////////////////////////////////////////////////
sys_top dut (
.rst_t(rst_tb) , 
.ref_clk_t(ref_clk_tb),
.uart_clk_t(uart_clk_tb),
.Rx_in_t(Rx_in_tb),
.Tx_out_t(Tx_out_tb) ,
.par_error(par_error_tb) ,
.start_error(start_error_tb) 
);


////////////////////////////////////////////////////////
////////////////// initial block /////////////////////// 
////////////////////////////////////////////////////////
initial 
	begin
	$dumpfile("SYS_TOP.vcd");       
	$dumpvars; 
tx_clk =1'b0;
ref_clk_tb =1'b0;
uart_clk_tb =1'b0;
rst_tb =1'b1 ; 
Rx_in_tb=1'b1 ; 
#100
rst_tb =1'b0 ; 
#100
rst_tb =1'b1 ; 
#1000

//---------write frame 1--------//											//in report
transmiting(8'hAA,1'b1,1'b0);			//write state
transmiting(8'b00000100,1'b1,1'b0);		//adress
transmiting(8'b10111110,1'b1,1'b0);		//data 
//------------------------------//


//---------write frame 2--------//
transmiting(8'hAA,1'b1,1'b0);			//write state
transmiting(8'b00000101,1'b1,1'b0);		//adress
transmiting(8'b11111111,1'b1,1'b0);		//data 
//------------------------------//


//---------read frame 2--------//
transmiting(8'hBB,1'b1,1'b0);			//read state
transmiting(8'b00000101,1'b1,1'b0);		//adress
//------------------------------//


//---------read frame 1--------//											//in report
transmiting(8'hBB,1'b1,1'b0);			//read state
transmiting(8'b00000100,1'b1,1'b0);		//adress
//------------------------------//


//---------op a and b with minus operation--------//
transmiting(8'hCC,1'b1,1'b0);			//a & b operant with function 
transmiting(8'b00000100,1'b1,1'b0);		//A
transmiting(8'b00000010,1'b1,1'b0);		//B
transmiting(8'b00000001,1'b1,1'b0);		//function
//------------------------------//


//---------op a and b with multiplication operation--------//				//in report
transmiting(8'hCC,1'b1,1'b0);			//a & b operant with function 
transmiting(8'b11001000,1'b1,1'b0);		//A
transmiting(8'b00000010,1'b1,1'b0);		//B
transmiting(8'b00000010,1'b1,1'b0);		//function code
//------------------------------//


//---------function only--------//											//in report
transmiting(8'hDD,1'b1,1'b0);			//function only state 
transmiting(8'b00000011,1'b1,1'b0);		//function code
//------------------------------//

//---------function only--------//											//in report
transmiting(8'hDD,1'b1,1'b0);			//function only state 
transmiting(8'b00000011,1'b1,1'b0);		//function code
//------------------------------//


#1000000
$finish;
	end

task transmiting(
        input [7:0] data,
        input parity_enable,
        input parity_type);
		integer i ;
        begin
			
			@(negedge tx_clk);
            Rx_in_tb = 0; // start bit
            @(negedge tx_clk);
            for (i = 0; i < 8; i = i + 1) 
				begin
					Rx_in_tb = data[i];
					@(negedge tx_clk);
				end
			if (parity_enable) 
				begin
					Rx_in_tb = (parity_type) ? ~^data : ^data; // odd/even parity
					@(negedge tx_clk);
				end
            Rx_in_tb = 1; // stop bit
		end
endtask

endmodule