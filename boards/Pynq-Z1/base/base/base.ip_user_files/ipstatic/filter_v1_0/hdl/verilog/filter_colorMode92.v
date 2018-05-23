// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module filter_colorMode92 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        img_in_data_stream_V_dout,
        img_in_data_stream_V_empty_n,
        img_in_data_stream_V_read,
        img_in_data_stream_V1_dout,
        img_in_data_stream_V1_empty_n,
        img_in_data_stream_V1_read,
        img_in_data_stream_V2_dout,
        img_in_data_stream_V2_empty_n,
        img_in_data_stream_V2_read,
        mode_dout,
        mode_empty_n,
        mode_read,
        img_out_data_stream_V_din,
        img_out_data_stream_V_full_n,
        img_out_data_stream_V_write,
        img_out_data_stream_V3_din,
        img_out_data_stream_V3_full_n,
        img_out_data_stream_V3_write,
        img_out_data_stream_V4_din,
        img_out_data_stream_V4_full_n,
        img_out_data_stream_V4_write
);

parameter    ap_ST_st1_fsm_0 = 2'b1;
parameter    ap_ST_pp0_stg0_fsm_1 = 2'b10;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv21_0 = 21'b000000000000000000000;
parameter    ap_const_lv11_0 = 11'b00000000000;
parameter    ap_const_lv21_1 = 21'b1;
parameter    ap_const_lv21_1FA3FF = 21'b111111010001111111111;
parameter    ap_const_lv16_96 = 16'b10010110;
parameter    ap_const_lv8_0 = 8'b00000000;
parameter    ap_const_lv8_1 = 8'b1;
parameter    ap_const_lv32_8 = 32'b1000;
parameter    ap_const_lv32_F = 32'b1111;
parameter    ap_const_lv8_2 = 8'b10;
parameter    ap_const_lv11_3C1 = 11'b1111000001;
parameter    ap_const_lv8_3 = 8'b11;
parameter    ap_const_lv11_1 = 11'b1;
parameter    ap_const_lv11_780 = 11'b11110000000;
parameter    ap_const_lv14_1D = 14'b11101;
parameter    ap_const_lv16_4D = 16'b1001101;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [7:0] img_in_data_stream_V_dout;
input   img_in_data_stream_V_empty_n;
output   img_in_data_stream_V_read;
input  [7:0] img_in_data_stream_V1_dout;
input   img_in_data_stream_V1_empty_n;
output   img_in_data_stream_V1_read;
input  [7:0] img_in_data_stream_V2_dout;
input   img_in_data_stream_V2_empty_n;
output   img_in_data_stream_V2_read;
input  [7:0] mode_dout;
input   mode_empty_n;
output   mode_read;
output  [7:0] img_out_data_stream_V_din;
input   img_out_data_stream_V_full_n;
output   img_out_data_stream_V_write;
output  [7:0] img_out_data_stream_V3_din;
input   img_out_data_stream_V3_full_n;
output   img_out_data_stream_V3_write;
output  [7:0] img_out_data_stream_V4_din;
input   img_out_data_stream_V4_full_n;
output   img_out_data_stream_V4_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg img_in_data_stream_V_read;
reg img_in_data_stream_V1_read;
reg img_in_data_stream_V2_read;
reg mode_read;
reg img_out_data_stream_V_write;
reg img_out_data_stream_V3_write;
reg img_out_data_stream_V4_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_20;
wire   [0:0] exitcond_flatten_fu_241_p2;
reg    ap_sig_cseq_ST_pp0_stg0_fsm_1;
reg    ap_sig_36;
wire    ap_reg_ppiten_pp0_it0;
reg    ap_sig_58;
reg   [0:0] do_init_phi_fu_155_p6;
reg    ap_sig_69;
reg    ap_reg_ppiten_pp0_it1;
reg    ap_reg_ppiten_pp0_it2;
reg    ap_sig_93;
reg    ap_reg_ppiten_pp0_it3;
reg    img_in_data_stream_V_blk_n;
reg    img_in_data_stream_V1_blk_n;
reg    img_in_data_stream_V2_blk_n;
reg    img_out_data_stream_V_blk_n;
reg    img_out_data_stream_V3_blk_n;
reg    img_out_data_stream_V4_blk_n;
reg    mode_blk_n;
reg   [0:0] do_init_reg_151;
reg   [20:0] indvar_flatten2_reg_167;
reg   [7:0] mode_load_rewind_reg_181;
reg   [0:0] exitcond_i4_reg_195;
reg   [10:0] col_i3_reg_209;
reg   [7:0] mode_load_phi_reg_223;
reg   [7:0] tmp_18_reg_476;
reg   [7:0] ap_reg_ppstg_tmp_18_reg_476_pp0_iter1;
reg   [7:0] ap_reg_ppstg_tmp_18_reg_476_pp0_iter2;
reg   [7:0] tmp_19_reg_484;
reg   [7:0] ap_reg_ppstg_tmp_19_reg_484_pp0_iter1;
reg   [7:0] ap_reg_ppstg_tmp_19_reg_484_pp0_iter2;
reg   [7:0] tmp_reg_492;
reg   [7:0] ap_reg_ppstg_tmp_reg_492_pp0_iter1;
reg   [7:0] ap_reg_ppstg_tmp_reg_492_pp0_iter2;
wire   [20:0] indvar_flatten_next_fu_235_p2;
reg   [20:0] indvar_flatten_next_reg_500;
reg   [0:0] exitcond_flatten_reg_505;
reg   [0:0] ap_reg_ppstg_exitcond_flatten_reg_505_pp0_iter1;
reg   [0:0] ap_reg_ppstg_exitcond_flatten_reg_505_pp0_iter2;
wire   [15:0] p_Val2_6_i_fu_250_p2;
reg   [15:0] p_Val2_6_i_reg_514;
wire   [0:0] tmp_i_fu_264_p2;
reg   [0:0] tmp_i_reg_519;
wire   [0:0] tmp_i_69_fu_270_p2;
reg   [0:0] tmp_i_69_reg_528;
reg   [7:0] gray_reg_534;
wire   [0:0] tmp_39_i_fu_291_p2;
reg   [0:0] tmp_39_i_reg_544;
wire   [0:0] tmp_41_i_fu_297_p2;
reg   [0:0] tmp_41_i_reg_550;
wire   [0:0] tmp_42_i_fu_303_p2;
reg   [0:0] tmp_42_i_reg_555;
wire   [10:0] col_fu_309_p2;
reg   [10:0] col_reg_562;
wire   [0:0] exitcond_i_fu_315_p2;
reg   [0:0] exitcond_i_reg_567;
reg    ap_sig_171;
reg   [20:0] indvar_flatten2_phi_fu_171_p6;
reg   [7:0] mode_load_rewind_phi_fu_185_p6;
reg   [0:0] exitcond_i4_phi_fu_199_p6;
reg   [10:0] col_i3_phi_fu_213_p6;
wire   [7:0] ap_reg_phiprechg_mode_load_phi_reg_223pp0_it1;
reg   [7:0] ap_reg_phiprechg_mode_load_phi_reg_223pp0_it2;
reg   [7:0] mode_load_phi_phi_fu_227_p4;
wire   [7:0] p_Val2_6_i_fu_250_p0;
wire   [15:0] grp_fu_467_p3;
wire   [10:0] col_i_mid2_fu_256_p3;
wire   [0:0] sel_tmp1_fu_344_p2;
wire   [0:0] sel_tmp2_fu_349_p2;
wire   [7:0] sel_tmp_fu_339_p3;
wire   [0:0] sel_tmp6_demorgan_fu_361_p2;
wire   [0:0] sel_tmp8_demorgan_fu_365_p2;
wire   [7:0] sel_tmp3_fu_354_p3;
wire   [7:0] i_op_assign_8_fu_321_p3;
wire   [0:0] sel_tmp12_fu_378_p2;
wire   [0:0] tmp16_fu_384_p2;
wire   [0:0] sel_tmp13_fu_389_p2;
wire   [7:0] sel_tmp9_fu_370_p3;
wire   [7:0] sel_tmp14_fu_402_p3;
wire   [7:0] sel_tmp15_fu_407_p3;
wire   [7:0] i_op_assign_9_fu_327_p3;
wire   [7:0] sel_tmp16_fu_414_p3;
wire   [7:0] sel_tmp17_fu_430_p3;
wire   [7:0] sel_tmp18_fu_435_p3;
wire   [7:0] i_op_assign_s_fu_333_p3;
wire   [7:0] sel_tmp19_fu_442_p3;
wire   [7:0] grp_fu_460_p0;
wire   [5:0] grp_fu_460_p1;
wire   [7:0] grp_fu_467_p0;
wire   [7:0] grp_fu_467_p1;
wire   [15:0] grp_fu_460_p3;
reg   [1:0] ap_NS_fsm;
reg    ap_sig_pprstidle_pp0;
wire   [13:0] grp_fu_460_p00;
wire   [15:0] grp_fu_467_p00;
wire   [15:0] p_Val2_6_i_fu_250_p00;
reg    ap_sig_184;
reg    ap_sig_111;
reg    ap_sig_167;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 2'b1;
#0 ap_reg_ppiten_pp0_it1 = 1'b0;
#0 ap_reg_ppiten_pp0_it2 = 1'b0;
#0 ap_reg_ppiten_pp0_it3 = 1'b0;
end

filter_mac_muladd_8ns_6ns_16ns_16_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 6 ),
    .din2_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
filter_mac_muladd_8ns_6ns_16ns_16_1_U107(
    .din0(grp_fu_460_p0),
    .din1(grp_fu_460_p1),
    .din2(p_Val2_6_i_reg_514),
    .dout(grp_fu_460_p3)
);

filter_mac_muladd_8ns_8ns_16ns_16_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
filter_mac_muladd_8ns_8ns_16ns_16_1_U108(
    .din0(grp_fu_467_p0),
    .din1(grp_fu_467_p1),
    .din2(grp_fu_460_p3),
    .dout(grp_fu_467_p3)
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
        end else if (((1'b1 == ap_reg_ppiten_pp0_it3) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_69 & (1'b1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_93 & (1'b1 == ap_reg_ppiten_pp0_it3)) | (ap_done_reg == 1'b1)) & ~(1'b0 == ap_reg_ppstg_exitcond_flatten_reg_505_pp0_iter2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_69 & (1'b1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_93 & (1'b1 == ap_reg_ppiten_pp0_it3)) | (ap_done_reg == 1'b1)))) begin
            ap_reg_ppiten_pp0_it1 <= ap_start;
        end else if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_171)) begin
            ap_reg_ppiten_pp0_it1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it2 <= 1'b0;
    end else begin
        if (~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_69 & (1'b1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_93 & (1'b1 == ap_reg_ppiten_pp0_it3)) | (ap_done_reg == 1'b1))) begin
            ap_reg_ppiten_pp0_it2 <= ap_reg_ppiten_pp0_it1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it3 <= 1'b0;
    end else begin
        if (~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_69 & (1'b1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_93 & (1'b1 == ap_reg_ppiten_pp0_it3)) | (ap_done_reg == 1'b1))) begin
            ap_reg_ppiten_pp0_it3 <= ap_reg_ppiten_pp0_it2;
        end else if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_171)) begin
            ap_reg_ppiten_pp0_it3 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_sig_184) begin
        if (~(1'b0 == do_init_phi_fu_155_p6)) begin
            ap_reg_phiprechg_mode_load_phi_reg_223pp0_it2 <= mode_dout;
        end else if ((1'b1 == 1'b1)) begin
            ap_reg_phiprechg_mode_load_phi_reg_223pp0_it2 <= ap_reg_phiprechg_mode_load_phi_reg_223pp0_it1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it3) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_69 & (1'b1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_93 & (1'b1 == ap_reg_ppiten_pp0_it3)) | (ap_done_reg == 1'b1)) & (1'b0 == ap_reg_ppstg_exitcond_flatten_reg_505_pp0_iter2))) begin
        col_i3_reg_209 <= col_reg_562;
    end else if ((((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_171) | ((1'b1 == ap_reg_ppiten_pp0_it3) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_69 & (1'b1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_93 & (1'b1 == ap_reg_ppiten_pp0_it3)) | (ap_done_reg == 1'b1)) & ~(1'b0 == ap_reg_ppstg_exitcond_flatten_reg_505_pp0_iter2)))) begin
        col_i3_reg_209 <= ap_const_lv11_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it2) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_69 & (1'b1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_93 & (1'b1 == ap_reg_ppiten_pp0_it3)) | (ap_done_reg == 1'b1)) & (1'b0 == ap_reg_ppstg_exitcond_flatten_reg_505_pp0_iter1))) begin
        do_init_reg_151 <= 1'b0;
    end else if ((((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_171) | ((1'b1 == ap_reg_ppiten_pp0_it2) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_69 & (1'b1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_93 & (1'b1 == ap_reg_ppiten_pp0_it3)) | (ap_done_reg == 1'b1)) & ~(1'b0 == ap_reg_ppstg_exitcond_flatten_reg_505_pp0_iter1)))) begin
        do_init_reg_151 <= 1'b1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it3) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_69 & (1'b1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_93 & (1'b1 == ap_reg_ppiten_pp0_it3)) | (ap_done_reg == 1'b1)) & (1'b0 == ap_reg_ppstg_exitcond_flatten_reg_505_pp0_iter2))) begin
        exitcond_i4_reg_195 <= exitcond_i_reg_567;
    end else if ((((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_171) | ((1'b1 == ap_reg_ppiten_pp0_it3) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_69 & (1'b1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_93 & (1'b1 == ap_reg_ppiten_pp0_it3)) | (ap_done_reg == 1'b1)) & ~(1'b0 == ap_reg_ppstg_exitcond_flatten_reg_505_pp0_iter2)))) begin
        exitcond_i4_reg_195 <= 1'b0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it1) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_69 & (1'b1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_93 & (1'b1 == ap_reg_ppiten_pp0_it3)) | (ap_done_reg == 1'b1)) & (1'b0 == exitcond_flatten_reg_505))) begin
        indvar_flatten2_reg_167 <= indvar_flatten_next_reg_500;
    end else if ((((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_171) | ((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it1) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_69 & (1'b1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_93 & (1'b1 == ap_reg_ppiten_pp0_it3)) | (ap_done_reg == 1'b1)) & ~(1'b0 == exitcond_flatten_reg_505)))) begin
        indvar_flatten2_reg_167 <= ap_const_lv21_0;
    end
end

always @ (posedge ap_clk) begin
    if (ap_sig_167) begin
        if ((1'b0 == do_init_reg_151)) begin
            mode_load_phi_reg_223 <= mode_load_rewind_phi_fu_185_p6;
        end else if ((1'b1 == 1'b1)) begin
            mode_load_phi_reg_223 <= ap_reg_phiprechg_mode_load_phi_reg_223pp0_it2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_69 & (1'b1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_93 & (1'b1 == ap_reg_ppiten_pp0_it3)) | (ap_done_reg == 1'b1)))) begin
        ap_reg_ppstg_exitcond_flatten_reg_505_pp0_iter1 <= exitcond_flatten_reg_505;
        ap_reg_ppstg_tmp_18_reg_476_pp0_iter1 <= tmp_18_reg_476;
        ap_reg_ppstg_tmp_19_reg_484_pp0_iter1 <= tmp_19_reg_484;
        ap_reg_ppstg_tmp_reg_492_pp0_iter1 <= tmp_reg_492;
        exitcond_flatten_reg_505 <= exitcond_flatten_fu_241_p2;
        p_Val2_6_i_reg_514[15 : 1] <= p_Val2_6_i_fu_250_p2[15 : 1];
        tmp_18_reg_476 <= img_in_data_stream_V_dout;
        tmp_19_reg_484 <= img_in_data_stream_V1_dout;
        tmp_reg_492 <= img_in_data_stream_V2_dout;
    end
end

always @ (posedge ap_clk) begin
    if (~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_69 & (1'b1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_93 & (1'b1 == ap_reg_ppiten_pp0_it3)) | (ap_done_reg == 1'b1))) begin
        ap_reg_ppstg_exitcond_flatten_reg_505_pp0_iter2 <= ap_reg_ppstg_exitcond_flatten_reg_505_pp0_iter1;
        ap_reg_ppstg_tmp_18_reg_476_pp0_iter2 <= ap_reg_ppstg_tmp_18_reg_476_pp0_iter1;
        ap_reg_ppstg_tmp_19_reg_484_pp0_iter2 <= ap_reg_ppstg_tmp_19_reg_484_pp0_iter1;
        ap_reg_ppstg_tmp_reg_492_pp0_iter2 <= ap_reg_ppstg_tmp_reg_492_pp0_iter1;
        gray_reg_534 <= {{grp_fu_467_p3[ap_const_lv32_F : ap_const_lv32_8]}};
        tmp_39_i_reg_544 <= tmp_39_i_fu_291_p2;
        tmp_41_i_reg_550 <= tmp_41_i_fu_297_p2;
        tmp_42_i_reg_555 <= tmp_42_i_fu_303_p2;
        tmp_i_69_reg_528 <= tmp_i_69_fu_270_p2;
        tmp_i_reg_519 <= tmp_i_fu_264_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it2) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_69 & (1'b1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_93 & (1'b1 == ap_reg_ppiten_pp0_it3)) | (ap_done_reg == 1'b1)))) begin
        col_reg_562 <= col_fu_309_p2;
        exitcond_i_reg_567 <= exitcond_i_fu_315_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it0) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_69 & (1'b1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_93 & (1'b1 == ap_reg_ppiten_pp0_it3)) | (ap_done_reg == 1'b1)))) begin
        indvar_flatten_next_reg_500 <= indvar_flatten_next_fu_235_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it3) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_69 & (1'b1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_93 & (1'b1 == ap_reg_ppiten_pp0_it3)) | (ap_done_reg == 1'b1)) & (1'b0 == ap_reg_ppstg_exitcond_flatten_reg_505_pp0_iter2))) begin
        mode_load_rewind_reg_181 <= mode_load_phi_reg_223;
    end
end

always @ (*) begin
    if (((1'b1 == ap_done_reg) | ((1'b1 == ap_reg_ppiten_pp0_it3) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_69 & (1'b1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_93 & (1'b1 == ap_reg_ppiten_pp0_it3)) | (ap_done_reg == 1'b1)) & ~(1'b0 == ap_reg_ppstg_exitcond_flatten_reg_505_pp0_iter2)))) begin
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
    if ((~(exitcond_flatten_fu_241_p2 == 1'b0) & (1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it0) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_69 & (1'b1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_93 & (1'b1 == ap_reg_ppiten_pp0_it3)) | (ap_done_reg == 1'b1)))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_36) begin
        ap_sig_cseq_ST_pp0_stg0_fsm_1 = 1'b1;
    end else begin
        ap_sig_cseq_ST_pp0_stg0_fsm_1 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_20) begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (1'b0 == ap_reg_ppiten_pp0_it0) & (1'b0 == ap_reg_ppiten_pp0_it1) & (1'b0 == ap_reg_ppiten_pp0_it2))) begin
        ap_sig_pprstidle_pp0 = 1'b1;
    end else begin
        ap_sig_pprstidle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_reg_ppiten_pp0_it3)) begin
        if (~(1'b0 == ap_reg_ppstg_exitcond_flatten_reg_505_pp0_iter2)) begin
            col_i3_phi_fu_213_p6 = ap_const_lv11_0;
        end else if ((1'b0 == ap_reg_ppstg_exitcond_flatten_reg_505_pp0_iter2)) begin
            col_i3_phi_fu_213_p6 = col_reg_562;
        end else begin
            col_i3_phi_fu_213_p6 = col_i3_reg_209;
        end
    end else begin
        col_i3_phi_fu_213_p6 = col_i3_reg_209;
    end
end

always @ (*) begin
    if ((1'b1 == ap_reg_ppiten_pp0_it2)) begin
        if (~(1'b0 == ap_reg_ppstg_exitcond_flatten_reg_505_pp0_iter1)) begin
            do_init_phi_fu_155_p6 = 1'b1;
        end else if ((1'b0 == ap_reg_ppstg_exitcond_flatten_reg_505_pp0_iter1)) begin
            do_init_phi_fu_155_p6 = 1'b0;
        end else begin
            do_init_phi_fu_155_p6 = do_init_reg_151;
        end
    end else begin
        do_init_phi_fu_155_p6 = do_init_reg_151;
    end
end

always @ (*) begin
    if ((1'b1 == ap_reg_ppiten_pp0_it3)) begin
        if (~(1'b0 == ap_reg_ppstg_exitcond_flatten_reg_505_pp0_iter2)) begin
            exitcond_i4_phi_fu_199_p6 = 1'b0;
        end else if ((1'b0 == ap_reg_ppstg_exitcond_flatten_reg_505_pp0_iter2)) begin
            exitcond_i4_phi_fu_199_p6 = exitcond_i_reg_567;
        end else begin
            exitcond_i4_phi_fu_199_p6 = exitcond_i4_reg_195;
        end
    end else begin
        exitcond_i4_phi_fu_199_p6 = exitcond_i4_reg_195;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it0))) begin
        img_in_data_stream_V1_blk_n = img_in_data_stream_V1_empty_n;
    end else begin
        img_in_data_stream_V1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it0) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_69 & (1'b1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_93 & (1'b1 == ap_reg_ppiten_pp0_it3)) | (ap_done_reg == 1'b1)))) begin
        img_in_data_stream_V1_read = 1'b1;
    end else begin
        img_in_data_stream_V1_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it0))) begin
        img_in_data_stream_V2_blk_n = img_in_data_stream_V2_empty_n;
    end else begin
        img_in_data_stream_V2_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it0) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_69 & (1'b1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_93 & (1'b1 == ap_reg_ppiten_pp0_it3)) | (ap_done_reg == 1'b1)))) begin
        img_in_data_stream_V2_read = 1'b1;
    end else begin
        img_in_data_stream_V2_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it0))) begin
        img_in_data_stream_V_blk_n = img_in_data_stream_V_empty_n;
    end else begin
        img_in_data_stream_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it0) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_69 & (1'b1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_93 & (1'b1 == ap_reg_ppiten_pp0_it3)) | (ap_done_reg == 1'b1)))) begin
        img_in_data_stream_V_read = 1'b1;
    end else begin
        img_in_data_stream_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_reg_ppiten_pp0_it3)) begin
        img_out_data_stream_V3_blk_n = img_out_data_stream_V3_full_n;
    end else begin
        img_out_data_stream_V3_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it3) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_69 & (1'b1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_93 & (1'b1 == ap_reg_ppiten_pp0_it3)) | (ap_done_reg == 1'b1)))) begin
        img_out_data_stream_V3_write = 1'b1;
    end else begin
        img_out_data_stream_V3_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_reg_ppiten_pp0_it3)) begin
        img_out_data_stream_V4_blk_n = img_out_data_stream_V4_full_n;
    end else begin
        img_out_data_stream_V4_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it3) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_69 & (1'b1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_93 & (1'b1 == ap_reg_ppiten_pp0_it3)) | (ap_done_reg == 1'b1)))) begin
        img_out_data_stream_V4_write = 1'b1;
    end else begin
        img_out_data_stream_V4_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_reg_ppiten_pp0_it3)) begin
        img_out_data_stream_V_blk_n = img_out_data_stream_V_full_n;
    end else begin
        img_out_data_stream_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it3) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_69 & (1'b1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_93 & (1'b1 == ap_reg_ppiten_pp0_it3)) | (ap_done_reg == 1'b1)))) begin
        img_out_data_stream_V_write = 1'b1;
    end else begin
        img_out_data_stream_V_write = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_111) begin
        if (~(1'b0 == exitcond_flatten_reg_505)) begin
            indvar_flatten2_phi_fu_171_p6 = ap_const_lv21_0;
        end else if ((1'b0 == exitcond_flatten_reg_505)) begin
            indvar_flatten2_phi_fu_171_p6 = indvar_flatten_next_reg_500;
        end else begin
            indvar_flatten2_phi_fu_171_p6 = indvar_flatten2_reg_167;
        end
    end else begin
        indvar_flatten2_phi_fu_171_p6 = indvar_flatten2_reg_167;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & ~(1'b0 == do_init_phi_fu_155_p6) & (1'b1 == ap_reg_ppiten_pp0_it1))) begin
        mode_blk_n = mode_empty_n;
    end else begin
        mode_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it2) & (1'b0 == do_init_reg_151))) begin
        mode_load_phi_phi_fu_227_p4 = mode_load_rewind_phi_fu_185_p6;
    end else begin
        mode_load_phi_phi_fu_227_p4 = ap_reg_phiprechg_mode_load_phi_reg_223pp0_it2;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it3) & (1'b0 == ap_reg_ppstg_exitcond_flatten_reg_505_pp0_iter2))) begin
        mode_load_rewind_phi_fu_185_p6 = mode_load_phi_reg_223;
    end else begin
        mode_load_rewind_phi_fu_185_p6 = mode_load_rewind_reg_181;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & ~(1'b0 == do_init_phi_fu_155_p6) & (1'b1 == ap_reg_ppiten_pp0_it1) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_69 & (1'b1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_93 & (1'b1 == ap_reg_ppiten_pp0_it3)) | (ap_done_reg == 1'b1)))) begin
        mode_read = 1'b1;
    end else begin
        mode_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : begin
            if (~ap_sig_171) begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_pp0_stg0_fsm_1 : begin
            if (~(1'b1 == ap_sig_pprstidle_pp0)) begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_1;
            end else if ((~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_69 & (1'b1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_93 & (1'b1 == ap_reg_ppiten_pp0_it3)) | (ap_done_reg == 1'b1)) & (1'b1 == ap_sig_pprstidle_pp0))) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_reg_phiprechg_mode_load_phi_reg_223pp0_it1 = 'bx;

assign ap_reg_ppiten_pp0_it0 = ap_start;

always @ (*) begin
    ap_sig_111 = ((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it1));
end

always @ (*) begin
    ap_sig_167 = ((1'b1 == ap_reg_ppiten_pp0_it2) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_69 & (1'b1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_93 & (1'b1 == ap_reg_ppiten_pp0_it3)) | (ap_done_reg == 1'b1)));
end

always @ (*) begin
    ap_sig_171 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end

always @ (*) begin
    ap_sig_184 = ((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it1) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_69 & (1'b1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_93 & (1'b1 == ap_reg_ppiten_pp0_it3)) | (ap_done_reg == 1'b1)));
end

always @ (*) begin
    ap_sig_20 = (ap_CS_fsm[ap_const_lv32_0] == 1'b1);
end

always @ (*) begin
    ap_sig_36 = (1'b1 == ap_CS_fsm[ap_const_lv32_1]);
end

always @ (*) begin
    ap_sig_58 = ((img_in_data_stream_V_empty_n == 1'b0) | (img_in_data_stream_V1_empty_n == 1'b0) | (img_in_data_stream_V2_empty_n == 1'b0));
end

always @ (*) begin
    ap_sig_69 = ((mode_empty_n == 1'b0) & ~(1'b0 == do_init_phi_fu_155_p6));
end

always @ (*) begin
    ap_sig_93 = ((img_out_data_stream_V_full_n == 1'b0) | (img_out_data_stream_V3_full_n == 1'b0) | (img_out_data_stream_V4_full_n == 1'b0));
end

assign col_fu_309_p2 = (col_i_mid2_fu_256_p3 + ap_const_lv11_1);

assign col_i_mid2_fu_256_p3 = ((exitcond_i4_phi_fu_199_p6[0:0] === 1'b1) ? ap_const_lv11_0 : col_i3_phi_fu_213_p6);

assign exitcond_flatten_fu_241_p2 = ((indvar_flatten2_phi_fu_171_p6 == ap_const_lv21_1FA3FF) ? 1'b1 : 1'b0);

assign exitcond_i_fu_315_p2 = ((col_fu_309_p2 == ap_const_lv11_780) ? 1'b1 : 1'b0);

assign grp_fu_460_p0 = grp_fu_460_p00;

assign grp_fu_460_p00 = ap_reg_ppstg_tmp_18_reg_476_pp0_iter1;

assign grp_fu_460_p1 = ap_const_lv14_1D;

assign grp_fu_467_p0 = grp_fu_467_p00;

assign grp_fu_467_p00 = ap_reg_ppstg_tmp_reg_492_pp0_iter1;

assign grp_fu_467_p1 = ap_const_lv16_4D;

assign i_op_assign_8_fu_321_p3 = ((tmp_42_i_reg_555[0:0] === 1'b1) ? ap_const_lv8_0 : ap_reg_ppstg_tmp_18_reg_476_pp0_iter2);

assign i_op_assign_9_fu_327_p3 = ((tmp_42_i_reg_555[0:0] === 1'b1) ? ap_const_lv8_0 : ap_reg_ppstg_tmp_19_reg_484_pp0_iter2);

assign i_op_assign_s_fu_333_p3 = ((tmp_42_i_reg_555[0:0] === 1'b1) ? ap_const_lv8_0 : ap_reg_ppstg_tmp_reg_492_pp0_iter2);

assign img_out_data_stream_V3_din = ((sel_tmp13_fu_389_p2[0:0] === 1'b1) ? ap_reg_ppstg_tmp_19_reg_484_pp0_iter2 : sel_tmp16_fu_414_p3);

assign img_out_data_stream_V4_din = ((sel_tmp13_fu_389_p2[0:0] === 1'b1) ? ap_reg_ppstg_tmp_reg_492_pp0_iter2 : sel_tmp19_fu_442_p3);

assign img_out_data_stream_V_din = ((sel_tmp13_fu_389_p2[0:0] === 1'b1) ? ap_reg_ppstg_tmp_18_reg_476_pp0_iter2 : sel_tmp9_fu_370_p3);

assign indvar_flatten_next_fu_235_p2 = (indvar_flatten2_phi_fu_171_p6 + ap_const_lv21_1);

assign p_Val2_6_i_fu_250_p0 = p_Val2_6_i_fu_250_p00;

assign p_Val2_6_i_fu_250_p00 = tmp_19_reg_484;

assign p_Val2_6_i_fu_250_p2 = (p_Val2_6_i_fu_250_p0 * $signed('h96));

assign sel_tmp12_fu_378_p2 = (sel_tmp6_demorgan_fu_361_p2 ^ 1'b1);

assign sel_tmp13_fu_389_p2 = (tmp16_fu_384_p2 & tmp_39_i_reg_544);

assign sel_tmp14_fu_402_p3 = ((tmp_i_reg_519[0:0] === 1'b1) ? ap_reg_ppstg_tmp_19_reg_484_pp0_iter2 : gray_reg_534);

assign sel_tmp15_fu_407_p3 = ((sel_tmp2_fu_349_p2[0:0] === 1'b1) ? gray_reg_534 : sel_tmp14_fu_402_p3);

assign sel_tmp16_fu_414_p3 = ((sel_tmp8_demorgan_fu_365_p2[0:0] === 1'b1) ? sel_tmp15_fu_407_p3 : i_op_assign_9_fu_327_p3);

assign sel_tmp17_fu_430_p3 = ((tmp_i_reg_519[0:0] === 1'b1) ? ap_reg_ppstg_tmp_reg_492_pp0_iter2 : gray_reg_534);

assign sel_tmp18_fu_435_p3 = ((sel_tmp2_fu_349_p2[0:0] === 1'b1) ? gray_reg_534 : sel_tmp17_fu_430_p3);

assign sel_tmp19_fu_442_p3 = ((sel_tmp8_demorgan_fu_365_p2[0:0] === 1'b1) ? sel_tmp18_fu_435_p3 : i_op_assign_s_fu_333_p3);

assign sel_tmp1_fu_344_p2 = (tmp_i_reg_519 ^ 1'b1);

assign sel_tmp2_fu_349_p2 = (tmp_i_69_reg_528 & sel_tmp1_fu_344_p2);

assign sel_tmp3_fu_354_p3 = ((sel_tmp2_fu_349_p2[0:0] === 1'b1) ? gray_reg_534 : sel_tmp_fu_339_p3);

assign sel_tmp6_demorgan_fu_361_p2 = (tmp_i_reg_519 | tmp_i_69_reg_528);

assign sel_tmp8_demorgan_fu_365_p2 = (sel_tmp6_demorgan_fu_361_p2 | tmp_39_i_reg_544);

assign sel_tmp9_fu_370_p3 = ((sel_tmp8_demorgan_fu_365_p2[0:0] === 1'b1) ? sel_tmp3_fu_354_p3 : i_op_assign_8_fu_321_p3);

assign sel_tmp_fu_339_p3 = ((tmp_i_reg_519[0:0] === 1'b1) ? ap_reg_ppstg_tmp_18_reg_476_pp0_iter2 : gray_reg_534);

assign tmp16_fu_384_p2 = (tmp_41_i_reg_550 & sel_tmp12_fu_378_p2);

assign tmp_39_i_fu_291_p2 = ((mode_load_phi_phi_fu_227_p4 == ap_const_lv8_2) ? 1'b1 : 1'b0);

assign tmp_41_i_fu_297_p2 = ((col_i_mid2_fu_256_p3 < ap_const_lv11_3C1) ? 1'b1 : 1'b0);

assign tmp_42_i_fu_303_p2 = ((mode_load_phi_phi_fu_227_p4 == ap_const_lv8_3) ? 1'b1 : 1'b0);

assign tmp_i_69_fu_270_p2 = ((mode_load_phi_phi_fu_227_p4 == ap_const_lv8_1) ? 1'b1 : 1'b0);

assign tmp_i_fu_264_p2 = ((mode_load_phi_phi_fu_227_p4 == ap_const_lv8_0) ? 1'b1 : 1'b0);

always @ (posedge ap_clk) begin
    p_Val2_6_i_reg_514[0] <= 1'b0;
end

endmodule //filter_colorMode92
