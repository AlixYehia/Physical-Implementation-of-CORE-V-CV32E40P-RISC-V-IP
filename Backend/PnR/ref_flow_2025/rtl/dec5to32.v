//fpga4student.com: FPga projects, Verilog projects, VHDL projects
// Verilog code for decoder
module decoder(WriteEn,RegWrite, WriteRegister);  
 input RegWrite;  
 input [4:0] WriteRegister;  
 output [31:0] WriteEn;  
 wire [31:0] OE; // Output Enable  
 dec5to32 dec(OE,WriteRegister);  
 assign WriteEn[0]=0;  
  and #(50) gate1(WriteEn[1],OE[1],RegWrite);  
  and #(50) gate2(WriteEn[2],OE[2],RegWrite);  
  and #(50) gate3(WriteEn[3],OE[3],RegWrite);  
  and #(50) gate4(WriteEn[4],OE[4],RegWrite);  
  and #(50) gate5(WriteEn[5],OE[5],RegWrite);  
  and #(50) gate6(WriteEn[6],OE[6],RegWrite);  
  and #(50) gate7(WriteEn[7],OE[7],RegWrite);  
  and #(50) gate8(WriteEn[8],OE[8],RegWrite);  
  and #(50) gate9(WriteEn[9],OE[9],RegWrite);  
  and #(50) gate10(WriteEn[10],OE[10],RegWrite);  
  and #(50) gate11(WriteEn[11],OE[11],RegWrite);  
  and #(50) gate12(WriteEn[12],OE[12],RegWrite);  
  and #(50) gate13(WriteEn[13],OE[13],RegWrite);  
  and #(50) gate14(WriteEn[14],OE[14],RegWrite);  
  and #(50) gate15(WriteEn[15],OE[15],RegWrite);  
  and #(50) gate16(WriteEn[16],OE[16],RegWrite);  
  and #(50) gate17(WriteEn[17],OE[17],RegWrite);  
  and #(50) gate18(WriteEn[18],OE[18],RegWrite);  
  and #(50) gate19(WriteEn[19],OE[19],RegWrite);  
  and #(50) gate20(WriteEn[20],OE[20],RegWrite);  
  and #(50) gate21(WriteEn[21],OE[21],RegWrite);  
  and #(50) gate22(WriteEn[22],OE[22],RegWrite);  
  and #(50) gate23(WriteEn[23],OE[23],RegWrite);  
  and #(50) gate24(WriteEn[24],OE[24],RegWrite);  
  and #(50) gate25(WriteEn[25],OE[25],RegWrite);  
  and #(50) gate26(WriteEn[26],OE[26],RegWrite);  
  and #(50) gate27(WriteEn[27],OE[27],RegWrite);  
  and #(50) gate28(WriteEn[28],OE[28],RegWrite);  
  and #(50) gate29(WriteEn[29],OE[29],RegWrite);  
  and #(50) gate30(WriteEn[30],OE[30],RegWrite);  
  and #(50) gate31(WriteEn[31],OE[31],RegWrite);  
 endmodule  
 module andmore(g,a,b,c,d,e);  
  output g;  
  input a,b,c,d,e;  
  and #(50) and1(f1,a,b,c,d),  
       and2(g,f1,e);  
 endmodule  
 module dec5to32(Out,Adr);  
 input [4:0] Adr; // Adr=Address of register  
 output [31:0] Out;  
 not #(50) Inv4(Nota, Adr[4]);  
 not #(50) Inv3(Notb, Adr[3]);  
 not #(50) Inv2(Notc, Adr[2]);  
 not #(50) Inv1(Notd, Adr[1]);  
 not #(50) Inv0(Note, Adr[0]);  
 andmore a0(Out[0], Nota,Notb,Notc,Notd,Note); // 00000  
 andmore a1(Out[1], Nota,Notb,Notc,Notd,Adr[0]); // 00001  
 andmore a2(Out[2], Nota,Notb,Notc,Adr[1],Note); //00010  
 andmore a3(Out[3], Nota,Notb,Notc,Adr[1],Adr[0]);  
 andmore a4(Out[4], Nota,Notb,Adr[2],Notd,Note);  
 andmore a5(Out[5], Nota,Notb,Adr[2],Notd,Adr[0]);  
 andmore a6(Out[6], Nota,Notb,Adr[2],Adr[1],Note);  
 andmore a7(Out[7], Nota,Notb,Adr[2],Adr[1],Adr[0]);  
 andmore a8(Out[8],  Nota,Adr[3],Notc,Notd,Note);  
 andmore a9(Out[9],  Nota,Adr[3],Notc,Notd,Adr[0]);  
 andmore a10(Out[10], Nota,Adr[3],Notc,Adr[1],Note);  
 andmore a11(Out[11], Nota,Adr[3],Notc,Adr[1],Adr[0]);  
 andmore a12(Out[12], Nota,Adr[3],Adr[2],Notd,Note);  
 andmore a13(Out[13], Nota,Adr[3],Adr[2],Notd,Adr[0]);  
 andmore a14(Out[14], Nota,Adr[3],Adr[2],Adr[1],Note);  
 andmore a15(Out[15], Nota,Adr[3],Adr[2],Adr[1],Adr[0]);  
 andmore a16(Out[16], Adr[4],Notb,Notc,Notd,Note);  
 andmore a17(Out[17], Adr[4],Notb,Notc,Notd,Adr[0]);  
 andmore a18(Out[18], Adr[4],Notb,Notc,Adr[1],Note);  
 andmore a19(Out[19], Adr[4],Notb,Notc,Adr[1],Adr[0]);  
 andmore a20(Out[20], Adr[4],Notb,Adr[2],Notd,Note);  
 andmore a21(Out[21], Adr[4],Notb,Adr[2],Notd,Adr[0]);  
 andmore a22(Out[22], Adr[4],Notb,Adr[2],Adr[1],Note);  
 andmore a23(Out[23], Adr[4],Notb,Adr[2],Adr[1],Adr[0]);  
 andmore a24(Out[24], Adr[4],Adr[3],Notc,Notd,Note);  
 andmore a25(Out[25], Adr[4],Adr[3],Notc,Notd,Adr[0]);  
 andmore a26(Out[26], Adr[4],Adr[3],Notc,Adr[1],Note);  
 andmore a27(Out[27], Adr[4],Adr[3],Notc,Adr[1],Adr[0]);  
 andmore a28(Out[28], Adr[4],Adr[3],Adr[2],Notd,Note);  
 andmore a29(Out[29], Adr[4],Adr[3],Adr[2],Notd,Adr[0]);  
 andmore a30(Out[30], Adr[4],Adr[3],Adr[2],Adr[1],Note);  
 andmore a31(Out[31], Adr[4],Adr[3],Adr[2],Adr[1],Adr[0]); // 11111  
 endmodule
