module alu(
  input unsigned [7:0] A , 
  input unsigned [7:0] b , 
  input [3:0] ALU_FUN , 
  input clk , 
  input rst ,
  input enable,
  output reg unsigned [15:0] ALU_OUT,
  output reg valid 
  );
  
  reg unsigned [15:0] res;
  reg valid_comp;
  
  
  always @ (*)
    begin
      
        res = 16'b0 ; 
		valid_comp = 1'b0 ;
if(enable)
	begin  
		valid_comp = 1'b1 ;
        case(ALU_FUN)
            
			
            4'b0000:
            begin
               res = (A + b); 
                
            end
            
            4'b0001:
            begin
              res  = A - b; //sub
              
            end
            
              
            4'b0010:
              begin
                res = (A * b) ; //multi
                
              end
              
            4'b0011:
              begin 
                res = (A / b) ; //div
                
              end
              
            4'b0100: 
              begin 
                 res = (A & b) ; //and
                 
              end
              
            4'b0101:
              begin
                res = (A | b) ;  //or
                
              end
              
            4'b0110: 
             begin 
                res = ~(A & b) ;  //nand
                
             end
             
            4'b0111:
              begin
                 res = ~(A | b) ;  //nor
                 
              end
              
            4'b1000:
              begin
                res = (A ^ b) ;   //xor
                
              end
              
            4'b1001: 
             begin
                 res = (A ~^ b) ;  //xnor
                 
             end
             
            4'b1010: 
            begin
               
              if (A == b)    //compare
                res = 16'b1 ;
              else  
                res = 16'b0 ;
            end
            
            4'b1011:      //compare
            begin
              
              if (A > b)
                res = 16'b10 ;
              else  
                res = 16'b0 ;
            end
            
            4'b1100:      //comp
            begin
             
              if (A < b)
                res = 16'b11 ;
              else  
                res = 16'b0 ;
            end
                
            4'b1101:        //shift 
              begin
                
                res = ( A >> 1 );
              end
              
              
            4'b1110:      //shift 
            begin
               res = ( A << 1 );
               
            end
            
            
            default: res = 16'b0 ;
            
          endcase
        end
 else
   begin
	 res = 1'b0 ;
   end
         
          
    end
    
    always @ (posedge clk or negedge rst)
      begin
         if (!rst)
			begin 
				ALU_OUT <= 16'b0 ; 
				valid <= 1'b0 ;
			end
		else 
			begin 
				ALU_OUT <= res ; 
				valid <= valid_comp ;
 
			end
      end
  
endmodule
 

