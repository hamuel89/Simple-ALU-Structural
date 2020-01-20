module equals(finaleq,ltfinal,gtfinal,A,B);
output wire finaleq,ltfinal,gtfinal;
input [7:0]A,B;
wire [7:0] notA,notB,gt,lt,equal;
wire [3:0]wires;
not8bit nota(notA,A);
not8bit notb(notB,B);

and8bit gtand(gt,A,notB);
or orgt(gtfinal,gt[0],gt[1],gt[2],gt[3],gt[4],gt[5],gt[6],gt[7]);

and8bit ltand(lt,notA,B);
or orlt(ltfinal,lt[0],lt[1],lt[2],lt[3],lt[4],lt[5],lt[6],lt[7]);

and8bit equal1(equal,notA,B);
and and1(finaleq,equal[0],equal[1],equal[2],equal[3],equal[4],equal[5],equal[6],equal[7]);



endmodule
