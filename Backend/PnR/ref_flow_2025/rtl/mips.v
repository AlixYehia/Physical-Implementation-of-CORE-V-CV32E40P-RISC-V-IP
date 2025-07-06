`include "mips_16.v"
`include "IO_pads.v"
module mips( inout  vdd, vddio, gnd, vss,
             input  clk,reset,  
             output [15:0] pc_out, alu_result
             //,reg3,reg4  
           );  

wire [15:0] pc_out, alu_result, pc_out_m, alu_result_m;
wire clk, reset, logic0, clk_m, reset_m, logic1, vdd, vddio, vss, gnd;
   
// Core Instantiation
mips_16 mips_core(.clk(clk_m), .reset(reset_m), .pc_out(pc_out_m), .alu_result(alu_result_m));

// Input PADs Instantiation
XMHA in1(.SMT(logic0), .PU(logic0), .PD(logic0), .O(clk_m), .I(clk));
XMHA in2(.SMT(logic0), .PU(logic0), .PD(logic0), .O(reset_m), .I(reset));

// Output PADs Instantiation
YA28SHA out1(.SR(logic0), .E(logic1), .E2(logic0), .E4(logic0), .I(pc_out_m[0]), .O(pc_out[0]));
YA28SHA out2(.SR(logic0), .E(logic1), .E2(logic0), .E4(logic0), .I(pc_out_m[1]), .O(pc_out[1]));
YA28SHA out3(.SR(logic0), .E(logic1), .E2(logic0), .E4(logic0), .I(pc_out_m[2]), .O(pc_out[2]));
YA28SHA out4(.SR(logic0), .E(logic1), .E2(logic0), .E4(logic0), .I(pc_out_m[3]), .O(pc_out[3]));
YA28SHA out5(.SR(logic0), .E(logic1), .E2(logic0), .E4(logic0), .I(pc_out_m[4]), .O(pc_out[4]));
YA28SHA out6(.SR(logic0), .E(logic1), .E2(logic0), .E4(logic0), .I(pc_out_m[5]), .O(pc_out[5]));
YA28SHA out7(.SR(logic0), .E(logic1), .E2(logic0), .E4(logic0), .I(pc_out_m[6]), .O(pc_out[6]));
YA28SHA out8(.SR(logic0), .E(logic1), .E2(logic0), .E4(logic0), .I(pc_out_m[7]), .O(pc_out[7]));
YA28SHA out9(.SR(logic0), .E(logic1), .E2(logic0), .E4(logic0), .I(pc_out_m[8]), .O(pc_out[8]));
YA28SHA out10(.SR(logic0), .E(logic1), .E2(logic0), .E4(logic0), .I(pc_out_m[9]), .O(pc_out[9]));
YA28SHA out11(.SR(logic0), .E(logic1), .E2(logic0), .E4(logic0), .I(pc_out_m[10]), .O(pc_out[10]));
YA28SHA out12(.SR(logic0), .E(logic1), .E2(logic0), .E4(logic0), .I(pc_out_m[11]), .O(pc_out[11]));
YA28SHA out13(.SR(logic0), .E(logic1), .E2(logic0), .E4(logic0), .I(pc_out_m[12]), .O(pc_out[12]));
YA28SHA out14(.SR(logic0), .E(logic1), .E2(logic0), .E4(logic0), .I(pc_out_m[13]), .O(pc_out[13]));
YA28SHA out15(.SR(logic0), .E(logic1), .E2(logic0), .E4(logic0), .I(pc_out_m[14]), .O(pc_out[14]));
YA28SHA out16(.SR(logic0), .E(logic1), .E2(logic0), .E4(logic0), .I(pc_out_m[15]), .O(pc_out[15]));
YA28SHA out17(.SR(logic0), .E(logic1), .E2(logic0), .E4(logic0), .I(alu_result_m[0]), .O(alu_result[0]));
YA28SHA out18(.SR(logic0), .E(logic1), .E2(logic0), .E4(logic0), .I(alu_result_m[1]), .O(alu_result[1]));
YA28SHA out19(.SR(logic0), .E(logic1), .E2(logic0), .E4(logic0), .I(alu_result_m[2]), .O(alu_result[2]));
YA28SHA out20(.SR(logic0), .E(logic1), .E2(logic0), .E4(logic0), .I(alu_result_m[3]), .O(alu_result[3]));
YA28SHA out21(.SR(logic0), .E(logic1), .E2(logic0), .E4(logic0), .I(alu_result_m[4]), .O(alu_result[4]));
YA28SHA out22(.SR(logic0), .E(logic1), .E2(logic0), .E4(logic0), .I(alu_result_m[5]), .O(alu_result[5]));
YA28SHA out23(.SR(logic0), .E(logic1), .E2(logic0), .E4(logic0), .I(alu_result_m[6]), .O(alu_result[6]));
YA28SHA out24(.SR(logic0), .E(logic1), .E2(logic0), .E4(logic0), .I(alu_result_m[7]), .O(alu_result[7]));
YA28SHA out25(.SR(logic0), .E(logic1), .E2(logic0), .E4(logic0), .I(alu_result_m[8]), .O(alu_result[8]));
YA28SHA out26(.SR(logic0), .E(logic1), .E2(logic0), .E4(logic0), .I(alu_result_m[9]), .O(alu_result[9]));
YA28SHA out27(.SR(logic0), .E(logic1), .E2(logic0), .E4(logic0), .I(alu_result_m[10]), .O(alu_result[10]));
YA28SHA out28(.SR(logic0), .E(logic1), .E2(logic0), .E4(logic0), .I(alu_result_m[11]), .O(alu_result[11]));
YA28SHA out29(.SR(logic0), .E(logic1), .E2(logic0), .E4(logic0), .I(alu_result_m[12]), .O(alu_result[12]));
YA28SHA out30(.SR(logic0), .E(logic1), .E2(logic0), .E4(logic0), .I(alu_result_m[13]), .O(alu_result[13]));
YA28SHA out31(.SR(logic0), .E(logic1), .E2(logic0), .E4(logic0), .I(alu_result_m[14]), .O(alu_result[14]));
YA28SHA out32(.SR(logic0), .E(logic1), .E2(logic0), .E4(logic0), .I(alu_result_m[15]), .O(alu_result[15]));

// Power PADs Instantiation
//// Low Supply
VCCKHA pwr_1(.VCC(vdd));
VCCKHA pwr_2(.VCC(vdd));
VCCKHA pwr_3(.VCC(vdd));
VCCKHA pwr_4(.VCC(vdd));

GNDKHA gnd_1(.GND(gnd));
GNDKHA gnd_2(.GND(gnd));
GNDKHA gnd_3(.GND(gnd));
GNDKHA gnd_4(.GND(gnd));

//// High Supply
VCC3IHA pwr_5(.VCC3I(vddio));
VCC3IHA pwr_6(.VCC3I(vddio));
VCC3IHA pwr_7(.VCC3I(vddio));
VCC3IHA pwr_8(.VCC3I(vddio));

GND3IHA gnd_5(.GND3I(vss));
GND3IHA gnd_6(.GND3I(vss));
GND3IHA gnd_7(.GND3I(vss));
GND3IHA gnd_8(.GND3I(vss));

// Corner PADs Instantiation
CORNERHA corner_1();
CORNERHA corner_2();
CORNERHA corner_3();
CORNERHA corner_4();

// Cells to tie logic0 net and logic1 net to the corresponding supplies
TIE0DHD tie_0(.O(logic0));
TIE1DHD tie_1(.O(logic1));


endmodule
