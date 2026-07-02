module reg_file (
input rst , 
input clk , 
input RdEn , 
input WrEn , 
input [2:0] address , 
input [15:0] WrData , 
output reg [15:0] RdData
);


reg [15:0] mem [7:0] ;

always @(posedge clk or negedge rst)
  begin
    if(!rst)                                   //reset
      begin
        mem[0] <= 16'b0;
        mem[1] <= 16'b0;
        mem[2] <= 16'b0;
        mem[3] <= 16'b0;
        mem[4] <= 16'b0;
        mem[5] <= 16'b0;
        mem[6] <= 16'b0;
        mem[7] <= 16'b0;
        RdData <= 16'b0;
      end
    else if (WrEn && !RdEn)                   //write 
      begin
        mem[address] <= WrData ; 
      end
    else if (!WrEn && RdEn)                   //read
      begin
       RdData <= mem[address];
      end
                                              // keep the values if there is no read or write enable or both high 
  end 
  
endmodule