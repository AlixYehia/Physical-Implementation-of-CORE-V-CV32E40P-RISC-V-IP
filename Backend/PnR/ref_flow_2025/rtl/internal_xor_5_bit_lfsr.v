 //fpga4student.com: FPga projects, Verilog projects, VHDL projects
// Verilog code for Shift Register
`include "D_FF.v"

module internal_xor_5_bit_lfsr(input clk, rst_n,   
                 input[4:0] S_initial,  
                 output[4:0] Sout);  
 wire [4:0] s_reg;  
 wire d_xor;  
 D_FF s0(.q(s_reg[0]), .d(s_reg[4]), .rst_n(rst_n), .clk(clk),.init_value(S_initial[0]));  
 D_FF s1(.q(s_reg[1]), .d(s_reg[0]), .rst_n(rst_n), .clk(clk),.init_value(S_initial[1]));  
 xor xor_u(d_xor,s_reg[1],s_reg[4]);  
 D_FF s2(.q(s_reg[2]), .d(d_xor), .rst_n(rst_n), .clk(clk),.init_value(S_initial[2]));  
 D_FF s3(.q(s_reg[3]), .d(s_reg[2]), .rst_n(rst_n), .clk(clk),.init_value(S_initial[3]));  
 D_FF s4(.q(s_reg[4]), .d(s_reg[3]), .rst_n(rst_n), .clk(clk),.init_value(S_initial[4]));  
 assign Sout = s_reg;  
 endmodule   
