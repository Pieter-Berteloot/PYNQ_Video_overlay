// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module filter_Mat2AXIvideo (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        img_data_stream_0_V_dout,
        img_data_stream_0_V_empty_n,
        img_data_stream_0_V_read,
        img_data_stream_1_V_dout,
        img_data_stream_1_V_empty_n,
        img_data_stream_1_V_read,
        img_data_stream_2_V_dout,
        img_data_stream_2_V_empty_n,
        img_data_stream_2_V_read,
        output_r_TDATA,
        output_r_TVALID,
        output_r_TREADY,
        output_r_TKEEP,
        output_r_TSTRB,
        output_r_TUSER,
        output_r_TLAST,
        output_r_TID,
        output_r_TDEST
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
parameter    ap_const_lv3_7 = 3'b111;
parameter    ap_const_lv3_0 = 3'b000;
parameter    ap_const_lv11_438 = 11'b10000111000;
parameter    ap_const_lv11_1 = 11'b1;
parameter    ap_const_lv11_780 = 11'b11110000000;
parameter    ap_const_lv11_77F = 11'b11101111111;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [7:0] img_data_stream_0_V_dout;
input   img_data_stream_0_V_empty_n;
output   img_data_stream_0_V_read;
input  [7:0] img_data_stream_1_V_dout;
input   img_data_stream_1_V_empty_n;
output   img_data_stream_1_V_read;
input  [7:0] img_data_stream_2_V_dout;
input   img_data_stream_2_V_empty_n;
output   img_data_stream_2_V_read;
output  [23:0] output_r_TDATA;
output   output_r_TVALID;
input   output_r_TREADY;
output  [2:0] output_r_TKEEP;
output  [2:0] output_r_TSTRB;
output  [0:0] output_r_TUSER;
output  [0:0] output_r_TLAST;
output  [0:0] output_r_TID;
output  [0:0] output_r_TDEST;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg img_data_stream_0_V_read;
reg img_data_stream_1_V_read;
reg img_data_stream_2_V_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_22;
reg    AXI_video_strm_V_data_V_1_vld_in;
reg    AXI_video_strm_V_data_V_1_ack_in;
wire    AXI_video_strm_V_data_V_1_ack_out;
reg   [23:0] AXI_video_strm_V_data_V_1_data_reg;
reg    AXI_video_strm_V_data_V_1_sRdy;
reg    AXI_video_strm_V_data_V_1_mVld;
reg    AXI_video_strm_V_data_V_1_areset_d;
reg    AXI_video_strm_V_keep_V_1_vld_in;
wire    AXI_video_strm_V_keep_V_1_ack_out;
reg    AXI_video_strm_V_keep_V_1_sRdy;
reg    AXI_video_strm_V_keep_V_1_mVld;
reg    AXI_video_strm_V_keep_V_1_areset_d;
reg    AXI_video_strm_V_strb_V_1_vld_in;
wire    AXI_video_strm_V_strb_V_1_ack_out;
reg    AXI_video_strm_V_strb_V_1_sRdy;
reg    AXI_video_strm_V_strb_V_1_mVld;
reg    AXI_video_strm_V_strb_V_1_areset_d;
reg    AXI_video_strm_V_user_V_1_vld_in;
wire    AXI_video_strm_V_user_V_1_ack_out;
reg   [0:0] AXI_video_strm_V_user_V_1_data_reg;
reg    AXI_video_strm_V_user_V_1_sRdy;
reg    AXI_video_strm_V_user_V_1_mVld;
reg    AXI_video_strm_V_user_V_1_areset_d;
reg    AXI_video_strm_V_last_V_1_vld_in;
wire    AXI_video_strm_V_last_V_1_ack_out;
reg   [0:0] AXI_video_strm_V_last_V_1_data_reg;
reg    AXI_video_strm_V_last_V_1_sRdy;
reg    AXI_video_strm_V_last_V_1_mVld;
reg    AXI_video_strm_V_last_V_1_areset_d;
reg    AXI_video_strm_V_id_V_1_vld_in;
wire    AXI_video_strm_V_id_V_1_ack_out;
reg    AXI_video_strm_V_id_V_1_sRdy;
reg    AXI_video_strm_V_id_V_1_mVld;
reg    AXI_video_strm_V_id_V_1_areset_d;
reg    AXI_video_strm_V_dest_V_1_vld_in;
wire    AXI_video_strm_V_dest_V_1_ack_out;
reg    AXI_video_strm_V_dest_V_1_sRdy;
reg    AXI_video_strm_V_dest_V_1_mVld;
reg    AXI_video_strm_V_dest_V_1_areset_d;
reg    img_data_stream_0_V_blk_n;
reg    ap_sig_cseq_ST_pp0_stg0_fsm_2;
reg    ap_sig_196;
reg    ap_reg_ppiten_pp0_it1;
reg    ap_reg_ppiten_pp0_it0;
reg    ap_reg_ppiten_pp0_it2;
reg   [0:0] exitcond8_reg_230;
reg    img_data_stream_1_V_blk_n;
reg    img_data_stream_2_V_blk_n;
reg    output_r_TDATA_blk_n;
reg   [0:0] ap_reg_ppstg_exitcond8_reg_230_pp0_iter1;
reg   [10:0] p_3_reg_148;
wire   [0:0] exitcond7_fu_164_p2;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_225;
reg    ap_sig_240;
wire   [10:0] i_V_fu_170_p2;
reg   [10:0] i_V_reg_225;
wire   [0:0] exitcond8_fu_176_p2;
reg    ap_sig_256;
wire   [10:0] j_V_fu_182_p2;
wire   [0:0] axi_last_V_fu_188_p2;
reg   [0:0] axi_last_V_reg_239;
wire   [23:0] tmp_data_V_fu_198_p4;
reg   [10:0] p_s_reg_137;
reg    ap_sig_292;
reg    ap_sig_cseq_ST_st6_fsm_3;
reg    ap_sig_300;
reg   [0:0] tmp_user_V_fu_86;
reg   [3:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'b1;
#0 AXI_video_strm_V_data_V_1_mVld = 1'b0;
#0 AXI_video_strm_V_keep_V_1_mVld = 1'b0;
#0 AXI_video_strm_V_strb_V_1_mVld = 1'b0;
#0 AXI_video_strm_V_user_V_1_mVld = 1'b0;
#0 AXI_video_strm_V_last_V_1_mVld = 1'b0;
#0 AXI_video_strm_V_id_V_1_mVld = 1'b0;
#0 AXI_video_strm_V_dest_V_1_mVld = 1'b0;
#0 ap_reg_ppiten_pp0_it1 = 1'b0;
#0 ap_reg_ppiten_pp0_it0 = 1'b0;
#0 ap_reg_ppiten_pp0_it2 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        AXI_video_strm_V_data_V_1_mVld <= 1'b0;
    end else begin
        if ((1'b1 == AXI_video_strm_V_data_V_1_vld_in)) begin
            AXI_video_strm_V_data_V_1_mVld <= 1'b1;
        end else if ((1'b1 == AXI_video_strm_V_data_V_1_ack_out)) begin
            AXI_video_strm_V_data_V_1_mVld <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        AXI_video_strm_V_dest_V_1_mVld <= 1'b0;
    end else begin
        if ((1'b1 == AXI_video_strm_V_dest_V_1_vld_in)) begin
            AXI_video_strm_V_dest_V_1_mVld <= 1'b1;
        end else if ((1'b1 == AXI_video_strm_V_dest_V_1_ack_out)) begin
            AXI_video_strm_V_dest_V_1_mVld <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        AXI_video_strm_V_id_V_1_mVld <= 1'b0;
    end else begin
        if ((1'b1 == AXI_video_strm_V_id_V_1_vld_in)) begin
            AXI_video_strm_V_id_V_1_mVld <= 1'b1;
        end else if ((1'b1 == AXI_video_strm_V_id_V_1_ack_out)) begin
            AXI_video_strm_V_id_V_1_mVld <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        AXI_video_strm_V_keep_V_1_mVld <= 1'b0;
    end else begin
        if ((1'b1 == AXI_video_strm_V_keep_V_1_vld_in)) begin
            AXI_video_strm_V_keep_V_1_mVld <= 1'b1;
        end else if ((1'b1 == AXI_video_strm_V_keep_V_1_ack_out)) begin
            AXI_video_strm_V_keep_V_1_mVld <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        AXI_video_strm_V_last_V_1_mVld <= 1'b0;
    end else begin
        if ((1'b1 == AXI_video_strm_V_last_V_1_vld_in)) begin
            AXI_video_strm_V_last_V_1_mVld <= 1'b1;
        end else if ((1'b1 == AXI_video_strm_V_last_V_1_ack_out)) begin
            AXI_video_strm_V_last_V_1_mVld <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        AXI_video_strm_V_strb_V_1_mVld <= 1'b0;
    end else begin
        if ((1'b1 == AXI_video_strm_V_strb_V_1_vld_in)) begin
            AXI_video_strm_V_strb_V_1_mVld <= 1'b1;
        end else if ((1'b1 == AXI_video_strm_V_strb_V_1_ack_out)) begin
            AXI_video_strm_V_strb_V_1_mVld <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        AXI_video_strm_V_user_V_1_mVld <= 1'b0;
    end else begin
        if ((1'b1 == AXI_video_strm_V_user_V_1_vld_in)) begin
            AXI_video_strm_V_user_V_1_mVld <= 1'b1;
        end else if ((1'b1 == AXI_video_strm_V_user_V_1_ack_out)) begin
            AXI_video_strm_V_user_V_1_mVld <= 1'b0;
        end
    end
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
        end else if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(1'b0 == exitcond7_fu_164_p2) & ~ap_sig_240)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & (ap_sig_256 | ((exitcond8_reg_230 == 1'b0) & (1'b0 == AXI_video_strm_V_data_V_1_ack_in)))) | ((1'b1 == ap_reg_ppiten_pp0_it2) & (1'b0 == ap_reg_ppstg_exitcond8_reg_230_pp0_iter1) & (1'b0 == AXI_video_strm_V_data_V_1_ack_in))) & ~(1'b0 == exitcond8_fu_176_p2))) begin
            ap_reg_ppiten_pp0_it0 <= 1'b0;
        end else if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (1'b0 == exitcond7_fu_164_p2) & ~ap_sig_240)) begin
            ap_reg_ppiten_pp0_it0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & (ap_sig_256 | ((exitcond8_reg_230 == 1'b0) & (1'b0 == AXI_video_strm_V_data_V_1_ack_in)))) | ((1'b1 == ap_reg_ppiten_pp0_it2) & (1'b0 == ap_reg_ppstg_exitcond8_reg_230_pp0_iter1) & (1'b0 == AXI_video_strm_V_data_V_1_ack_in))) & (1'b0 == exitcond8_fu_176_p2))) begin
            ap_reg_ppiten_pp0_it1 <= 1'b1;
        end else if ((((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (1'b0 == exitcond7_fu_164_p2) & ~ap_sig_240) | ((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & (ap_sig_256 | ((exitcond8_reg_230 == 1'b0) & (1'b0 == AXI_video_strm_V_data_V_1_ack_in)))) | ((1'b1 == ap_reg_ppiten_pp0_it2) & (1'b0 == ap_reg_ppstg_exitcond8_reg_230_pp0_iter1) & (1'b0 == AXI_video_strm_V_data_V_1_ack_in))) & ~(1'b0 == exitcond8_fu_176_p2)))) begin
            ap_reg_ppiten_pp0_it1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it2 <= 1'b0;
    end else begin
        if (~(((1'b1 == ap_reg_ppiten_pp0_it1) & (ap_sig_256 | ((exitcond8_reg_230 == 1'b0) & (1'b0 == AXI_video_strm_V_data_V_1_ack_in)))) | ((1'b1 == ap_reg_ppiten_pp0_it2) & (1'b0 == ap_reg_ppstg_exitcond8_reg_230_pp0_iter1) & (1'b0 == AXI_video_strm_V_data_V_1_ack_in)))) begin
            ap_reg_ppiten_pp0_it2 <= ap_reg_ppiten_pp0_it1;
        end else if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (1'b0 == exitcond7_fu_164_p2) & ~ap_sig_240)) begin
            ap_reg_ppiten_pp0_it2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it0) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & (ap_sig_256 | ((exitcond8_reg_230 == 1'b0) & (1'b0 == AXI_video_strm_V_data_V_1_ack_in)))) | ((1'b1 == ap_reg_ppiten_pp0_it2) & (1'b0 == ap_reg_ppstg_exitcond8_reg_230_pp0_iter1) & (1'b0 == AXI_video_strm_V_data_V_1_ack_in))) & (1'b0 == exitcond8_fu_176_p2))) begin
        p_3_reg_148 <= j_V_fu_182_p2;
    end else if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (1'b0 == exitcond7_fu_164_p2) & ~ap_sig_240)) begin
        p_3_reg_148 <= ap_const_lv11_0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st6_fsm_3)) begin
        p_s_reg_137 <= i_V_reg_225;
    end else if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_292)) begin
        p_s_reg_137 <= ap_const_lv11_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond8_reg_230 == 1'b0) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & (ap_sig_256 | ((exitcond8_reg_230 == 1'b0) & (1'b0 == AXI_video_strm_V_data_V_1_ack_in)))) | ((1'b1 == ap_reg_ppiten_pp0_it2) & (1'b0 == ap_reg_ppstg_exitcond8_reg_230_pp0_iter1) & (1'b0 == AXI_video_strm_V_data_V_1_ack_in))))) begin
        tmp_user_V_fu_86 <= 1'b0;
    end else if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_292)) begin
        tmp_user_V_fu_86 <= 1'b1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == 1'b1)) begin
        AXI_video_strm_V_data_V_1_areset_d <= ap_rst;
        AXI_video_strm_V_dest_V_1_areset_d <= ap_rst;
        AXI_video_strm_V_id_V_1_areset_d <= ap_rst;
        AXI_video_strm_V_keep_V_1_areset_d <= ap_rst;
        AXI_video_strm_V_last_V_1_areset_d <= ap_rst;
        AXI_video_strm_V_strb_V_1_areset_d <= ap_rst;
        AXI_video_strm_V_user_V_1_areset_d <= ap_rst;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == AXI_video_strm_V_data_V_1_vld_in) & (1'b1 == AXI_video_strm_V_data_V_1_sRdy))) begin
        AXI_video_strm_V_data_V_1_data_reg <= tmp_data_V_fu_198_p4;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == AXI_video_strm_V_last_V_1_vld_in) & (1'b1 == AXI_video_strm_V_last_V_1_sRdy))) begin
        AXI_video_strm_V_last_V_1_data_reg <= axi_last_V_reg_239;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == AXI_video_strm_V_user_V_1_vld_in) & (1'b1 == AXI_video_strm_V_user_V_1_sRdy))) begin
        AXI_video_strm_V_user_V_1_data_reg <= tmp_user_V_fu_86;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & (ap_sig_256 | ((exitcond8_reg_230 == 1'b0) & (1'b0 == AXI_video_strm_V_data_V_1_ack_in)))) | ((1'b1 == ap_reg_ppiten_pp0_it2) & (1'b0 == ap_reg_ppstg_exitcond8_reg_230_pp0_iter1) & (1'b0 == AXI_video_strm_V_data_V_1_ack_in))))) begin
        ap_reg_ppstg_exitcond8_reg_230_pp0_iter1 <= exitcond8_reg_230;
        exitcond8_reg_230 <= exitcond8_fu_176_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & (ap_sig_256 | ((exitcond8_reg_230 == 1'b0) & (1'b0 == AXI_video_strm_V_data_V_1_ack_in)))) | ((1'b1 == ap_reg_ppiten_pp0_it2) & (1'b0 == ap_reg_ppstg_exitcond8_reg_230_pp0_iter1) & (1'b0 == AXI_video_strm_V_data_V_1_ack_in))) & (1'b0 == exitcond8_fu_176_p2))) begin
        axi_last_V_reg_239 <= axi_last_V_fu_188_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~ap_sig_240)) begin
        i_V_reg_225 <= i_V_fu_170_p2;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond8_reg_230 == 1'b0) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & (ap_sig_256 | ((exitcond8_reg_230 == 1'b0) & (1'b0 == AXI_video_strm_V_data_V_1_ack_in)))) | ((1'b1 == ap_reg_ppiten_pp0_it2) & (1'b0 == ap_reg_ppstg_exitcond8_reg_230_pp0_iter1) & (1'b0 == AXI_video_strm_V_data_V_1_ack_in))))) begin
        AXI_video_strm_V_data_V_1_vld_in = 1'b1;
    end else begin
        AXI_video_strm_V_data_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond8_reg_230 == 1'b0) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & (ap_sig_256 | ((exitcond8_reg_230 == 1'b0) & (1'b0 == AXI_video_strm_V_data_V_1_ack_in)))) | ((1'b1 == ap_reg_ppiten_pp0_it2) & (1'b0 == ap_reg_ppstg_exitcond8_reg_230_pp0_iter1) & (1'b0 == AXI_video_strm_V_data_V_1_ack_in))))) begin
        AXI_video_strm_V_dest_V_1_vld_in = 1'b1;
    end else begin
        AXI_video_strm_V_dest_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond8_reg_230 == 1'b0) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & (ap_sig_256 | ((exitcond8_reg_230 == 1'b0) & (1'b0 == AXI_video_strm_V_data_V_1_ack_in)))) | ((1'b1 == ap_reg_ppiten_pp0_it2) & (1'b0 == ap_reg_ppstg_exitcond8_reg_230_pp0_iter1) & (1'b0 == AXI_video_strm_V_data_V_1_ack_in))))) begin
        AXI_video_strm_V_id_V_1_vld_in = 1'b1;
    end else begin
        AXI_video_strm_V_id_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond8_reg_230 == 1'b0) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & (ap_sig_256 | ((exitcond8_reg_230 == 1'b0) & (1'b0 == AXI_video_strm_V_data_V_1_ack_in)))) | ((1'b1 == ap_reg_ppiten_pp0_it2) & (1'b0 == ap_reg_ppstg_exitcond8_reg_230_pp0_iter1) & (1'b0 == AXI_video_strm_V_data_V_1_ack_in))))) begin
        AXI_video_strm_V_keep_V_1_vld_in = 1'b1;
    end else begin
        AXI_video_strm_V_keep_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond8_reg_230 == 1'b0) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & (ap_sig_256 | ((exitcond8_reg_230 == 1'b0) & (1'b0 == AXI_video_strm_V_data_V_1_ack_in)))) | ((1'b1 == ap_reg_ppiten_pp0_it2) & (1'b0 == ap_reg_ppstg_exitcond8_reg_230_pp0_iter1) & (1'b0 == AXI_video_strm_V_data_V_1_ack_in))))) begin
        AXI_video_strm_V_last_V_1_vld_in = 1'b1;
    end else begin
        AXI_video_strm_V_last_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond8_reg_230 == 1'b0) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & (ap_sig_256 | ((exitcond8_reg_230 == 1'b0) & (1'b0 == AXI_video_strm_V_data_V_1_ack_in)))) | ((1'b1 == ap_reg_ppiten_pp0_it2) & (1'b0 == ap_reg_ppstg_exitcond8_reg_230_pp0_iter1) & (1'b0 == AXI_video_strm_V_data_V_1_ack_in))))) begin
        AXI_video_strm_V_strb_V_1_vld_in = 1'b1;
    end else begin
        AXI_video_strm_V_strb_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond8_reg_230 == 1'b0) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & (ap_sig_256 | ((exitcond8_reg_230 == 1'b0) & (1'b0 == AXI_video_strm_V_data_V_1_ack_in)))) | ((1'b1 == ap_reg_ppiten_pp0_it2) & (1'b0 == ap_reg_ppstg_exitcond8_reg_230_pp0_iter1) & (1'b0 == AXI_video_strm_V_data_V_1_ack_in))))) begin
        AXI_video_strm_V_user_V_1_vld_in = 1'b1;
    end else begin
        AXI_video_strm_V_user_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_done_reg) | ((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(1'b0 == exitcond7_fu_164_p2) & ~ap_sig_240))) begin
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
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(1'b0 == exitcond7_fu_164_p2) & ~ap_sig_240)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_196) begin
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
    if (ap_sig_225) begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_300) begin
        ap_sig_cseq_ST_st6_fsm_3 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st6_fsm_3 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond8_reg_230 == 1'b0))) begin
        img_data_stream_0_V_blk_n = img_data_stream_0_V_empty_n;
    end else begin
        img_data_stream_0_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond8_reg_230 == 1'b0) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & (ap_sig_256 | ((exitcond8_reg_230 == 1'b0) & (1'b0 == AXI_video_strm_V_data_V_1_ack_in)))) | ((1'b1 == ap_reg_ppiten_pp0_it2) & (1'b0 == ap_reg_ppstg_exitcond8_reg_230_pp0_iter1) & (1'b0 == AXI_video_strm_V_data_V_1_ack_in))))) begin
        img_data_stream_0_V_read = 1'b1;
    end else begin
        img_data_stream_0_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond8_reg_230 == 1'b0))) begin
        img_data_stream_1_V_blk_n = img_data_stream_1_V_empty_n;
    end else begin
        img_data_stream_1_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond8_reg_230 == 1'b0) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & (ap_sig_256 | ((exitcond8_reg_230 == 1'b0) & (1'b0 == AXI_video_strm_V_data_V_1_ack_in)))) | ((1'b1 == ap_reg_ppiten_pp0_it2) & (1'b0 == ap_reg_ppstg_exitcond8_reg_230_pp0_iter1) & (1'b0 == AXI_video_strm_V_data_V_1_ack_in))))) begin
        img_data_stream_1_V_read = 1'b1;
    end else begin
        img_data_stream_1_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond8_reg_230 == 1'b0))) begin
        img_data_stream_2_V_blk_n = img_data_stream_2_V_empty_n;
    end else begin
        img_data_stream_2_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond8_reg_230 == 1'b0) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & (ap_sig_256 | ((exitcond8_reg_230 == 1'b0) & (1'b0 == AXI_video_strm_V_data_V_1_ack_in)))) | ((1'b1 == ap_reg_ppiten_pp0_it2) & (1'b0 == ap_reg_ppstg_exitcond8_reg_230_pp0_iter1) & (1'b0 == AXI_video_strm_V_data_V_1_ack_in))))) begin
        img_data_stream_2_V_read = 1'b1;
    end else begin
        img_data_stream_2_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond8_reg_230 == 1'b0)) | ((1'b1 == ap_reg_ppiten_pp0_it2) & (1'b0 == ap_reg_ppstg_exitcond8_reg_230_pp0_iter1)))) begin
        output_r_TDATA_blk_n = AXI_video_strm_V_data_V_1_sRdy;
    end else begin
        output_r_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : begin
            if (~ap_sig_292) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_st2_fsm_1 : begin
            if ((~(1'b0 == exitcond7_fu_164_p2) & ~ap_sig_240)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else if (((1'b0 == exitcond7_fu_164_p2) & ~ap_sig_240)) begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            end else begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end
        end
        ap_ST_pp0_stg0_fsm_2 : begin
            if ((~((1'b1 == ap_reg_ppiten_pp0_it2) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & (ap_sig_256 | ((exitcond8_reg_230 == 1'b0) & (1'b0 == AXI_video_strm_V_data_V_1_ack_in)))) | ((1'b1 == ap_reg_ppiten_pp0_it2) & (1'b0 == ap_reg_ppstg_exitcond8_reg_230_pp0_iter1) & (1'b0 == AXI_video_strm_V_data_V_1_ack_in))) & ~(1'b1 == ap_reg_ppiten_pp0_it1)) & ~((1'b1 == ap_reg_ppiten_pp0_it0) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & (ap_sig_256 | ((exitcond8_reg_230 == 1'b0) & (1'b0 == AXI_video_strm_V_data_V_1_ack_in)))) | ((1'b1 == ap_reg_ppiten_pp0_it2) & (1'b0 == ap_reg_ppstg_exitcond8_reg_230_pp0_iter1) & (1'b0 == AXI_video_strm_V_data_V_1_ack_in))) & ~(1'b0 == exitcond8_fu_176_p2) & ~(1'b1 == ap_reg_ppiten_pp0_it1)))) begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            end else if ((((1'b1 == ap_reg_ppiten_pp0_it2) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & (ap_sig_256 | ((exitcond8_reg_230 == 1'b0) & (1'b0 == AXI_video_strm_V_data_V_1_ack_in)))) | ((1'b1 == ap_reg_ppiten_pp0_it2) & (1'b0 == ap_reg_ppstg_exitcond8_reg_230_pp0_iter1) & (1'b0 == AXI_video_strm_V_data_V_1_ack_in))) & ~(1'b1 == ap_reg_ppiten_pp0_it1)) | ((1'b1 == ap_reg_ppiten_pp0_it0) & ~(((1'b1 == ap_reg_ppiten_pp0_it1) & (ap_sig_256 | ((exitcond8_reg_230 == 1'b0) & (1'b0 == AXI_video_strm_V_data_V_1_ack_in)))) | ((1'b1 == ap_reg_ppiten_pp0_it2) & (1'b0 == ap_reg_ppstg_exitcond8_reg_230_pp0_iter1) & (1'b0 == AXI_video_strm_V_data_V_1_ack_in))) & ~(1'b0 == exitcond8_fu_176_p2) & ~(1'b1 == ap_reg_ppiten_pp0_it1)))) begin
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
    AXI_video_strm_V_data_V_1_ack_in = (~AXI_video_strm_V_data_V_1_areset_d & (output_r_TREADY | ~AXI_video_strm_V_data_V_1_mVld));
end

assign AXI_video_strm_V_data_V_1_ack_out = output_r_TREADY;

always @ (*) begin
    AXI_video_strm_V_data_V_1_sRdy = (~AXI_video_strm_V_data_V_1_areset_d & (output_r_TREADY | ~AXI_video_strm_V_data_V_1_mVld));
end

assign AXI_video_strm_V_dest_V_1_ack_out = output_r_TREADY;

always @ (*) begin
    AXI_video_strm_V_dest_V_1_sRdy = (~AXI_video_strm_V_dest_V_1_areset_d & (output_r_TREADY | ~AXI_video_strm_V_dest_V_1_mVld));
end

assign AXI_video_strm_V_id_V_1_ack_out = output_r_TREADY;

always @ (*) begin
    AXI_video_strm_V_id_V_1_sRdy = (~AXI_video_strm_V_id_V_1_areset_d & (output_r_TREADY | ~AXI_video_strm_V_id_V_1_mVld));
end

assign AXI_video_strm_V_keep_V_1_ack_out = output_r_TREADY;

always @ (*) begin
    AXI_video_strm_V_keep_V_1_sRdy = (~AXI_video_strm_V_keep_V_1_areset_d & (output_r_TREADY | ~AXI_video_strm_V_keep_V_1_mVld));
end

assign AXI_video_strm_V_last_V_1_ack_out = output_r_TREADY;

always @ (*) begin
    AXI_video_strm_V_last_V_1_sRdy = (~AXI_video_strm_V_last_V_1_areset_d & (output_r_TREADY | ~AXI_video_strm_V_last_V_1_mVld));
end

assign AXI_video_strm_V_strb_V_1_ack_out = output_r_TREADY;

always @ (*) begin
    AXI_video_strm_V_strb_V_1_sRdy = (~AXI_video_strm_V_strb_V_1_areset_d & (output_r_TREADY | ~AXI_video_strm_V_strb_V_1_mVld));
end

assign AXI_video_strm_V_user_V_1_ack_out = output_r_TREADY;

always @ (*) begin
    AXI_video_strm_V_user_V_1_sRdy = (~AXI_video_strm_V_user_V_1_areset_d & (output_r_TREADY | ~AXI_video_strm_V_user_V_1_mVld));
end

always @ (*) begin
    ap_sig_196 = (1'b1 == ap_CS_fsm[ap_const_lv32_2]);
end

always @ (*) begin
    ap_sig_22 = (ap_CS_fsm[ap_const_lv32_0] == 1'b1);
end

always @ (*) begin
    ap_sig_225 = (1'b1 == ap_CS_fsm[ap_const_lv32_1]);
end

always @ (*) begin
    ap_sig_240 = ((AXI_video_strm_V_data_V_1_sRdy == 1'b0) | (AXI_video_strm_V_keep_V_1_sRdy == 1'b0) | (AXI_video_strm_V_strb_V_1_sRdy == 1'b0) | (AXI_video_strm_V_user_V_1_sRdy == 1'b0) | (AXI_video_strm_V_last_V_1_sRdy == 1'b0) | (AXI_video_strm_V_id_V_1_sRdy == 1'b0) | (AXI_video_strm_V_dest_V_1_sRdy == 1'b0));
end

always @ (*) begin
    ap_sig_256 = (((exitcond8_reg_230 == 1'b0) & (img_data_stream_0_V_empty_n == 1'b0)) | ((exitcond8_reg_230 == 1'b0) & (img_data_stream_1_V_empty_n == 1'b0)) | ((exitcond8_reg_230 == 1'b0) & (img_data_stream_2_V_empty_n == 1'b0)));
end

always @ (*) begin
    ap_sig_292 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_sig_300 = (1'b1 == ap_CS_fsm[ap_const_lv32_3]);
end

assign axi_last_V_fu_188_p2 = ((p_3_reg_148 == ap_const_lv11_77F) ? 1'b1 : 1'b0);

assign exitcond7_fu_164_p2 = ((p_s_reg_137 == ap_const_lv11_438) ? 1'b1 : 1'b0);

assign exitcond8_fu_176_p2 = ((p_3_reg_148 == ap_const_lv11_780) ? 1'b1 : 1'b0);

assign i_V_fu_170_p2 = (p_s_reg_137 + ap_const_lv11_1);

assign j_V_fu_182_p2 = (p_3_reg_148 + ap_const_lv11_1);

assign output_r_TDATA = AXI_video_strm_V_data_V_1_data_reg;

assign output_r_TDEST = 1'b0;

assign output_r_TID = 1'b0;

assign output_r_TKEEP = ap_const_lv3_7;

assign output_r_TLAST = AXI_video_strm_V_last_V_1_data_reg;

assign output_r_TSTRB = ap_const_lv3_0;

assign output_r_TUSER = AXI_video_strm_V_user_V_1_data_reg;

assign output_r_TVALID = AXI_video_strm_V_dest_V_1_mVld;

assign tmp_data_V_fu_198_p4 = {{{img_data_stream_2_V_dout}, {img_data_stream_1_V_dout}}, {img_data_stream_0_V_dout}};

endmodule //filter_Mat2AXIvideo
