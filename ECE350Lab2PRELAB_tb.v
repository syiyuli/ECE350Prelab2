`timescale 100ns / 100ps
module ECE350Lab2PRELAB_tb();
	reg a, b, c;
	wire S,Cout;
	ECE350Lab2PRELAB test(.A(a),.B(b),.C(c),.S(S),.Cout(Cout));
	
	initial
	begin
		$display($time, "<< Starting Simulation >>");
		$monitor(a, b, c, S, Cout);
		a = 0;
		b = 0;
		c = 0;
		#1000
		$stop;
	end
	always
		#25 a = ~a;
	always
		#50 b = ~b;
	always
		#100 c = ~c;
endmodule
		