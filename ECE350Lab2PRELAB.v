module ECE350Lab2PRELAB(
	A, B, C, Cout, S
);

	input A, B, C;
	output Cout, S;

	wire A_not,B_not,C_not,AorB,ABnot,AB,cneg,cneg2,
			AnB,AAnb,BAnB,AxB,AnxB;

	nand notA(A_not,A,A);
	nand notB(B_not,B,B);
	nand notC(C_not,C,C);

	nand A_or_B(AorB,A_not,B_not);
	nand carryneg(cneg,C,AorB);
	
	nand AnandB(AnB,A,B);
	nand AandB(AB,AnB,AnB);
	nand carry2neg(cneg2,C_not,AB);
	
	nand carryout(Cout,cneg,cneg2);
	
	
	nand AAnandB(AAnB,A,AnB);
	nand BAnandB(BAnB,B,AnB);
	nand AxorB(AxB,AAnB,BAnB);
	nand AnxorB(AnxB,AxB,AxB);
	
	nand sumneg(sneg,AxB,C_not);
	
	nand sumneg2(sneg2,AnxB,C);
	
	nand sumOut(S,sneg,sneg2);
	
endmodule

