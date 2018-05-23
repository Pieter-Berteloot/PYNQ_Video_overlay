// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module filter_split (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        img_in_data_stream_0_V_dout,
        img_in_data_stream_0_V_empty_n,
        img_in_data_stream_0_V_read,
        img_in_data_stream_1_V_dout,
        img_in_data_stream_1_V_empty_n,
        img_in_data_stream_1_V_read,
        img_in_data_stream_2_V_dout,
        img_in_data_stream_2_V_empty_n,
        img_in_data_stream_2_V_read,
        img_out_data_stream_0_V_din,
        img_out_data_stream_0_V_full_n,
        img_out_data_stream_0_V_write,
        img_out_data_stream_1_V_din,
        img_out_data_stream_1_V_full_n,
        img_out_data_stream_1_V_write,
        img_out_data_stream_2_V_din,
        img_out_data_stream_2_V_full_n,
        img_out_data_stream_2_V_write,
        dir_dout,
        dir_empty_n,
        dir_read,
        index_dout,
        index_empty_n,
        index_read
);

parameter    ap_ST_st1_fsm_0 = 4'b1;
parameter    ap_ST_st2_fsm_1 = 4'b10;
parameter    ap_ST_pp0_stg0_fsm_2 = 4'b100;
parameter    ap_ST_st6_fsm_3 = 4'b1000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv11_0 = 11'b00000000000;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv8_0 = 8'b00000000;
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
input  [7:0] img_in_data_stream_0_V_dout;
input   img_in_data_stream_0_V_empty_n;
output   img_in_data_stream_0_V_read;
input  [7:0] img_in_data_stream_1_V_dout;
input   img_in_data_stream_1_V_empty_n;
output   img_in_data_stream_1_V_read;
input  [7:0] img_in_data_stream_2_V_dout;
input   img_in_data_stream_2_V_empty_n;
output   img_in_data_stream_2_V_read;
output  [7:0] img_out_data_stream_0_V_din;
input   img_out_data_stream_0_V_full_n;
output   img_out_data_stream_0_V_write;
output  [7:0] img_out_data_stream_1_V_din;
input   img_out_data_stream_1_V_full_n;
output   img_out_data_stream_1_V_write;
output  [7:0] img_out_data_stream_2_V_din;
input   img_out_data_stream_2_V_full_n;
output   img_out_data_stream_2_V_write;
input  [7:0] dir_dout;
input   dir_empty_n;
output   dir_read;
input  [31:0] index_dout;
input   index_empty_n;
output   index_read;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg img_in_data_stream_0_V_read;
reg img_in_data_stream_1_V_read;
reg img_in_data_stream_2_V_read;
reg img_out_data_stream_0_V_write;
reg img_out_data_stream_1_V_write;
reg img_out_data_stream_2_V_write;
reg dir_read;
reg index_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_22;
reg    img_in_data_stream_0_V_blk_n;
reg    ap_sig_cseq_ST_pp0_stg0_fsm_2;
reg    ap_sig_67;
reg    ap_reg_ppiten_pp0_it1;
reg    ap_reg_ppiten_pp0_it0;
reg    ap_reg_ppiten_pp0_it2;
reg   [0:0] exitcond_i_reg_264;
reg    img_in_data_stream_1_V_blk_n;
reg    img_in_data_stream_2_V_blk_n;
reg    img_out_data_stream_0_V_blk_n;
reg   [0:0] ap_reg_ppstg_exitcond_i_reg_264_pp0_iter1;
reg    img_out_data_stream_1_V_blk_n;
reg    img_out_data_stream_2_V_blk_n;
reg    dir_blk_n;
reg    index_blk_n;
reg   [10:0] col_i_reg_136;
reg   [31:0] index_read_reg_239;
reg    ap_sig_104;
wire   [0:0] tmp_i_fu_147_p2;
reg   [0:0] tmp_i_reg_244;
wire   [31:0] tmp_1_i_fu_153_p2;
reg   [31:0] tmp_1_i_reg_250;
wire   [0:0] exitcond1_i_fu_159_p2;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_118;
wire   [10:0] row_fu_165_p2;
reg   [10:0] row_reg_259;
wire   [0:0] exitcond_i_fu_175_p2;
reg    ap_sig_131;
reg    ap_sig_141;
wire   [10:0] col_fu_181_p2;
wire   [0:0] tmp_6_i_fu_187_p2;
reg   [0:0] tmp_6_i_reg_273;
wire   [0:0] tmp_7_i_fu_192_p2;
reg   [0:0] tmp_7_i_reg_279;
reg   [7:0] tmp_1_reg_285;
wire   [7:0] tmp_2_fu_225_p3;
reg   [7:0] tmp_2_reg_290;
wire   [7:0] tmp_3_fu_232_p3;
reg   [7:0] tmp_3_reg_295;
reg   [10:0] row_i_reg_125;
reg    ap_sig_cseq_ST_st6_fsm_3;
reg    ap_sig_177;
wire   [31:0] col_cast66_i_fu_171_p1;
wire   [7:0] p_scl_val_1_i_fu_197_p3;
wire   [7:0] p_scl_val_1_i_13_fu_211_p3;
wire   [7:0] p_tmp_2_load_i_fu_204_p3;
wire   [7:0] p_tmp_2_load_2_i_fu_218_p3;
reg   [3:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'b1;
#0 ap_reg_ppiten_pp0_it1 = 1'b0;
#0 ap_reg_ppiten_pp0_it0 = 1'b0;
#0 ap_reg_ppiten_pp0_it2 = 1'b0;
end

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
        end else if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(1'b0 == exitcond1_i_fu_159_p2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_131) | ((1'b1 == ap_reg_ppiten_pp0_it2) & ap_sig_141)) & ~(1'b0 == exitcond_i_fu_175_p2))) begin
            ap_reg_ppiten_pp0_it0 <= 1'b0;
        end else if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (1'b0 == exitcond1_i_fu_159_p2))) begin
            ap_reg_ppiten_pp0_it0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_131) | ((1'b1 == ap_reg_ppiten_pp0_it2) & ap_sig_141)) & (1'b0 == exitcond_i_fu_175_p2))) begin
            ap_reg_ppiten_pp0_it1 <= 1'b1;
        end else if ((((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (1'b0 == exitcond1_i_fu_159_p2)) | ((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_131) | ((1'b1 == ap_reg_ppiten_pp0_it2) & ap_sig_141)) & ~(1'b0 == exitcond_i_fu_175_p2)))) begin
            ap_reg_ppiten_pp0_it1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it2 <= 1'b0;
    end else begin
        if (~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_131) | ((1'b1 == ap_reg_ppiten_pp0_it2) & ap_sig_141))) begin
            ap_reg_ppiten_pp0_it2 <= ap_reg_ppiten_pp0_it1;
        end else if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (1'b0 == exitcond1_i_fu_159_p2))) begin
            ap_reg_ppiten_pp0_it2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it0) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_131) | ((1'b1 == ap_reg_ppiten_pp0_it2) & ap_sig_141)) & (1'b0 == exitcond_i_fu_175_p2))) begin
        col_i_reg_136 <= col_fu_181_p2;
    end else if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (1'b0 == exitcond1_i_fu_159_p2))) begin
        col_i_reg_136 <= ap_const_lv11_0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st6_fsm_3)) begin
        row_i_reg_125 <= row_reg_259;
    end else if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_104)) begin
        row_i_reg_125 <= ap_const_lv11_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_131) | ((1'b1 == ap_reg_ppiten_pp0_it2) & ap_sig_141)))) begin
        ap_reg_ppstg_exitcond_i_reg_264_pp0_iter1 <= exitcond_i_reg_264;
        exitcond_i_reg_264 <= exitcond_i_fu_175_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_104)) begin
        index_read_reg_239 <= index_dout;
        tmp_1_i_reg_250 <= tmp_1_i_fu_153_p2;
        tmp_i_reg_244 <= tmp_i_fu_147_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        row_reg_259 <= row_fu_165_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (exitcond_i_reg_264 == 1'b0) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_131) | ((1'b1 == ap_reg_ppiten_pp0_it2) & ap_sig_141)))) begin
        tmp_1_reg_285 <= img_in_data_stream_0_V_dout;
        tmp_2_reg_290 <= tmp_2_fu_225_p3;
        tmp_3_reg_295 <= tmp_3_fu_232_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_131) | ((1'b1 == ap_reg_ppiten_pp0_it2) & ap_sig_141)) & (1'b0 == exitcond_i_fu_175_p2))) begin
        tmp_6_i_reg_273 <= tmp_6_i_fu_187_p2;
        tmp_7_i_reg_279 <= tmp_7_i_fu_192_p2;
    end
end

always @ (*) begin
    if (((1'b1 == ap_done_reg) | ((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(1'b0 == exitcond1_i_fu_159_p2)))) begin
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
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(1'b0 == exitcond1_i_fu_159_p2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_67) begin
        ap_sig_cseq_ST_pp0_stg0_fsm_2 = 1'b1;
    end else begin
        ap_sig_cseq_ST_pp0_stg0_fsm_2 = 1'b0;
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
    if (ap_sig_118) begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_177) begin
        ap_sig_cseq_ST_st6_fsm_3 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st6_fsm_3 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~((ap_start == 1'b0) | (ap_done_reg == 1'b1)))) begin
        dir_blk_n = dir_empty_n;
    end else begin
        dir_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_104)) begin
        dir_read = 1'b1;
    end else begin
        dir_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond_i_reg_264 == 1'b0))) begin
        img_in_data_stream_0_V_blk_n = img_in_data_stream_0_V_empty_n;
    end else begin
        img_in_data_stream_0_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond_i_reg_264 == 1'b0) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_131) | ((1'b1 == ap_reg_ppiten_pp0_it2) & ap_sig_141)))) begin
        img_in_data_stream_0_V_read = 1'b1;
    end else begin
        img_in_data_stream_0_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond_i_reg_264 == 1'b0))) begin
        img_in_data_stream_1_V_blk_n = img_in_data_stream_1_V_empty_n;
    end else begin
        img_in_data_stream_1_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond_i_reg_264 == 1'b0) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_131) | ((1'b1 == ap_reg_ppiten_pp0_it2) & ap_sig_141)))) begin
        img_in_data_stream_1_V_read = 1'b1;
    end else begin
        img_in_data_stream_1_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond_i_reg_264 == 1'b0))) begin
        img_in_data_stream_2_V_blk_n = img_in_data_stream_2_V_empty_n;
    end else begin
        img_in_data_stream_2_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond_i_reg_264 == 1'b0) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_131) | ((1'b1 == ap_reg_ppiten_pp0_it2) & ap_sig_141)))) begin
        img_in_data_stream_2_V_read = 1'b1;
    end else begin
        img_in_data_stream_2_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it2) & (1'b0 == ap_reg_ppstg_exitcond_i_reg_264_pp0_iter1))) begin
        img_out_data_stream_0_V_blk_n = img_out_data_stream_0_V_full_n;
    end else begin
        img_out_data_stream_0_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it2) & (1'b0 == ap_reg_ppstg_exitcond_i_reg_264_pp0_iter1) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_131) | ((1'b1 == ap_reg_ppiten_pp0_it2) & ap_sig_141)))) begin
        img_out_data_stream_0_V_write = 1'b1;
    end else begin
        img_out_data_stream_0_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it2) & (1'b0 == ap_reg_ppstg_exitcond_i_reg_264_pp0_iter1))) begin
        img_out_data_stream_1_V_blk_n = img_out_data_stream_1_V_full_n;
    end else begin
        img_out_data_stream_1_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it2) & (1'b0 == ap_reg_ppstg_exitcond_i_reg_264_pp0_iter1) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_131) | ((1'b1 == ap_reg_ppiten_pp0_it2) & ap_sig_141)))) begin
        img_out_data_stream_1_V_write = 1'b1;
    end else begin
        img_out_data_stream_1_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it2) & (1'b0 == ap_reg_ppstg_exitcond_i_reg_264_pp0_iter1))) begin
        img_out_data_stream_2_V_blk_n = img_out_data_stream_2_V_full_n;
    end else begin
        img_out_data_stream_2_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it2) & (1'b0 == ap_reg_ppstg_exitcond_i_reg_264_pp0_iter1) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_131) | ((1'b1 == ap_reg_ppiten_pp0_it2) & ap_sig_141)))) begin
        img_out_data_stream_2_V_write = 1'b1;
    end else begin
        img_out_data_stream_2_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~((ap_start == 1'b0) | (ap_done_reg == 1'b1)))) begin
        index_blk_n = index_empty_n;
    end else begin
        index_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_104)) begin
        index_read = 1'b1;
    end else begin
        index_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : begin
            if (~ap_sig_104) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_st2_fsm_1 : begin
            if (~(1'b0 == exitcond1_i_fu_159_p2)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            end
        end
        ap_ST_pp0_stg0_fsm_2 : begin
            if ((~((1'b1 == ap_reg_ppiten_pp0_it2) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_131) | ((1'b1 == ap_reg_ppiten_pp0_it2) & ap_sig_141)) & ~(1'b1 == ap_reg_ppiten_pp0_it1)) & ~((1'b1 == ap_reg_ppiten_pp0_it0) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_131) | ((1'b1 == ap_reg_ppiten_pp0_it2) & ap_sig_141)) & ~(1'b0 == exitcond_i_fu_175_p2) & ~(1'b1 == ap_reg_ppiten_pp0_it1)))) begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            end else if ((((1'b1 == ap_reg_ppiten_pp0_it2) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_131) | ((1'b1 == ap_reg_ppiten_pp0_it2) & ap_sig_141)) & ~(1'b1 == ap_reg_ppiten_pp0_it1)) | ((1'b1 == ap_reg_ppiten_pp0_it0) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_131) | ((1'b1 == ap_reg_ppiten_pp0_it2) & ap_sig_141)) & ~(1'b0 == exitcond_i_fu_175_p2) & ~(1'b1 == ap_reg_ppiten_pp0_it1)))) begin
                ap_NS_fsm = ap_ST_st6_fsm_3;
            end else begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            end
        end
        ap_ST_st6_fsm_3 : begin
            ap_NS_fsm = ap_ST_st2_fsm_1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

always @ (*) begin
    ap_sig_104 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | (dir_empty_n == 1'b0) | (index_empty_n == 1'b0));
end

always @ (*) begin
    ap_sig_118 = (1'b1 == ap_CS_fsm[ap_const_lv32_1]);
end

always @ (*) begin
    ap_sig_131 = (((exitcond_i_reg_264 == 1'b0) & (img_in_data_stream_0_V_empty_n == 1'b0)) | ((exitcond_i_reg_264 == 1'b0) & (img_in_data_stream_1_V_empty_n == 1'b0)) | ((exitcond_i_reg_264 == 1'b0) & (img_in_data_stream_2_V_empty_n == 1'b0)));
end

always @ (*) begin
    ap_sig_141 = (((1'b0 == ap_reg_ppstg_exitcond_i_reg_264_pp0_iter1) & (img_out_data_stream_0_V_full_n == 1'b0)) | ((1'b0 == ap_reg_ppstg_exitcond_i_reg_264_pp0_iter1) & (img_out_data_stream_1_V_full_n == 1'b0)) | ((1'b0 == ap_reg_ppstg_exitcond_i_reg_264_pp0_iter1) & (img_out_data_stream_2_V_full_n == 1'b0)));
end

always @ (*) begin
    ap_sig_177 = (1'b1 == ap_CS_fsm[ap_const_lv32_3]);
end

always @ (*) begin
    ap_sig_22 = (ap_CS_fsm[ap_const_lv32_0] == 1'b1);
end

always @ (*) begin
    ap_sig_67 = (1'b1 == ap_CS_fsm[ap_const_lv32_2]);
end

assign col_cast66_i_fu_171_p1 = col_i_reg_136;

assign col_fu_181_p2 = (col_i_reg_136 + ap_const_lv11_1);

assign exitcond1_i_fu_159_p2 = ((row_i_reg_125 == ap_const_lv11_438) ? 1'b1 : 1'b0);

assign exitcond_i_fu_175_p2 = ((col_i_reg_136 == ap_const_lv11_780) ? 1'b1 : 1'b0);

assign img_out_data_stream_0_V_din = tmp_1_reg_285;

assign img_out_data_stream_1_V_din = tmp_2_reg_290;

assign img_out_data_stream_2_V_din = tmp_3_reg_295;

assign p_scl_val_1_i_13_fu_211_p3 = ((tmp_7_i_reg_279[0:0] === 1'b1) ? ap_const_lv8_0 : img_in_data_stream_1_V_dout);

assign p_scl_val_1_i_fu_197_p3 = ((tmp_6_i_reg_273[0:0] === 1'b1) ? ap_const_lv8_0 : img_in_data_stream_1_V_dout);

assign p_tmp_2_load_2_i_fu_218_p3 = ((tmp_7_i_reg_279[0:0] === 1'b1) ? ap_const_lv8_0 : img_in_data_stream_2_V_dout);

assign p_tmp_2_load_i_fu_204_p3 = ((tmp_6_i_reg_273[0:0] === 1'b1) ? ap_const_lv8_0 : img_in_data_stream_2_V_dout);

assign row_fu_165_p2 = (row_i_reg_125 + ap_const_lv11_1);

assign tmp_1_i_fu_153_p2 = (index_dout + ap_const_lv32_1);

assign tmp_2_fu_225_p3 = ((tmp_i_reg_244[0:0] === 1'b1) ? p_scl_val_1_i_fu_197_p3 : p_scl_val_1_i_13_fu_211_p3);

assign tmp_3_fu_232_p3 = ((tmp_i_reg_244[0:0] === 1'b1) ? p_tmp_2_load_i_fu_204_p3 : p_tmp_2_load_2_i_fu_218_p3);

assign tmp_6_i_fu_187_p2 = (($signed(col_cast66_i_fu_171_p1) < $signed(tmp_1_i_reg_250)) ? 1'b1 : 1'b0);

assign tmp_7_i_fu_192_p2 = (($signed(col_cast66_i_fu_171_p1) > $signed(index_read_reg_239)) ? 1'b1 : 1'b0);

assign tmp_i_fu_147_p2 = ((dir_dout == ap_const_lv8_0) ? 1'b1 : 1'b0);

endmodule //filter_split
