// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================


`timescale 1 ns / 1 ps

(* use_dsp48 = "yes" *) module filter_mul_8ns_8s_16_3_MulnS_1(clk, ce, a, b, p);
input clk;
input ce;
input[8 - 1 : 0] a; // synthesis attribute keep a "true"
input[8 - 1 : 0] b; // synthesis attribute keep b "true"
output[16 - 1 : 0] p;

reg [8 - 1 : 0] a_reg0;
reg signed [8 - 1 : 0] b_reg0;
wire signed [16 - 1 : 0] tmp_product;
reg signed [16 - 1 : 0] buff0;

assign p = buff0;
assign tmp_product = $signed({1'b0, a_reg0}) * b_reg0;
always @ (posedge clk) begin
    if (ce) begin
        a_reg0 <= a;
        b_reg0 <= b;
        buff0 <= tmp_product;
    end
end
endmodule

`timescale 1 ns / 1 ps
module filter_mul_8ns_8s_16_3(
    clk,
    reset,
    ce,
    din0,
    din1,
    dout);

parameter ID = 32'd1;
parameter NUM_STAGE = 32'd1;
parameter din0_WIDTH = 32'd1;
parameter din1_WIDTH = 32'd1;
parameter dout_WIDTH = 32'd1;
input clk;
input reset;
input ce;
input[din0_WIDTH - 1:0] din0;
input[din1_WIDTH - 1:0] din1;
output[dout_WIDTH - 1:0] dout;



filter_mul_8ns_8s_16_3_MulnS_1 filter_mul_8ns_8s_16_3_MulnS_1_U(
    .clk( clk ),
    .ce( ce ),
    .a( din0 ),
    .b( din1 ),
    .p( dout ));

endmodule
