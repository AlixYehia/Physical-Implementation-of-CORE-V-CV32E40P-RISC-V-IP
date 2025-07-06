module register_file 
( //fpga4student.com: FPga projects, Verilog projects, VHDL projects
input clk, 
input rst, 
// write port 
input reg_write_en, 
input [2:0] reg_write_dest, 
input [15:0] reg_write_data, 
//read port 1 
input [2:0] reg_read_addr_1, 
output [15:0] reg_read_data_1, 
//read port 2 
input [2:0] reg_read_addr_2, 
output [15:0] reg_read_data_2 
); 
reg [15:0] reg_array [7:0]; 
// write port 
//reg [2:0] i; 
always @ (posedge clk or posedge rst) begin 
if(rst) begin 
reg_array[0] <= 15'b0; 
reg_array[1] <= 15'b0; 
reg_array[2] <= 15'b0; 
reg_array[3] <= 15'b0; 
reg_array[4] <= 15'b0; 
reg_array[5] <= 15'b0; 
reg_array[6] <= 15'b0; 
reg_array[7] <= 15'b0; 
end 
else begin 
if(reg_write_en) begin 
reg_array[reg_write_dest] <= reg_write_data; 
end 
end 
end 
assign reg_read_data_1 = ( reg_read_addr_1 == 0)? 15'b0 : reg_array[reg_read_addr_1]; 
assign reg_read_data_2 = ( reg_read_addr_2 == 0)? 15'b0 : reg_array[reg_read_addr_2]; 
endmodule
