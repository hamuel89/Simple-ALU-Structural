module latch(q, qn,G,D,rst);
output wire q,qn;
input G,D,rst;
wire dn,d1,dn1;
wire [5:0]wires;

not not0(dn,D);
nand nand0(wires[0],D,G);
not not1(wires[2],wires[0]);
nand nand1(q,wires[2],qn);

nand nand2(wires[1],dn,G);
not not2(wires[3],wires[1]);
nor nor0(wires[4],rst,wires[3]);
nand nand3(qn,wires[4],q);

endmodule



module latch8bit(q,qn,G,D,rst);
output wire [7:0]q,qn;
input [7:0] D;
input  G;



latch bit0(q[1], nq[1],G,D[1],rst);
latch bit0(q[0], nq[0],G,D[0],rst);
latch bit0(q[2], nq[2],G,D[2],rst);
latch bit0(q[3], nq[3],G,D[3],rst);
latch bit0(q[4], nq[4],G,D[4],rst);
latch bit0(q[5], nq[5],G,D[5],rst);
latch bit0(q[6], nq[6],G,D[6],rst);
latch bit0(q[7], nq[7],G,D[7],rst);

endmodule


module accumolator(dataout,datain,enable,reset);

output wire [7:0] dataout;
input [7:0] datain;
input enable,reset;

latch8bit memory8bits(dataout,datain,enable,reset);
endmodule