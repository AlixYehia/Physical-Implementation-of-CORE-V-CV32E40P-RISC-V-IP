//fpga4student.com: FPga projects, Verilog projects, VHDL projects
// Verilog code for counters
module counter(count,enable,clk,rst_n);  
  input enable,clk,rst_n;  
  output reg[3:0] count;  
  always @(posedge clk or negedge rst_n)  
  begin  
   if(~rst_n) count <= 4'b0000;  
   else if(enable)  
    count <= count + 4'b0001;  
  end  //fpga4student.com: FPga projects, Verilog projects, VHDL projects
 endmodule
