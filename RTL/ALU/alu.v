module alu(
  input unsigned [15:0] A , 
  input unsigned [15:0] b , 
  input [3:0] ALU_FUN , 
  input clk , 
  output reg shift_flag , 
  output reg cmp_flag , 
  output reg logic_flag , 
  output reg arith_flag , 
  output reg carry_flag , 
  output reg unsigned [15:0] ALU_OUT
  );
  
  reg unsigned [15:0] res;
  reg carry ; 
  reg arth ; 
  reg logic ; 
  reg cmp ; 
  reg shift ;
  
  
  always @ (*)
    begin
      
         res = 16'b0 ; 
         shift = 1'b0 ;
         cmp = 1'b0 ;
         logic  = 1'b0 ;
         arth  = 1'b0 ;
         carry  = 1'b0 ;
      
        case(ALU_FUN)
          
            4'b0000:
            begin
               {carry, res} = (A + b); 
               arth  = 1'b1 ; 
            end
            
            4'b0001:
            begin
              {carry, res} = {1'b0 , A} - b; //sub
              arth  = 1'b1 ;
            end
            
              
            4'b0010:
              begin
                res = (A * b) ; //multi
                arth  = 1'b1 ;
              end
              
            4'b0011:
              begin 
                res = (A / b) ; //div
                arth  = 1'b1 ;
              end
              
            4'b0100: 
              begin 
                 res = (A & b) ; //and
                 logic  = 1'b1 ;
              end
              
            4'b0101:
              begin
                res = (A | b) ;  //or
                logic  = 1'b1 ;
              end
              
            4'b0110: 
             begin 
                res = ~(A & b) ;  //nand
                logic  = 1'b1 ;
             end
             
            4'b0111:
              begin
                 res = ~(A | b) ;  //nor
                 logic  = 1'b1 ;
              end
              
            4'b1000:
              begin
                res = (A ^ b) ;   //xor
                logic  = 1'b1 ;
              end
              
            4'b1001: 
             begin
                 res = (A ~^ b) ;  //xnor
                 logic  = 1'b1 ;
             end
             
            4'b1010: 
            begin
              cmp = 1'b1 ; 
              if (A == b)    //compare
                res = 16'b1 ;
              else  
                res = 16'b0 ;
            end
            
            4'b1011:      //compare
            begin
              cmp = 1'b1 ;
              if (A > b)
                res = 16'b10 ;
              else  
                res = 16'b0 ;
            end
            
            4'b1100:      //comp
            begin
             cmp = 1'b1 ;
              if (A < b)
                res = 16'b11 ;
              else  
                res = 16'b0 ;
            end
                
            4'b1101:        //shift 
              begin
                shift = 1'b1 ;
                res = ( A >> 1 );
              end
              
              
            4'b1110:      //shift 
            begin
               res = ( A << 1 );
               shift = 1'b1 ;
            end
            
            
            default: res = 16'b0 ;
            
          endcase
          
         
          
    end
    
    always @ (posedge clk)
      begin
         
          ALU_OUT <= res ; 
          shift_flag <= shift ; 
          cmp_flag <= cmp ; 
          logic_flag <= logic ;
          arith_flag <= arth ;
          carry_flag <= carry ; 
      end
  
endmodule
 

