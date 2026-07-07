module reg_file (
input rst , 
input clk , 
input RdEn , 
input WrEn , 
input [3:0] address , 
input [7:0] WrData , 
output reg [7:0] RdData,
output reg rd_d_vld,
output  	[7:0]  REG0,
output      [7:0]  REG1,
output      [7:0]  REG2,
output      [7:0]  REG3
);


reg [7:0] mem [15:0] ;
integer I ; 

always @(posedge clk or negedge rst)
  begin
    if(!rst)                                   //reset
      begin
        for (I=0 ; I < 16 ; I = I +1)
			begin
			if(I==2)
				mem[I] <= 'b100000_01 ;
			else if (I==3) 
				mem[I] <= 'b0010_0000 ;
			else
				mem[I] <= 'b0 ;		 
			end
        RdData <= 8'b0;
		rd_d_vld <= 1'b0;
      end
    else if (WrEn && !RdEn)                   //write 
      begin
        mem[address] <= WrData ; 
      end
    else if (!WrEn && RdEn)                   //read
      begin
       RdData <= mem[address];
	   rd_d_vld <= 1'b1 ;
      end
	 else 
		begin
			rd_d_vld <= 1'b0 ;
		end
                                              // keep the values if there is no read or write enable or both high 
  end 
  
  
assign REG0 = mem[0] ;
assign REG1 = mem[1] ;
assign REG2 = mem[2] ;
assign REG3 = mem[3] ; 

endmodule