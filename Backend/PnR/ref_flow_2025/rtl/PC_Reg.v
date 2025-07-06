//fpga4student.com: FPga projects, Verilog projects, VHDL projects
 // Verilog code for register 
`include "D_FF.v"

module PC_Reg(PCOut,PCin,reset,clk);  
 output [31:0] PCOut;  
 input [31:0] PCin;  
 input reset,clk;  
 D_FF dff0(PCOut[0],PCin[0],reset,clk);  
 D_FF dff1(PCOut[1],PCin[1],reset,clk);  
 D_FF dff2(PCOut[2],PCin[2],reset,clk);  
 D_FF dff3(PCOut[3],PCin[3],reset,clk);  
 D_FF dff4(PCOut[4],PCin[4],reset,clk);  
 D_FF dff5(PCOut[5],PCin[5],reset,clk);  
 D_FF dff6(PCOut[6],PCin[6],reset,clk);  
 D_FF dff7(PCOut[7],PCin[7],reset,clk);  
 D_FF dff8(PCOut[8],PCin[8],reset,clk);  
 D_FF dff9(PCOut[9],PCin[9],reset,clk);  
 D_FF dff10(PCOut[10],PCin[10],reset,clk);  
 D_FF dff11(PCOut[11],PCin[11],reset,clk);  
 D_FF dff12(PCOut[12],PCin[12],reset,clk);  
 D_FF dff13(PCOut[13],PCin[13],reset,clk);  
 D_FF dff14(PCOut[14],PCin[14],reset,clk);  
 D_FF dff15(PCOut[15],PCin[15],reset,clk);  
 D_FF dff16(PCOut[16],PCin[16],reset,clk);  
 D_FF dff17(PCOut[17],PCin[17],reset,clk);  
 D_FF dff18(PCOut[18],PCin[18],reset,clk);  
 D_FF dff19(PCOut[19],PCin[19],reset,clk);  
 D_FF dff20(PCOut[20],PCin[20],reset,clk);  
 D_FF dff21(PCOut[21],PCin[21],reset,clk);  
 D_FF dff22(PCOut[22],PCin[22],reset,clk);  
 D_FF dff23(PCOut[23],PCin[23],reset,clk);  
 D_FF dff24(PCOut[24],PCin[24],reset,clk);  
 D_FF dff25(PCOut[25],PCin[25],reset,clk);  
 D_FF dff26(PCOut[26],PCin[26],reset,clk);  
 D_FF dff27(PCOut[27],PCin[27],reset,clk);  
 D_FF dff28(PCOut[28],PCin[28],reset,clk);  
 D_FF dff29(PCOut[29],PCin[29],reset,clk);  
 D_FF dff30(PCOut[30],PCin[30],reset,clk);  
 D_FF dff31(PCOut[31],PCin[31],reset,clk);  
 endmodule  
