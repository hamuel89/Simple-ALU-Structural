module bitwise_op(notA,notB,and8,nand8,or8,xor8,xnor8,nor8,A,B);

input [7:0]A,B;

output wire [7:0]and8,nand8,or8,xor8,xnor8,nor8,notA,notB;

and8bit and1(and8,A,B);
nand8bit nand1(nand8,A,B);
or8bit or1(or8,A,B);
xor8bit xor1(xor8,A,B);
xnor8bit xnor1(xnor8,A,B);
nor8bit nor1(nor8,A,B);
not8bit compA(notA,A);
not8bit compB(notB,B);
endmodule

module and8bit(out,A,B);
input [7:0]A,B;
output wire [7:0] out;

and and0(out[0],A[0],B[0]);
and and1(out[1],A[1],B[1]);
and and2(out[2],A[2],B[2]);
and and3(out[3],A[3],B[3]);
and and4(out[4],A[4],B[4]);
and and5(out[5],A[5],B[5]);
and and6(out[6],A[6],B[6]);
and and7(out[7],A[7],B[7]);
endmodule

module nand8bit(out,A,B);
input [7:0]A,B;
output wire [7:0] out;

nand nand0(out[0],A[0],B[0]);
nand nand1(out[1],A[1],B[1]);
nand nand2(out[2],A[2],B[2]);
nand nand3(out[3],A[3],B[3]);
nand nand4(out[4],A[4],B[4]);
nand nand5(out[5],A[5],B[5]);
nand nand6(out[6],A[6],B[6]);
nand nand7(out[7],A[7],B[7]);
endmodule

module or8bit(out,A,B);
input [7:0]A,B;
output wire [7:0] out;

or or0(out[0],A[0],B[0]);
or or1(out[1],A[1],B[1]);
or or2(out[2],A[2],B[2]);
or or3(out[3],A[3],B[3]);
or or4(out[4],A[4],B[4]);
or or5(out[5],A[5],B[5]);
or or6(out[6],A[6],B[6]);
or or7(out[7],A[7],B[7]);
endmodule

module xor8bit(out,A,B);
input [7:0]A,B;
output wire [7:0] out;

xor xor0(out[0],A[0],B[0]);
xor xor1(out[1],A[1],B[1]);
xor xor2(out[2],A[2],B[2]);
xor xor3(out[3],A[3],B[3]);
xor xor4(out[4],A[4],B[4]);
xor xor5(out[5],A[5],B[5]);
xor xor6(out[6],A[6],B[6]);
xor xor7(out[7],A[7],B[7]);

endmodule

module nor8bit(out,A,B);
input [7:0]A,B;
output wire [7:0] out;

nor nor0(out[0],A[0],B[0]);
nor nor1(out[1],A[1],B[1]);
nor nor2(out[2],A[2],B[2]);
nor nor3(out[3],A[3],B[3]);
nor nor4(out[4],A[4],B[4]);
nor nor5(out[5],A[5],B[5]);
nor nor6(out[6],A[6],B[6]);
nor nor7(out[7],A[7],B[7]);
endmodule

module xnor8bit(out,A,B);
input [7:0]A,B;
output wire [7:0] out;
xnor xnor0(out[0],A[0],B[0]);
xnor xnor1(out[1],A[1],B[1]);
xnor xnor2(out[2],A[2],B[2]);
xnor xnor3(out[3],A[3],B[3]);
xnor xnor4(out[4],A[4],B[4]);
xnor xnor5(out[5],A[5],B[5]);
xnor xnor6(out[6],A[6],B[6]);
xnor xnor7(out[7],A[7],B[7]);

endmodule

module not8bit(out,A);
input [7:0]A;
output wire [7:0] out;

not not0(out[0],A[0]);
not not1(out[1],A[1]);
not not2(out[2],A[2]);
not not3(out[3],A[3]);
not not4(out[4],A[4]);
not not5(out[5],A[5]);
not not6(out[6],A[6]);
not not7(out[7],A[7]);

endmodule


