module sys_crl(
input [15:0] alu_out ,
input  out_valid ,
input [7:0] rx_p_data , 
input rx_d_vld , 
input [7:0] rd_data , 
input rd_d_vld , 
input clk ,
input rst ,
input fifo_full,

output reg alu_en , 
output reg [3:0] alu_fun , 
output reg gate_en , 
output reg [3:0] addr, 
output reg wr_en ,
output reg rd_en ,
output reg [7:0] wr_data,
output reg [7:0] tx_p_data , //fifo
output reg  tx_d_vld 
);
reg [15:0] stored_alu;

reg [3:0] stored_address ;

localparam          idle  = 4'b000 ,
                    wadd = 4'b001 ,                    
                    w_d = 4'b011 ,
					radd = 4'b010,
					r_done = 4'b110,
					fifo = 4'b111,
					op_a = 4'b101,
					op_b = 4'b100,
					fun = 4'b1100,
					fun_v = 4'b1101,
					frame1 = 4'b1111,
					frame2 = 4'b1110;
					
					

reg      [3:0]      current_state ,
                    next_state ;
					
					
always @ (posedge clk or negedge rst )
begin
	if (!rst)
		begin 
			current_state <= idle ;
		end
	else 
		begin 
			current_state <= next_state;
		end
end

always @(posedge clk or negedge rst)
 begin
  if(!rst)
    addr <= 4'b0;
  else 
   case(current_state)
    wadd: addr <= stored_address;  
	radd: addr <= stored_address; 
	op_a: addr <= stored_address;  
	idle: addr <= stored_address; 

 
	
   endcase
  
 end
 
always@(*)
begin
	case (current_state)
		
		idle : 
			begin 
				if (rx_d_vld)
					begin 
						case (rx_p_data)
						8'hAA : next_state = wadd; 
						8'hBB : next_state = radd; 
						8'hCC : next_state = op_a; 
						8'hDD : next_state = fun; 
						default : next_state = idle; 
						endcase
					end
				else 
					begin 
						next_state = idle;
					end
			end
			
		wadd : 
			begin 
				if (rx_d_vld)
					begin 
						next_state = w_d;
					end
				else 
					begin 
						next_state = wadd;
					end
			end
			
		w_d : 
			begin 
				if (rx_d_vld)
					begin 
						next_state = idle;
					end
				else 
					begin 
						next_state = w_d;
					end
			end
			
		radd : 
			begin 
				if (rx_d_vld)
					begin 
						next_state = r_done;
					end
				else 
					begin 
						next_state = radd;
					end
			end
			
		r_done : //back
			begin 
				
				if (rd_d_vld)
					begin 
						next_state = fifo;
					end
				else 
					begin 
						next_state = r_done;
					end
					
			end
		fifo :
			begin 
				if (!fifo_full)
					begin 
						next_state = idle;
					end
				else 
					begin 
						next_state = fifo;
					end
				
					
			end
			
			
		op_a : 
			begin 
				if (rx_d_vld)
					begin 
						next_state = op_b;
					end
				else 
					begin 
						next_state = op_a;
					end
			end
		
		op_b : 
			begin 
				if (rx_d_vld)
					begin 
						next_state = fun;
					end
				else 
					begin 
						next_state = op_b;
					end
			end
		
		fun : 
			begin 
				if (rx_d_vld)
					begin 
						next_state = fun_v;
					end
				else 
					begin 
						next_state = fun;
					end
			end
			
		fun_v : 
			begin 
				if (out_valid)
					begin 
						next_state = frame1;
					end
				else 
					begin 
						next_state = fun_v;
					end
			end
			
		frame1 : 
			begin 
				if (!fifo_full)
					begin 
						next_state = frame2;
					end
				else 
					begin 
						next_state = frame1;
					end
			end
			
		frame2 : 
			begin 
				if (!fifo_full)
					begin 
						next_state = idle;
					end
				else 
					begin 
						next_state = frame2;
					end
			end
		default :
			begin 
				next_state = idle;
			end
			
	endcase
end 	

always @(posedge clk or negedge rst) begin
    if (!rst) begin
        stored_alu <= 16'b0;
			end 
	else if (current_state == fun_v && out_valid) 
	begin
        stored_alu <= alu_out;
    end
end

always @(*)
begin 
alu_en = 1'b0 ; 
alu_fun= 3'b0 ; 
gate_en = 1'b0 ;
stored_address =4'd0;
wr_en =1'b0 ;
rd_en =1'b0 ;
wr_data = 8'b0 ;
tx_p_data = 8'b0 ; //fifo
tx_d_vld = 1'b0 ;  //fifo




	case (current_state)
	idle  : 
			begin 
				stored_address = 4'b0 ; 
			end
	
	wadd : 
			begin 
				if (rx_d_vld) 
					begin 
						stored_address = rx_p_data ; 
					end 
				
			end
			
	w_d : 
			begin 
				if (rx_d_vld) 
					begin 
						wr_en =1'b1 ; 
						wr_data = rx_p_data ; 
					end 
				
			end
			
	radd : 
			begin 
				if (rx_d_vld) 
					begin 
						stored_address = rx_p_data[3:0] ;
						
						
					end 
			end	
			
	r_done : 
			begin
				rd_en = 1'b1;
				
			end
	fifo : 
			begin 
				tx_p_data = rd_data;//fifo
				tx_d_vld =1'b1;  //fifo

				
			end		
	
	op_a : 
			begin 
				if (rx_d_vld) 
					begin 
						stored_address = 4'b0001 ; 
						wr_en =1'b1 ; 
						wr_data = rx_p_data ;  
					end 
				
				
			end
			
	op_b : 
			begin 
				if (rx_d_vld) 
					begin 
						
						wr_en =1'b1 ; 
						wr_data = rx_p_data ;  
					end 
				
				
			end
			
	fun :
			begin 
				gate_en = 1'b1;
				if (rx_d_vld) 
					begin 
						alu_en = 1'b1;
						alu_fun = rx_p_data[3:0] ;
					end 
	
			end
			
	fun_v :
			begin 
				if (out_valid) 
					begin 
						alu_en = 1'b0;
						gate_en = 1'b0;
						
					end 
				else 
					begin 
						alu_en = 1'b1;
						gate_en = 1'b1;
					end
				
	
			end
	
	frame1:
			begin 
				if (!fifo_full) 
					begin 
						tx_p_data = stored_alu[7:0];//fifo
						tx_d_vld =1'b1;  //fifo
					end 
	
			end
			
	frame2:
			begin 
				if (!fifo_full) 
					begin 
						tx_p_data = stored_alu[15:8];//fifo
						tx_d_vld =1'b1;  //fifo
					end 
	
			end
	
			
			
	default : 
			begin 
				alu_en = 1'b0 ; 
				alu_fun= 3'b0 ; 
				gate_en = 1'b0 ;
				stored_address =4'd0;
				wr_en =1'b0 ;
				rd_en =1'b0 ;
				wr_data = 8'b0 ;
				tx_p_data = 8'b0 ; //fifo
				tx_d_vld = 1'b0 ;  //fifo

			end
		
	
	
	endcase
end



endmodule
