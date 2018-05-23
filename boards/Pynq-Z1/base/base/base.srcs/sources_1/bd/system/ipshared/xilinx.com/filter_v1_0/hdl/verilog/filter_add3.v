// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module filter_add3 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        img_in0_data_stream_0_V_dout,
        img_in0_data_stream_0_V_empty_n,
        img_in0_data_stream_0_V_read,
        img_in0_data_stream_1_V_dout,
        img_in0_data_stream_1_V_empty_n,
        img_in0_data_stream_1_V_read,
        img_in0_data_stream_2_V_dout,
        img_in0_data_stream_2_V_empty_n,
        img_in0_data_stream_2_V_read,
        a_dout,
        a_empty_n,
        a_read,
        img_in1_data_stream_0_V_dout,
        img_in1_data_stream_0_V_empty_n,
        img_in1_data_stream_0_V_read,
        img_in1_data_stream_1_V_dout,
        img_in1_data_stream_1_V_empty_n,
        img_in1_data_stream_1_V_read,
        img_in1_data_stream_2_V_dout,
        img_in1_data_stream_2_V_empty_n,
        img_in1_data_stream_2_V_read,
        b_dout,
        b_empty_n,
        b_read,
        img_in2_data_stream_0_V_dout,
        img_in2_data_stream_0_V_empty_n,
        img_in2_data_stream_0_V_read,
        img_in2_data_stream_1_V_dout,
        img_in2_data_stream_1_V_empty_n,
        img_in2_data_stream_1_V_read,
        img_in2_data_stream_2_V_dout,
        img_in2_data_stream_2_V_empty_n,
        img_in2_data_stream_2_V_read,
        c_dout,
        c_empty_n,
        c_read,
        img_out_data_stream_0_V_din,
        img_out_data_stream_0_V_full_n,
        img_out_data_stream_0_V_write,
        img_out_data_stream_1_V_din,
        img_out_data_stream_1_V_full_n,
        img_out_data_stream_1_V_write,
        img_out_data_stream_2_V_din,
        img_out_data_stream_2_V_full_n,
        img_out_data_stream_2_V_write
);

parameter    ap_ST_st1_fsm_0 = 4'b1;
parameter    ap_ST_st2_fsm_1 = 4'b10;
parameter    ap_ST_pp0_stg0_fsm_2 = 4'b100;
parameter    ap_ST_st17_fsm_3 = 4'b1000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv11_0 = 11'b00000000000;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv11_438 = 11'b10000111000;
parameter    ap_const_lv11_1 = 11'b1;
parameter    ap_const_lv11_780 = 11'b11110000000;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [7:0] img_in0_data_stream_0_V_dout;
input   img_in0_data_stream_0_V_empty_n;
output   img_in0_data_stream_0_V_read;
input  [7:0] img_in0_data_stream_1_V_dout;
input   img_in0_data_stream_1_V_empty_n;
output   img_in0_data_stream_1_V_read;
input  [7:0] img_in0_data_stream_2_V_dout;
input   img_in0_data_stream_2_V_empty_n;
output   img_in0_data_stream_2_V_read;
input  [31:0] a_dout;
input   a_empty_n;
output   a_read;
input  [7:0] img_in1_data_stream_0_V_dout;
input   img_in1_data_stream_0_V_empty_n;
output   img_in1_data_stream_0_V_read;
input  [7:0] img_in1_data_stream_1_V_dout;
input   img_in1_data_stream_1_V_empty_n;
output   img_in1_data_stream_1_V_read;
input  [7:0] img_in1_data_stream_2_V_dout;
input   img_in1_data_stream_2_V_empty_n;
output   img_in1_data_stream_2_V_read;
input  [31:0] b_dout;
input   b_empty_n;
output   b_read;
input  [7:0] img_in2_data_stream_0_V_dout;
input   img_in2_data_stream_0_V_empty_n;
output   img_in2_data_stream_0_V_read;
input  [7:0] img_in2_data_stream_1_V_dout;
input   img_in2_data_stream_1_V_empty_n;
output   img_in2_data_stream_1_V_read;
input  [7:0] img_in2_data_stream_2_V_dout;
input   img_in2_data_stream_2_V_empty_n;
output   img_in2_data_stream_2_V_read;
input  [31:0] c_dout;
input   c_empty_n;
output   c_read;
output  [7:0] img_out_data_stream_0_V_din;
input   img_out_data_stream_0_V_full_n;
output   img_out_data_stream_0_V_write;
output  [7:0] img_out_data_stream_1_V_din;
input   img_out_data_stream_1_V_full_n;
output   img_out_data_stream_1_V_write;
output  [7:0] img_out_data_stream_2_V_din;
input   img_out_data_stream_2_V_full_n;
output   img_out_data_stream_2_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg img_in0_data_stream_0_V_read;
reg img_in0_data_stream_1_V_read;
reg img_in0_data_stream_2_V_read;
reg a_read;
reg img_in1_data_stream_0_V_read;
reg img_in1_data_stream_1_V_read;
reg img_in1_data_stream_2_V_read;
reg b_read;
reg img_in2_data_stream_0_V_read;
reg img_in2_data_stream_1_V_read;
reg img_in2_data_stream_2_V_read;
reg c_read;
reg img_out_data_stream_0_V_write;
reg img_out_data_stream_1_V_write;
reg img_out_data_stream_2_V_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_22;
reg    img_in0_data_stream_0_V_blk_n;
reg    ap_sig_cseq_ST_pp0_stg0_fsm_2;
reg    ap_sig_95;
reg    ap_reg_ppiten_pp0_it1;
reg    ap_reg_ppiten_pp0_it0;
reg    ap_reg_ppiten_pp0_it2;
reg    ap_reg_ppiten_pp0_it3;
reg    ap_reg_ppiten_pp0_it4;
reg    ap_reg_ppiten_pp0_it5;
reg    ap_reg_ppiten_pp0_it6;
reg    ap_reg_ppiten_pp0_it7;
reg    ap_reg_ppiten_pp0_it8;
reg    ap_reg_ppiten_pp0_it9;
reg    ap_reg_ppiten_pp0_it10;
reg    ap_reg_ppiten_pp0_it11;
reg    ap_reg_ppiten_pp0_it12;
reg    ap_reg_ppiten_pp0_it13;
reg   [0:0] exitcond_i_reg_346;
reg    img_in0_data_stream_1_V_blk_n;
reg    img_in0_data_stream_2_V_blk_n;
reg    a_blk_n;
reg    img_in1_data_stream_0_V_blk_n;
reg    img_in1_data_stream_1_V_blk_n;
reg    img_in1_data_stream_2_V_blk_n;
reg    b_blk_n;
reg    img_in2_data_stream_0_V_blk_n;
reg    img_in2_data_stream_1_V_blk_n;
reg    img_in2_data_stream_2_V_blk_n;
reg    c_blk_n;
reg    img_out_data_stream_0_V_blk_n;
reg   [0:0] ap_reg_ppstg_exitcond_i_reg_346_pp0_iter12;
reg    img_out_data_stream_1_V_blk_n;
reg    img_out_data_stream_2_V_blk_n;
reg   [10:0] col_i_reg_188;
wire   [7:0] tmp_fu_199_p1;
reg   [7:0] tmp_reg_316;
reg    ap_sig_163;
wire   [7:0] tmp_29_fu_203_p1;
reg   [7:0] tmp_29_reg_323;
wire   [7:0] tmp_30_fu_207_p1;
reg   [7:0] tmp_30_reg_330;
wire   [0:0] exitcond1_i_fu_211_p2;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_177;
wire   [10:0] row_fu_217_p2;
reg   [10:0] row_reg_341;
wire   [0:0] exitcond_i_fu_223_p2;
reg    ap_sig_208;
reg    ap_sig_218;
reg   [0:0] ap_reg_ppstg_exitcond_i_reg_346_pp0_iter1;
reg   [0:0] ap_reg_ppstg_exitcond_i_reg_346_pp0_iter2;
reg   [0:0] ap_reg_ppstg_exitcond_i_reg_346_pp0_iter3;
reg   [0:0] ap_reg_ppstg_exitcond_i_reg_346_pp0_iter4;
reg   [0:0] ap_reg_ppstg_exitcond_i_reg_346_pp0_iter5;
reg   [0:0] ap_reg_ppstg_exitcond_i_reg_346_pp0_iter6;
reg   [0:0] ap_reg_ppstg_exitcond_i_reg_346_pp0_iter7;
reg   [0:0] ap_reg_ppstg_exitcond_i_reg_346_pp0_iter8;
reg   [0:0] ap_reg_ppstg_exitcond_i_reg_346_pp0_iter9;
reg   [0:0] ap_reg_ppstg_exitcond_i_reg_346_pp0_iter10;
reg   [0:0] ap_reg_ppstg_exitcond_i_reg_346_pp0_iter11;
wire   [10:0] col_fu_229_p2;
wire   [7:0] tmp_41_fu_286_p2;
reg   [7:0] tmp_41_reg_400;
wire   [7:0] tmp_4_fu_298_p2;
reg   [7:0] tmp_4_reg_405;
wire   [7:0] tmp_5_fu_310_p2;
reg   [7:0] tmp_5_reg_410;
reg   [10:0] row_i_reg_177;
reg    ap_sig_cseq_ST_st17_fsm_3;
reg    ap_sig_380;
wire   [7:0] grp_fu_250_p2;
wire   [7:0] grp_fu_265_p2;
wire   [7:0] tmp1_fu_280_p2;
wire   [7:0] grp_fu_235_p2;
wire   [7:0] grp_fu_255_p2;
wire   [7:0] grp_fu_270_p2;
wire   [7:0] tmp2_fu_292_p2;
wire   [7:0] grp_fu_240_p2;
wire   [7:0] grp_fu_260_p2;
wire   [7:0] grp_fu_275_p2;
wire   [7:0] tmp3_fu_304_p2;
wire   [7:0] grp_fu_245_p2;
reg    grp_fu_235_ce;
reg    grp_fu_240_ce;
reg    grp_fu_245_ce;
reg    grp_fu_250_ce;
reg    grp_fu_255_ce;
reg    grp_fu_260_ce;
reg    grp_fu_265_ce;
reg    grp_fu_270_ce;
reg    grp_fu_275_ce;
reg   [3:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'b1;
#0 ap_reg_ppiten_pp0_it1 = 1'b0;
#0 ap_reg_ppiten_pp0_it0 = 1'b0;
#0 ap_reg_ppiten_pp0_it2 = 1'b0;
#0 ap_reg_ppiten_pp0_it3 = 1'b0;
#0 ap_reg_ppiten_pp0_it4 = 1'b0;
#0 ap_reg_ppiten_pp0_it5 = 1'b0;
#0 ap_reg_ppiten_pp0_it6 = 1'b0;
#0 ap_reg_ppiten_pp0_it7 = 1'b0;
#0 ap_reg_ppiten_pp0_it8 = 1'b0;
#0 ap_reg_ppiten_pp0_it9 = 1'b0;
#0 ap_reg_ppiten_pp0_it10 = 1'b0;
#0 ap_reg_ppiten_pp0_it11 = 1'b0;
#0 ap_reg_ppiten_pp0_it12 = 1'b0;
#0 ap_reg_ppiten_pp0_it13 = 1'b0;
end

filter_udiv_8ns_8ns_8_12 #(
    .ID( 1 ),
    .NUM_STAGE( 12 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .dout_WIDTH( 8 ))
filter_udiv_8ns_8ns_8_12_U142(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(img_in0_data_stream_0_V_dout),
    .din1(tmp_reg_316),
    .ce(grp_fu_235_ce),
    .dout(grp_fu_235_p2)
);

filter_udiv_8ns_8ns_8_12 #(
    .ID( 1 ),
    .NUM_STAGE( 12 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .dout_WIDTH( 8 ))
filter_udiv_8ns_8ns_8_12_U143(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(img_in0_data_stream_1_V_dout),
    .din1(tmp_reg_316),
    .ce(grp_fu_240_ce),
    .dout(grp_fu_240_p2)
);

filter_udiv_8ns_8ns_8_12 #(
    .ID( 1 ),
    .NUM_STAGE( 12 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .dout_WIDTH( 8 ))
filter_udiv_8ns_8ns_8_12_U144(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(img_in0_data_stream_2_V_dout),
    .din1(tmp_reg_316),
    .ce(grp_fu_245_ce),
    .dout(grp_fu_245_p2)
);

filter_udiv_8ns_8ns_8_12 #(
    .ID( 1 ),
    .NUM_STAGE( 12 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .dout_WIDTH( 8 ))
filter_udiv_8ns_8ns_8_12_U145(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(img_in1_data_stream_0_V_dout),
    .din1(tmp_29_reg_323),
    .ce(grp_fu_250_ce),
    .dout(grp_fu_250_p2)
);

filter_udiv_8ns_8ns_8_12 #(
    .ID( 1 ),
    .NUM_STAGE( 12 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .dout_WIDTH( 8 ))
filter_udiv_8ns_8ns_8_12_U146(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(img_in1_data_stream_1_V_dout),
    .din1(tmp_29_reg_323),
    .ce(grp_fu_255_ce),
    .dout(grp_fu_255_p2)
);

filter_udiv_8ns_8ns_8_12 #(
    .ID( 1 ),
    .NUM_STAGE( 12 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .dout_WIDTH( 8 ))
filter_udiv_8ns_8ns_8_12_U147(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(img_in1_data_stream_2_V_dout),
    .din1(tmp_29_reg_323),
    .ce(grp_fu_260_ce),
    .dout(grp_fu_260_p2)
);

filter_udiv_8ns_8ns_8_12 #(
    .ID( 1 ),
    .NUM_STAGE( 12 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .dout_WIDTH( 8 ))
filter_udiv_8ns_8ns_8_12_U148(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(img_in2_data_stream_0_V_dout),
    .din1(tmp_30_reg_330),
    .ce(grp_fu_265_ce),
    .dout(grp_fu_265_p2)
);

filter_udiv_8ns_8ns_8_12 #(
    .ID( 1 ),
    .NUM_STAGE( 12 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .dout_WIDTH( 8 ))
filter_udiv_8ns_8ns_8_12_U149(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(img_in2_data_stream_1_V_dout),
    .din1(tmp_30_reg_330),
    .ce(grp_fu_270_ce),
    .dout(grp_fu_270_p2)
);

filter_udiv_8ns_8ns_8_12 #(
    .ID( 1 ),
    .NUM_STAGE( 12 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .dout_WIDTH( 8 ))
filter_udiv_8ns_8ns_8_12_U150(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(img_in2_data_stream_2_V_dout),
    .din1(tmp_30_reg_330),
    .ce(grp_fu_275_ce),
    .dout(grp_fu_275_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_continue)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(1'b0 == exitcond1_i_fu_211_p2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_208) | ((1'b1 == ap_reg_ppiten_pp0_it13) & ap_sig_218)) & ~(1'b0 == exitcond_i_fu_223_p2))) begin
            ap_reg_ppiten_pp0_it0 <= 1'b0;
        end else if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (1'b0 == exitcond1_i_fu_211_p2))) begin
            ap_reg_ppiten_pp0_it0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_208) | ((1'b1 == ap_reg_ppiten_pp0_it13) & ap_sig_218)) & (1'b0 == exitcond_i_fu_223_p2))) begin
            ap_reg_ppiten_pp0_it1 <= 1'b1;
        end else if ((((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (1'b0 == exitcond1_i_fu_211_p2)) | ((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_208) | ((1'b1 == ap_reg_ppiten_pp0_it13) & ap_sig_218)) & ~(1'b0 == exitcond_i_fu_223_p2)))) begin
            ap_reg_ppiten_pp0_it1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it10 <= 1'b0;
    end else begin
        if (~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_208) | ((1'b1 == ap_reg_ppiten_pp0_it13) & ap_sig_218))) begin
            ap_reg_ppiten_pp0_it10 <= ap_reg_ppiten_pp0_it9;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it11 <= 1'b0;
    end else begin
        if (~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_208) | ((1'b1 == ap_reg_ppiten_pp0_it13) & ap_sig_218))) begin
            ap_reg_ppiten_pp0_it11 <= ap_reg_ppiten_pp0_it10;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it12 <= 1'b0;
    end else begin
        if (~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_208) | ((1'b1 == ap_reg_ppiten_pp0_it13) & ap_sig_218))) begin
            ap_reg_ppiten_pp0_it12 <= ap_reg_ppiten_pp0_it11;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it13 <= 1'b0;
    end else begin
        if (~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_208) | ((1'b1 == ap_reg_ppiten_pp0_it13) & ap_sig_218))) begin
            ap_reg_ppiten_pp0_it13 <= ap_reg_ppiten_pp0_it12;
        end else if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (1'b0 == exitcond1_i_fu_211_p2))) begin
            ap_reg_ppiten_pp0_it13 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it2 <= 1'b0;
    end else begin
        if (~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_208) | ((1'b1 == ap_reg_ppiten_pp0_it13) & ap_sig_218))) begin
            ap_reg_ppiten_pp0_it2 <= ap_reg_ppiten_pp0_it1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it3 <= 1'b0;
    end else begin
        if (~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_208) | ((1'b1 == ap_reg_ppiten_pp0_it13) & ap_sig_218))) begin
            ap_reg_ppiten_pp0_it3 <= ap_reg_ppiten_pp0_it2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it4 <= 1'b0;
    end else begin
        if (~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_208) | ((1'b1 == ap_reg_ppiten_pp0_it13) & ap_sig_218))) begin
            ap_reg_ppiten_pp0_it4 <= ap_reg_ppiten_pp0_it3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it5 <= 1'b0;
    end else begin
        if (~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_208) | ((1'b1 == ap_reg_ppiten_pp0_it13) & ap_sig_218))) begin
            ap_reg_ppiten_pp0_it5 <= ap_reg_ppiten_pp0_it4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it6 <= 1'b0;
    end else begin
        if (~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_208) | ((1'b1 == ap_reg_ppiten_pp0_it13) & ap_sig_218))) begin
            ap_reg_ppiten_pp0_it6 <= ap_reg_ppiten_pp0_it5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it7 <= 1'b0;
    end else begin
        if (~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_208) | ((1'b1 == ap_reg_ppiten_pp0_it13) & ap_sig_218))) begin
            ap_reg_ppiten_pp0_it7 <= ap_reg_ppiten_pp0_it6;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it8 <= 1'b0;
    end else begin
        if (~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_208) | ((1'b1 == ap_reg_ppiten_pp0_it13) & ap_sig_218))) begin
            ap_reg_ppiten_pp0_it8 <= ap_reg_ppiten_pp0_it7;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it9 <= 1'b0;
    end else begin
        if (~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_208) | ((1'b1 == ap_reg_ppiten_pp0_it13) & ap_sig_218))) begin
            ap_reg_ppiten_pp0_it9 <= ap_reg_ppiten_pp0_it8;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it0) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_208) | ((1'b1 == ap_reg_ppiten_pp0_it13) & ap_sig_218)) & (1'b0 == exitcond_i_fu_223_p2))) begin
        col_i_reg_188 <= col_fu_229_p2;
    end else if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (1'b0 == exitcond1_i_fu_211_p2))) begin
        col_i_reg_188 <= ap_const_lv11_0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st17_fsm_3)) begin
        row_i_reg_177 <= row_reg_341;
    end else if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_163)) begin
        row_i_reg_177 <= ap_const_lv11_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_208) | ((1'b1 == ap_reg_ppiten_pp0_it13) & ap_sig_218)))) begin
        ap_reg_ppstg_exitcond_i_reg_346_pp0_iter1 <= exitcond_i_reg_346;
        exitcond_i_reg_346 <= exitcond_i_fu_223_p2;
    end
end

always @ (posedge ap_clk) begin
    if (~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_208) | ((1'b1 == ap_reg_ppiten_pp0_it13) & ap_sig_218))) begin
        ap_reg_ppstg_exitcond_i_reg_346_pp0_iter10 <= ap_reg_ppstg_exitcond_i_reg_346_pp0_iter9;
        ap_reg_ppstg_exitcond_i_reg_346_pp0_iter11 <= ap_reg_ppstg_exitcond_i_reg_346_pp0_iter10;
        ap_reg_ppstg_exitcond_i_reg_346_pp0_iter12 <= ap_reg_ppstg_exitcond_i_reg_346_pp0_iter11;
        ap_reg_ppstg_exitcond_i_reg_346_pp0_iter2 <= ap_reg_ppstg_exitcond_i_reg_346_pp0_iter1;
        ap_reg_ppstg_exitcond_i_reg_346_pp0_iter3 <= ap_reg_ppstg_exitcond_i_reg_346_pp0_iter2;
        ap_reg_ppstg_exitcond_i_reg_346_pp0_iter4 <= ap_reg_ppstg_exitcond_i_reg_346_pp0_iter3;
        ap_reg_ppstg_exitcond_i_reg_346_pp0_iter5 <= ap_reg_ppstg_exitcond_i_reg_346_pp0_iter4;
        ap_reg_ppstg_exitcond_i_reg_346_pp0_iter6 <= ap_reg_ppstg_exitcond_i_reg_346_pp0_iter5;
        ap_reg_ppstg_exitcond_i_reg_346_pp0_iter7 <= ap_reg_ppstg_exitcond_i_reg_346_pp0_iter6;
        ap_reg_ppstg_exitcond_i_reg_346_pp0_iter8 <= ap_reg_ppstg_exitcond_i_reg_346_pp0_iter7;
        ap_reg_ppstg_exitcond_i_reg_346_pp0_iter9 <= ap_reg_ppstg_exitcond_i_reg_346_pp0_iter8;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        row_reg_341 <= row_fu_217_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_163)) begin
        tmp_29_reg_323 <= tmp_29_fu_203_p1;
        tmp_30_reg_330 <= tmp_30_fu_207_p1;
        tmp_reg_316 <= tmp_fu_199_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_208) | ((1'b1 == ap_reg_ppiten_pp0_it13) & ap_sig_218)) & (1'b0 == ap_reg_ppstg_exitcond_i_reg_346_pp0_iter11))) begin
        tmp_41_reg_400 <= tmp_41_fu_286_p2;
        tmp_4_reg_405 <= tmp_4_fu_298_p2;
        tmp_5_reg_410 <= tmp_5_fu_310_p2;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~((ap_start == 1'b0) | (ap_done_reg == 1'b1)))) begin
        a_blk_n = a_empty_n;
    end else begin
        a_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_163)) begin
        a_read = 1'b1;
    end else begin
        a_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_done_reg) | ((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(1'b0 == exitcond1_i_fu_211_p2)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (1'b1 == ap_sig_cseq_ST_st1_fsm_0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(1'b0 == exitcond1_i_fu_211_p2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_95) begin
        ap_sig_cseq_ST_pp0_stg0_fsm_2 = 1'b1;
    end else begin
        ap_sig_cseq_ST_pp0_stg0_fsm_2 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_380) begin
        ap_sig_cseq_ST_st17_fsm_3 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st17_fsm_3 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_22) begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_177) begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~((ap_start == 1'b0) | (ap_done_reg == 1'b1)))) begin
        b_blk_n = b_empty_n;
    end else begin
        b_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_163)) begin
        b_read = 1'b1;
    end else begin
        b_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~((ap_start == 1'b0) | (ap_done_reg == 1'b1)))) begin
        c_blk_n = c_empty_n;
    end else begin
        c_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_163)) begin
        c_read = 1'b1;
    end else begin
        c_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_208) | ((1'b1 == ap_reg_ppiten_pp0_it13) & ap_sig_218)))) begin
        grp_fu_235_ce = 1'b1;
    end else begin
        grp_fu_235_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_208) | ((1'b1 == ap_reg_ppiten_pp0_it13) & ap_sig_218)))) begin
        grp_fu_240_ce = 1'b1;
    end else begin
        grp_fu_240_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_208) | ((1'b1 == ap_reg_ppiten_pp0_it13) & ap_sig_218)))) begin
        grp_fu_245_ce = 1'b1;
    end else begin
        grp_fu_245_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_208) | ((1'b1 == ap_reg_ppiten_pp0_it13) & ap_sig_218)))) begin
        grp_fu_250_ce = 1'b1;
    end else begin
        grp_fu_250_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_208) | ((1'b1 == ap_reg_ppiten_pp0_it13) & ap_sig_218)))) begin
        grp_fu_255_ce = 1'b1;
    end else begin
        grp_fu_255_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_208) | ((1'b1 == ap_reg_ppiten_pp0_it13) & ap_sig_218)))) begin
        grp_fu_260_ce = 1'b1;
    end else begin
        grp_fu_260_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_208) | ((1'b1 == ap_reg_ppiten_pp0_it13) & ap_sig_218)))) begin
        grp_fu_265_ce = 1'b1;
    end else begin
        grp_fu_265_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_208) | ((1'b1 == ap_reg_ppiten_pp0_it13) & ap_sig_218)))) begin
        grp_fu_270_ce = 1'b1;
    end else begin
        grp_fu_270_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_208) | ((1'b1 == ap_reg_ppiten_pp0_it13) & ap_sig_218)))) begin
        grp_fu_275_ce = 1'b1;
    end else begin
        grp_fu_275_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond_i_reg_346 == 1'b0))) begin
        img_in0_data_stream_0_V_blk_n = img_in0_data_stream_0_V_empty_n;
    end else begin
        img_in0_data_stream_0_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond_i_reg_346 == 1'b0) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_208) | ((1'b1 == ap_reg_ppiten_pp0_it13) & ap_sig_218)))) begin
        img_in0_data_stream_0_V_read = 1'b1;
    end else begin
        img_in0_data_stream_0_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond_i_reg_346 == 1'b0))) begin
        img_in0_data_stream_1_V_blk_n = img_in0_data_stream_1_V_empty_n;
    end else begin
        img_in0_data_stream_1_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond_i_reg_346 == 1'b0) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_208) | ((1'b1 == ap_reg_ppiten_pp0_it13) & ap_sig_218)))) begin
        img_in0_data_stream_1_V_read = 1'b1;
    end else begin
        img_in0_data_stream_1_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond_i_reg_346 == 1'b0))) begin
        img_in0_data_stream_2_V_blk_n = img_in0_data_stream_2_V_empty_n;
    end else begin
        img_in0_data_stream_2_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond_i_reg_346 == 1'b0) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_208) | ((1'b1 == ap_reg_ppiten_pp0_it13) & ap_sig_218)))) begin
        img_in0_data_stream_2_V_read = 1'b1;
    end else begin
        img_in0_data_stream_2_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond_i_reg_346 == 1'b0))) begin
        img_in1_data_stream_0_V_blk_n = img_in1_data_stream_0_V_empty_n;
    end else begin
        img_in1_data_stream_0_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond_i_reg_346 == 1'b0) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_208) | ((1'b1 == ap_reg_ppiten_pp0_it13) & ap_sig_218)))) begin
        img_in1_data_stream_0_V_read = 1'b1;
    end else begin
        img_in1_data_stream_0_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond_i_reg_346 == 1'b0))) begin
        img_in1_data_stream_1_V_blk_n = img_in1_data_stream_1_V_empty_n;
    end else begin
        img_in1_data_stream_1_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond_i_reg_346 == 1'b0) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_208) | ((1'b1 == ap_reg_ppiten_pp0_it13) & ap_sig_218)))) begin
        img_in1_data_stream_1_V_read = 1'b1;
    end else begin
        img_in1_data_stream_1_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond_i_reg_346 == 1'b0))) begin
        img_in1_data_stream_2_V_blk_n = img_in1_data_stream_2_V_empty_n;
    end else begin
        img_in1_data_stream_2_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond_i_reg_346 == 1'b0) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_208) | ((1'b1 == ap_reg_ppiten_pp0_it13) & ap_sig_218)))) begin
        img_in1_data_stream_2_V_read = 1'b1;
    end else begin
        img_in1_data_stream_2_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond_i_reg_346 == 1'b0))) begin
        img_in2_data_stream_0_V_blk_n = img_in2_data_stream_0_V_empty_n;
    end else begin
        img_in2_data_stream_0_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond_i_reg_346 == 1'b0) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_208) | ((1'b1 == ap_reg_ppiten_pp0_it13) & ap_sig_218)))) begin
        img_in2_data_stream_0_V_read = 1'b1;
    end else begin
        img_in2_data_stream_0_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond_i_reg_346 == 1'b0))) begin
        img_in2_data_stream_1_V_blk_n = img_in2_data_stream_1_V_empty_n;
    end else begin
        img_in2_data_stream_1_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond_i_reg_346 == 1'b0) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_208) | ((1'b1 == ap_reg_ppiten_pp0_it13) & ap_sig_218)))) begin
        img_in2_data_stream_1_V_read = 1'b1;
    end else begin
        img_in2_data_stream_1_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond_i_reg_346 == 1'b0))) begin
        img_in2_data_stream_2_V_blk_n = img_in2_data_stream_2_V_empty_n;
    end else begin
        img_in2_data_stream_2_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond_i_reg_346 == 1'b0) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_208) | ((1'b1 == ap_reg_ppiten_pp0_it13) & ap_sig_218)))) begin
        img_in2_data_stream_2_V_read = 1'b1;
    end else begin
        img_in2_data_stream_2_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it13) & (1'b0 == ap_reg_ppstg_exitcond_i_reg_346_pp0_iter12))) begin
        img_out_data_stream_0_V_blk_n = img_out_data_stream_0_V_full_n;
    end else begin
        img_out_data_stream_0_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it13) & (1'b0 == ap_reg_ppstg_exitcond_i_reg_346_pp0_iter12) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_208) | ((1'b1 == ap_reg_ppiten_pp0_it13) & ap_sig_218)))) begin
        img_out_data_stream_0_V_write = 1'b1;
    end else begin
        img_out_data_stream_0_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it13) & (1'b0 == ap_reg_ppstg_exitcond_i_reg_346_pp0_iter12))) begin
        img_out_data_stream_1_V_blk_n = img_out_data_stream_1_V_full_n;
    end else begin
        img_out_data_stream_1_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it13) & (1'b0 == ap_reg_ppstg_exitcond_i_reg_346_pp0_iter12) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_208) | ((1'b1 == ap_reg_ppiten_pp0_it13) & ap_sig_218)))) begin
        img_out_data_stream_1_V_write = 1'b1;
    end else begin
        img_out_data_stream_1_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it13) & (1'b0 == ap_reg_ppstg_exitcond_i_reg_346_pp0_iter12))) begin
        img_out_data_stream_2_V_blk_n = img_out_data_stream_2_V_full_n;
    end else begin
        img_out_data_stream_2_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it13) & (1'b0 == ap_reg_ppstg_exitcond_i_reg_346_pp0_iter12) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_208) | ((1'b1 == ap_reg_ppiten_pp0_it13) & ap_sig_218)))) begin
        img_out_data_stream_2_V_write = 1'b1;
    end else begin
        img_out_data_stream_2_V_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : begin
            if (~ap_sig_163) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_st2_fsm_1 : begin
            if (~(1'b0 == exitcond1_i_fu_211_p2)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            end
        end
        ap_ST_pp0_stg0_fsm_2 : begin
            if ((~((1'b1 == ap_reg_ppiten_pp0_it13) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_208) | ((1'b1 == ap_reg_ppiten_pp0_it13) & ap_sig_218)) & ~(1'b1 == ap_reg_ppiten_pp0_it12)) & ~((1'b1 == ap_reg_ppiten_pp0_it0) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_208) | ((1'b1 == ap_reg_ppiten_pp0_it13) & ap_sig_218)) & ~(1'b0 == exitcond_i_fu_223_p2) & ~(1'b1 == ap_reg_ppiten_pp0_it1)))) begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            end else if ((((1'b1 == ap_reg_ppiten_pp0_it13) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_208) | ((1'b1 == ap_reg_ppiten_pp0_it13) & ap_sig_218)) & ~(1'b1 == ap_reg_ppiten_pp0_it12)) | ((1'b1 == ap_reg_ppiten_pp0_it0) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_208) | ((1'b1 == ap_reg_ppiten_pp0_it13) & ap_sig_218)) & ~(1'b0 == exitcond_i_fu_223_p2) & ~(1'b1 == ap_reg_ppiten_pp0_it1)))) begin
                ap_NS_fsm = ap_ST_st17_fsm_3;
            end else begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            end
        end
        ap_ST_st17_fsm_3 : begin
            ap_NS_fsm = ap_ST_st2_fsm_1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

always @ (*) begin
    ap_sig_163 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | (a_empty_n == 1'b0) | (b_empty_n == 1'b0) | (c_empty_n == 1'b0));
end

always @ (*) begin
    ap_sig_177 = (1'b1 == ap_CS_fsm[ap_const_lv32_1]);
end

always @ (*) begin
    ap_sig_208 = (((exitcond_i_reg_346 == 1'b0) & (img_in0_data_stream_0_V_empty_n == 1'b0)) | ((exitcond_i_reg_346 == 1'b0) & (img_in0_data_stream_1_V_empty_n == 1'b0)) | ((exitcond_i_reg_346 == 1'b0) & (img_in0_data_stream_2_V_empty_n == 1'b0)) | ((exitcond_i_reg_346 == 1'b0) & (img_in1_data_stream_0_V_empty_n == 1'b0)) | ((exitcond_i_reg_346 == 1'b0) & (img_in1_data_stream_1_V_empty_n == 1'b0)) | ((exitcond_i_reg_346 == 1'b0) & (img_in1_data_stream_2_V_empty_n == 1'b0)) | ((exitcond_i_reg_346 == 1'b0) & (img_in2_data_stream_0_V_empty_n == 1'b0)) | ((exitcond_i_reg_346 == 1'b0) & (img_in2_data_stream_1_V_empty_n == 1'b0)) | ((exitcond_i_reg_346 == 1'b0) & (img_in2_data_stream_2_V_empty_n == 1'b0)));
end

always @ (*) begin
    ap_sig_218 = (((1'b0 == ap_reg_ppstg_exitcond_i_reg_346_pp0_iter12) & (img_out_data_stream_0_V_full_n == 1'b0)) | ((1'b0 == ap_reg_ppstg_exitcond_i_reg_346_pp0_iter12) & (img_out_data_stream_1_V_full_n == 1'b0)) | ((1'b0 == ap_reg_ppstg_exitcond_i_reg_346_pp0_iter12) & (img_out_data_stream_2_V_full_n == 1'b0)));
end

always @ (*) begin
    ap_sig_22 = (ap_CS_fsm[ap_const_lv32_0] == 1'b1);
end

always @ (*) begin
    ap_sig_380 = (1'b1 == ap_CS_fsm[ap_const_lv32_3]);
end

always @ (*) begin
    ap_sig_95 = (1'b1 == ap_CS_fsm[ap_const_lv32_2]);
end

assign col_fu_229_p2 = (col_i_reg_188 + ap_const_lv11_1);

assign exitcond1_i_fu_211_p2 = ((row_i_reg_177 == ap_const_lv11_438) ? 1'b1 : 1'b0);

assign exitcond_i_fu_223_p2 = ((col_i_reg_188 == ap_const_lv11_780) ? 1'b1 : 1'b0);

assign img_out_data_stream_0_V_din = tmp_41_reg_400;

assign img_out_data_stream_1_V_din = tmp_4_reg_405;

assign img_out_data_stream_2_V_din = tmp_5_reg_410;

assign row_fu_217_p2 = (row_i_reg_177 + ap_const_lv11_1);

assign tmp1_fu_280_p2 = (grp_fu_250_p2 + grp_fu_265_p2);

assign tmp2_fu_292_p2 = (grp_fu_255_p2 + grp_fu_270_p2);

assign tmp3_fu_304_p2 = (grp_fu_260_p2 + grp_fu_275_p2);

assign tmp_29_fu_203_p1 = b_dout[7:0];

assign tmp_30_fu_207_p1 = c_dout[7:0];

assign tmp_41_fu_286_p2 = (tmp1_fu_280_p2 + grp_fu_235_p2);

assign tmp_4_fu_298_p2 = (tmp2_fu_292_p2 + grp_fu_240_p2);

assign tmp_5_fu_310_p2 = (tmp3_fu_304_p2 + grp_fu_245_p2);

assign tmp_fu_199_p1 = a_dout[7:0];

endmodule //filter_add3