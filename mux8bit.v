module mux8(q,select, d0,d1,d2,d3,d4,d5,d6,d7,enable);
input enable;
input wire [3:0] select;
input[7:0] d0,d1,d2,d3,d4,d5,d6,d7;
output     [7:0]q;
	
wire NOTselect0, NOTselect1,NotSelect2;
wire  [7:0] q, q0,q1, q2, q3, q4,q5,q6,q7;


not n0( NOTselect0, select[0] );
not n1( NOTselect1, select[1] );
not n2( NOTselect2, select[2] );

andmux8bit and0( q0, NOTselect0, NOTselect1,NOTselect2, d0  );
andmux8bit and1( q1,  select[0], NOTselect1,NOTselect2, d1  );
andmux8bit and2( q2, NOTselect0,  select[1],NOTselect2, d2  );
andmux8bit and3( q3,  select[0],  select[1],NOTselect2, d3  );
andmux8bit and4( q4, NOTselect0, NOTselect1,select[2], d4  );
andmux8bit and5( q5,  select[0], NOTselect1,select[2], d5  );
andmux8bit and6( q6, NOTselect0,  select[1],select[2], d6  );
andmux8bit and7( q7,  select[0],  select[1],select[2], d7  );


ormux8bit or1( q, q1, q2, q3, q4 );

endmodule

module andmux8bit(out,A,B,C,q);
input A,B,C;
input [7:0]q;
output wire [7:0] out;

and and0(out[0],A,B,C,q[0]);
and and1(out[1],A,B,C,q[1]);
and and2(out[2],A,B,C,q[2]);
and and3(out[3],A,B,C,q[3]);
and and4(out[4],A,B,C,q[4]);
and and5(out[5],A,B,C,q[5]);
and and6(out[6],A,B,C,q[6]);
and and7(out[7],A,B,C,q[7]);
endmodule

module ormux8bit(out,q0,q1,q2,q3,q4,q5,q7);
input [7:0]q0,q1,q2,q3,q4,q5,q7;
output wire [7:0] out;

or or0(out[0],q0[0],q1[0],q2[0],q3[0],q4[0],q5[0],q7[0]);
or or1(out[1],q0[1],q1[1],q2[1],q3[1],q4[1],q5[1],q7[1]);
or or2(out[2],q0[2],q1[2],q2[2],q3[2],q4[2],q5[2],q7[2]);
or or3(out[3],q0[3],q1[3],q2[3],q3[3],q4[3],q5[3],q7[3]);
or or4(out[4],q0[4],q1[4],q2[4],q3[4],q4[4],q5[4],q7[4]);
or or5(out[5],q0[5],q1[5],q2[5],q3[5],q4[5],q5[5],q7[5]);
or or6(out[6],q0[6],q1[6],q2[6],q3[6],q4[6],q5[6],q7[6]);
or or7(out[7],q0[7],q1[7],q2[7],q3[7],q4[7],q5[7],q7[7]);
endmodule
