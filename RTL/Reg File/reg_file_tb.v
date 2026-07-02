`timescale 1us/1ns;
module reg_file_tb();
  reg rst_tb ;
  reg clk_tb ; 
  reg RdEn_tb;
  reg WrEn_tb ; 
  reg [2:0] address_tb ; 
  reg [15:0] WrData_tb;
  wire [15:0] RdData_tb ; 
  
  
  
  initial 
    begin
      $dumpfile("reg_file.vcd"); 
      $dumpvars;
      rst_tb = 1'b0 ;       //active low reset
      clk_tb = 1'b0 ;
      RdEn_tb = 1'b0 ;
      WrEn_tb = 1'b0 ;
      address_tb = 3'b000;
      WrData_tb = 16'b0;
      
      #10
      rst_tb = 1'b1 ;      //release the reset
      
      #3 
       WrEn_tb = 1'b1 ;
       address_tb = 3'b001;      //write in register 1 
       WrData_tb = 16'b111;
      #7
                                  //mem[1]=16'b111 done with posedge
       WrEn_tb = 1'b0 ;
       
            
      #3
       WrEn_tb = 1'b1 ;
       address_tb = 3'b011;      //write in register 3
       WrData_tb = 16'b11;
      #7
       	                          //mem[3]=16'b11 done with posedge
	     WrEn_tb = 1'b0 ;               
            	                   
            	                   
       
      #3 
      RdEn_tb = 1'b1 ;
      address_tb = 3'b001; 
      #7 
        if (RdData_tb!=16'b111)
          $display("read reg 1 fail");
        else 
          $display("read reg 1 success");
                                          //read from reg 1
        
        
      
      #3
      RdEn_tb = 1'b1 ;
      address_tb = 3'b011;
      #7
       if (RdData_tb!=16'b11)
          $display("read reg 3 fail");
       else 
          $display("read reg 3 success");
                                          //read from reg 3
      
      $finish;
      
    end 
    
  
  
  
  
  
  
  always #5 clk_tb = ~clk_tb;
  
  
  reg_file DUT (
  .rst(rst_tb),
  .clk(clk_tb),
  .RdEn(RdEn_tb),
  .WrEn(WrEn_tb),
  .address(address_tb),
  .WrData(WrData_tb),
  .RdData(RdData_tb)
  );


endmodule