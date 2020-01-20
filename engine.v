module PowerALU_Nicholas_Holleman(control,enable_comp,enable_bitwise,enable_adder,enable_mux);
/*		 OP_TRANSFER = 4'b0000,
          
		  OP_INCREASEA = 4'b0001,
          OP_ADDITION = 4'b0010,
          OP_SUBTRACTION = 4'b0011,
          OP_DECRESSA = 4'b0100,
		  
          OP_COMPLEMENT = 4'b0110,
          OP_AND = 4'b0111,
          OP_NAND = 4'b1000,
          OP_OR = 4'b1001,
          OP_NOR = 4'b1010,
          OP_XOR = 4'b1011,
          OP_XNOR = 4'b1100,
          OP_GT = 4'b1101,
          OP_LT = 4'b1110,
          OP_EQ = 4'b1111;
		  
*/		  
input [3:0]control;
output wire enable_comp,enable_bitwise,enable_mux,enable_adder;
wire [3:0]ncontrol;
wire [4:0]andwire;
wire [6:0]bitwire;
wire [1:0]compwire;

not4bit notc(ncontrol,control);

// boolen logic for adder A' (B C' D' + B' (D  + C D')) enable
and adderand0(andwire[0],control[2],ncontrol[3]);
or adderor0(andwire[1], andwire[0],control[3]);
and adderand1(andwire[2],ncontrol[1],andwire[1]);
and adderand2(andwire[3],control[1],ncontrol[2],ncontrol[3]);
or adderor1(andwire[4],andwire[2],andwire[3]);
and adderand3(enable_adder, ncontrol[1],andwire[4]);
// changes from increment/decrement/add/sub
and addsuband1(addsub, control[3],control[3]);


//bit wise enabler logic F0 = A B C' D' + (A B' C' + C (A B' + A' B)); for decode of signla
xor bitxor0(bitwire[0],control[0],ncontrol[1]);
xor bitxor1(bitwire[1],ncontrol[0],control[1]);
and bitand0(bitwire[2],bitwire[0],bitwire[1]);
and bitand1(bitwire[3],bitwire[2],control[2]);
bit bitand2(bitwire[4],control[0],ncontrol[1],ncontrol[2]);
or  bitor0(bitwire[5],bitwire[4],bitwire[3]);
and bitand3(bitwire[6],control[0],control[1],ncontrol[2],control[3]);
or bitor1(enable_bitwise,bitwire[5],bitwire[6]);
// for compator boolen logic A B (D + C D') to decode and enable
and compand0(compwire[0],control[2],ncontrol[3]);
and compor0(compwire[1],compwire[0],control[3]);
and compand1(enable_comp,compwire[1],control[0],control[1]);



endmodule


