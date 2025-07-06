//fpga4student.com: FPga projects, Verilog projects, VHDL projects
// Verilog code for Flip Flop
module D_FF (q, d, rst_n, clk,init_value);  
 output q;  //fpga4student.com: FPga projects, Verilog projects, VHDL projects
 input d, rst_n, clk,init_value;  
 reg q; // Indicate that q is stateholding  
 always @(posedge clk or negedge rst_n)  
 if (~rst_n)  
 q <= init_value;     // On reset, set to 0  
 else  
 q <= d; // Otherwise out = d   

 endmodule
