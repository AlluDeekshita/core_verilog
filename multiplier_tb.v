`include "fmultiplier.v"
module fmultiplier_tb;

reg [31:0] a, b;
wire [31:0] z;
reg clk, rst;

fmultiplier multiplier(clk , rst, a, b, z);

initial begin
	$dumpfile("wave.vcd");
	$dumpvars(0, fmultiplier_tb);
end

initial begin
	clk <= 0;
	rst <= 1;
	repeat(17000)
		#5 clk <= ~clk;
end

initial #13 rst <= 0;

initial begin
	#3
	repeat(500) begin
		#80
		a = $random;
		b = $random;
	end
	#80 $finish;
end


endmodule
