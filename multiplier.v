`timescale 1ns/1ps
module 32_bit_multiplier(input [31:0] A,input [31:0] B, output reg [31:0] out);
  reg [23:0] A_mantissa;
  reg [23:0] B_mantissa;
  reg [22:0] mantissa;
  reg A_sign,B_sign,sign;
  reg [47:0] temp_mantissa;
  reg [8:0] temp_exponent;
  reg [7:0] A_exponent,B_exponent,exponent;
  always@(*)
    begin
    temp_mantissa=A_mantissa*B_mantissa;
	 exponent=A_exponent+B_exponent-127;
	 mantissa= temp_mantissa[47] ? temp_mantissa[46:24]: temp_mantissa[45:23];
	 exponent= temp_mantissa[47]?  temp_exponent+1'b1: temp_exponent;
	 sign= A_sign ^ B_sign;
	 out={sign,exponent,mantissa};
	 end
	 end module
          		
            			
        	    		
	        


       		
	



