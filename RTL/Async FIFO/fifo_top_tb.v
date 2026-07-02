`timescale 1ns/1ps ; 
module fifo_top_tb ();

parameter width_tb = 8;
parameter depth_tb = 8;
parameter address_width_tb = 3;

reg wclk_tb ;
reg wrst_tb ;
reg winc_tb ;
reg rclk_tb ; 
reg rrst_tb ;
reg rinc_tb ; 
reg [width_tb-1 : 0] wdata_tb ;
wire full_tb ;
wire empty_tb ;
wire [width_tb-1 : 0] rdata_tb ;


initial 
	begin
        wclk_tb = 0;
        forever #5 wclk_tb = ~wclk_tb; // 100 MHz
    end

initial 
	begin
        rclk_tb = 0;
        forever #12.5 rclk_tb = ~rclk_tb; // 40 MHz
    end
	
fifo_top #(.width(width_tb) , .depth(depth_tb) , .address_width(address_width_tb) ) DUT (
.wclk_t(wclk_tb),
.wrst_t(wrst_tb) , 
.winc_t(winc_tb) , 
.rclk_t(rclk_tb) , 
.rrst_t(rrst_tb) , 
.rinc_t(rinc_tb) , 
.wdata_t(wdata_tb) ,
.full_t(full_tb) ,
.empty_t(empty_tb) , 
.rdata_t(rdata_tb)
);


initial 
	begin
	$dumpfile("fifo_top.vcd");       
	$dumpvars; 
 
	initialize();
	reset();
	
	write_fifo('d1);
	write_fifo('d2);
	write_fifo('d3);
	write_fifo('d4);
	write_fifo('d5);
	write_fifo('d6);
	write_fifo('d7);
	write_fifo('d8);
	write_fifo('d9);
	write_fifo('d10);
	write_fifo('d11);
	write_fifo('d12);
	#1000
	write_fifo('d8);
	write_fifo('d9);
	//27
	#1000;  
	reset();
	write_fifo('d1);
	write_fifo('d2);
	write_fifo('d3);
	write_fifo('d4);
	write_fifo('d5);
	write_fifo('d6);
	write_fifo('d7);
	write_fifo('d8);
	write_fifo('d9);
	write_fifo('d10);
	write_fifo('d11);
	write_fifo('d12);
	#1000; 
    $stop;
	end
initial 
	begin
	$dumpfile("fifo_top.vcd");       
	$dumpvars; 
	#100; 
	read_fifo();
	read_fifo();
	read_fifo();
	read_fifo();
	read_fifo();
	read_fifo();
	read_fifo();
	read_fifo();
	read_fifo();
	
	read_fifo();
	read_fifo();
	#1000
	read_fifo();
	read_fifo();
	//23
	#1000
	read_fifo();
	read_fifo();
	read_fifo();
	read_fifo();
	read_fifo();
	read_fifo();
	read_fifo();
	
	
	
	#1000;  
    $stop;
	end

task initialize;
    begin
        wrst_tb = 1'b1;
        rrst_tb = 1'b1;
        winc_tb = 1'b0;
        rinc_tb = 1'b0;
        wdata_tb = 'b0;
        #20;    
    end
endtask
	
	
task reset;
    begin
        wrst_tb = 1'b0;
        rrst_tb = 1'b0; 
        #20;
        wrst_tb = 1'b1;
        rrst_tb = 1'b1;
        #20;
    end
endtask

task write_fifo(
input [width_tb-1:0] data_in
);
    begin
        @(negedge wclk_tb);
        winc_tb = 1'b1;
        wdata_tb = data_in;
        @(negedge wclk_tb);
        winc_tb = 1'b0;
            
    end
endtask

task read_fifo;
    begin
        @(negedge rclk_tb);
        rinc_tb = 1'b1;
        @(negedge rclk_tb);
        rinc_tb = 1'b0;
    end
endtask
endmodule 