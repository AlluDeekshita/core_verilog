`timescale 1ns/1ps
 module 32_bit_multiplier_tb
  reg [31:0] A;
  reg [31:0] B;
  wire [31:0] C;
  32_bit_multiplier m1(.A(A),.B(B),.(C));
  initial
  begin 
  A[0] = 32'b0_01111111_10000000000000000000000;  // 1.5
  B[0] = 32'b1_10000000_10000000000000000000000;  // -3.0
  
 #100
  
  A[1] = 32'b1_10000000_01100000000000000000000;  //-2.75
  B[1] = 32'b0_10000000_00000000000000000000000;  // 2.0
  
// Input elements of array A and B.
  
end

initial
begin

#600
  $display(" Result : %b",result);
  //Displaying the final output of PE.
#600

$finish;
end
endmodule

