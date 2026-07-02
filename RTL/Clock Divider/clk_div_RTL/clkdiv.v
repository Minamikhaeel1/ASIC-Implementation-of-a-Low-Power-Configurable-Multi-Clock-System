module clkdiv (
input i_ref_clk ,
input i_rst_n ,
input i_clk_en ,
input [7:0] i_div_ratio , 
output reg o_div_clk
);
reg [7:0] counter ; 

reg clk_out ; 
wire flag1 ;

wire [7:0] half_div_p1;
wire [6:0] half_div;
wire odd;
wire master_enable;


assign half_div_p1 = half_div + 1'b1; //low cycle 
assign half_div = i_div_ratio >> 1 ;  //high cycle 
assign odd = i_div_ratio[0] ;         //check odd
assign master_enable = i_clk_en && (i_div_ratio != 8'b0) && (i_div_ratio != 8'b1); 
assign flag1 = clk_out ? 1'b0 : 1'b1; 


always @(posedge i_ref_clk or negedge i_rst_n)
begin
if (!i_rst_n)
	begin 
		clk_out <= 1'b0 ; 
		counter <= 8'd1 ;
		
		
	end
else if (master_enable && !odd && counter == half_div)
	begin 
		clk_out <= !clk_out;
		counter <= 8'd1 ;
	end
else if (master_enable && odd && (counter == half_div && !flag1) ||(counter == half_div_p1 && flag1) )
	begin 
		clk_out <= !clk_out;
		counter <= 8'd1 ;
		
	end
else if (!master_enable )       // to make the counter doesnt count then master_enable is low 
	begin 
		counter <= counter ; 
	end
else 
	begin 
		counter <= counter + 1'b1 ;
	end 
	
end



always@(*)
	begin 
		if (master_enable)
			begin 
				o_div_clk = clk_out;
			end 
		else 
			begin 
				o_div_clk = i_ref_clk;
			end 
			
	end 





endmodule