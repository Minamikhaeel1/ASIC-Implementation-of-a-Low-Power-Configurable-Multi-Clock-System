`timescale 1us/1ns;
module alu_tb (); 
  reg unsigned [15:0] A_tb ;
  reg unsigned [15:0] b_tb ; 
  reg [3:0] ALU_FUN_tb ; 
  reg clk_tb ; 
  wire unsigned [15:0] ALU_OUT_tb;
  wire carry_flag_tb ;
  wire arith_flag_tb ;
  wire logic_flag_tb ;
  wire cmp_flag_tb ;
  wire shift_flag_tb ;
  

initial 
  begin
      $dumpfile("alu.vcd");
      $dumpvars;
      clk_tb = 1'b0;
      ALU_FUN_tb = 4'b0;
      A_tb = 16'b111;
      b_tb = 16'b11;
      
    $display("case 1"); //add
      #3
      ALU_FUN_tb = 4'b0000;
      #7
      if (ALU_OUT_tb == 16'b1010)
          $display ("test 1 pass");
      else 
          $display ("test 1 fail");
      
      $display("case 2"); //sub
      #3
      ALU_FUN_tb = 4'b0001;
      #7
      if (ALU_OUT_tb == 16'b100)
          $display ("test 2 pass");
      else 
          $display ("test 2 fail");
      
      
      
      $display("case 3"); //mult
      #3
      ALU_FUN_tb = 4'b0010;
      #7
      if (ALU_OUT_tb == 16'b10101)
          $display ("test 3 pass");
      else 
          $display ("test 3 fail");
      
      
      $display("case 4"); //div
      #3
      ALU_FUN_tb = 4'b0011;
      #7
      if (ALU_OUT_tb == 16'b10)
          $display ("test 4 pass");
      else 
          $display ("test 4 fail");
      
      
      $display("case 5"); //and
      #3
      ALU_FUN_tb = 4'b0100;
      #7
      if (ALU_OUT_tb == 16'b11)
          $display ("test 5 pass");
      else 
          $display ("test 5 fail");
      
      
      $display("case 6"); //or
      #3
      ALU_FUN_tb = 4'b0101;
      #7
      if (ALU_OUT_tb == 16'b111)
          $display ("test 6 pass");
      else 
          $display ("test 6 fail");
      
      
      $display("case 7"); //nand
      #3
      ALU_FUN_tb = 4'b0110;
      #7
      if (ALU_OUT_tb == 16'b01111111111111100)
          $display ("test 7 pass");
      else 
          $display ("test 7 fail");
          
          
      $display("case 8"); //nor
      #3
      ALU_FUN_tb = 4'b0111;
      #7
      if (ALU_OUT_tb == 16'b01111111111111000)
          $display ("test 8 pass");
      else 
          $display ("test 8 fail");
          
          
      $display("case 9"); //xor
      #3
      ALU_FUN_tb = 4'b1000;
      #7
      if (ALU_OUT_tb == 16'b100)
          $display ("test 9 pass");
      else 
          $display ("test 9 fail");
          
          
          
      $display("case 10"); //xnor
      #3
      ALU_FUN_tb = 4'b1001;
      #7
      if (ALU_OUT_tb == 16'b01111111111111011)
          $display ("test 10 pass");
      else 
          $display ("test 10 fail");
          
          
      $display("case 11"); //cmopare
      #3
      ALU_FUN_tb = 4'b1010;
      #7
      if ((ALU_OUT_tb == 16'b1) & (A_tb == b_tb ) )
          $display ("test 11  A=b ");
      else 
          $display ("test 11  A~=b");
          
          
       $display("case 12"); //compare 2 
      #3
      ALU_FUN_tb = 4'b1011;
      #7
      if ((ALU_OUT_tb == 16'b10) && (A_tb > b_tb ) )
          $display ("test 12  A>b ");
      else 
          $display ("test 12  A~>b");
      
      
           
       $display("case 13"); //compare 3
      #3
      ALU_FUN_tb = 4'b1100;
      #7
      if ((ALU_OUT_tb == 16'b11) && (A_tb < b_tb ) )
          $display ("test 13  A<b ");
      else 
          $display ("test 13  A~<b");
      
      
      $display("case 14"); //shift right
      #3
      ALU_FUN_tb = 4'b1101;
      #7
      if ((ALU_OUT_tb == 16'b11) )
          $display ("test 14  pass ");
      else 
          $display ("test 14  fail");
          
          
           
      $display("case 15"); //shift left
      #3
      ALU_FUN_tb = 4'b1110;
      #7
      if ((ALU_OUT_tb == 16'b1110) )
          $display ("test 15  pass ");
      else 
          $display ("test 15  fail");
      
      $display("case 16"); //defult
      #3
      ALU_FUN_tb = 4'b1111;
      #7
      if ((ALU_OUT_tb == 16'b0) )
          $display ("test 16  pass ");
      else 
          $display ("test 16  fail");
      
      #100
      $finish ;
  end



always #5 clk_tb = ~ clk_tb ;

alu DUT (
.A(A_tb),
.b(b_tb),
.ALU_FUN(ALU_FUN_tb),
.ALU_OUT(ALU_OUT_tb),
.clk(clk_tb),
.carry_flag(carry_flag_tb),
.arith_flag(arith_flag_tb),
.logic_flag(logic_flag_tb),
.cmp_flag(cmp_flag_tb),
.shift_flag(shift_flag_tb)

);
endmodule