// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module filter_split64 (
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
parameter    ap_const_lv11_0 = 11'b00000000000;
parameter    ap_const_lv21_0 = 21'b000000000000000000000;
parameter    ap_const_lv11_3E8 = 11'b1111101000;
parameter    ap_const_lv8_0 = 8'b00000000;
parameter    ap_const_lv11_1 = 11'b1;
parameter    ap_const_lv21_1 = 21'b1;
parameter    ap_const_lv11_780 = 11'b11110000000;
parameter    ap_const_lv21_1FA3FF = 21'b111111010001111111111;

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
reg img_out_data_stream_V_write;
reg img_out_data_stream_V3_write;
reg img_out_data_stream_V4_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_20;
wire   [0:0] exitcond_flatten_fu_211_p2;
reg    ap_sig_cseq_ST_pp0_stg0_fsm_1;
reg    ap_sig_36;
wire    ap_reg_ppiten_pp0_it0;
reg    ap_sig_58;
reg    ap_sig_77;
reg    ap_reg_ppiten_pp0_it1;
reg    img_in_data_stream_V_blk_n;
reg    img_in_data_stream_V1_blk_n;
reg    img_in_data_stream_V2_blk_n;
reg    img_out_data_stream_V_blk_n;
reg    img_out_data_stream_V3_blk_n;
reg    img_out_data_stream_V4_blk_n;
reg   [0:0] exitcond4_reg_113;
reg   [10:0] col3_reg_127;
reg   [20:0] indvar_flatten2_reg_141;
wire   [7:0] tmp_fu_169_p3;
reg   [7:0] tmp_reg_219;
wire   [7:0] tmp_6_fu_177_p3;
reg   [7:0] tmp_6_reg_224;
wire   [7:0] tmp_7_fu_185_p3;
reg   [7:0] tmp_7_reg_229;
wire   [10:0] col_fu_193_p2;
reg   [10:0] col_reg_234;
wire   [20:0] indvar_flatten_next_fu_199_p2;
reg   [20:0] indvar_flatten_next_reg_239;
wire   [0:0] exitcond_fu_205_p2;
reg   [0:0] exitcond_reg_244;
reg   [0:0] exitcond_flatten_reg_249;
reg    ap_sig_116;
reg   [0:0] exitcond4_phi_fu_117_p6;
reg   [10:0] col3_phi_fu_131_p6;
reg   [20:0] indvar_flatten2_phi_fu_145_p6;
wire   [10:0] col_mid2_fu_155_p3;
wire   [0:0] tmp_5_fu_163_p2;
reg   [1:0] ap_NS_fsm;
reg    ap_sig_pprstidle_pp0;
reg    ap_sig_92;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 2'b1;
#0 ap_reg_ppiten_pp0_it1 = 1'b0;
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
        end else if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it1) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_77 & (1'b1 == ap_reg_ppiten_pp0_it1)) | (ap_done_reg == 1'b1)) & ~(1'b0 == exitcond_flatten_reg_249))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_77 & (1'b1 == ap_reg_ppiten_pp0_it1)) | (ap_done_reg == 1'b1)))) begin
            ap_reg_ppiten_pp0_it1 <= ap_start;
        end else if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_116)) begin
            ap_reg_ppiten_pp0_it1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it1) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_77 & (1'b1 == ap_reg_ppiten_pp0_it1)) | (ap_done_reg == 1'b1)) & (1'b0 == exitcond_flatten_reg_249))) begin
        col3_reg_127 <= col_reg_234;
    end else if ((((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_116) | ((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it1) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_77 & (1'b1 == ap_reg_ppiten_pp0_it1)) | (ap_done_reg == 1'b1)) & ~(1'b0 == exitcond_flatten_reg_249)))) begin
        col3_reg_127 <= ap_const_lv11_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it1) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_77 & (1'b1 == ap_reg_ppiten_pp0_it1)) | (ap_done_reg == 1'b1)) & (1'b0 == exitcond_flatten_reg_249))) begin
        exitcond4_reg_113 <= exitcond_reg_244;
    end else if ((((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_116) | ((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it1) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_77 & (1'b1 == ap_reg_ppiten_pp0_it1)) | (ap_done_reg == 1'b1)) & ~(1'b0 == exitcond_flatten_reg_249)))) begin
        exitcond4_reg_113 <= 1'b0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it1) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_77 & (1'b1 == ap_reg_ppiten_pp0_it1)) | (ap_done_reg == 1'b1)) & (1'b0 == exitcond_flatten_reg_249))) begin
        indvar_flatten2_reg_141 <= indvar_flatten_next_reg_239;
    end else if ((((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_116) | ((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it1) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_77 & (1'b1 == ap_reg_ppiten_pp0_it1)) | (ap_done_reg == 1'b1)) & ~(1'b0 == exitcond_flatten_reg_249)))) begin
        indvar_flatten2_reg_141 <= ap_const_lv21_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it0) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_77 & (1'b1 == ap_reg_ppiten_pp0_it1)) | (ap_done_reg == 1'b1)))) begin
        col_reg_234 <= col_fu_193_p2;
        exitcond_reg_244 <= exitcond_fu_205_p2;
        indvar_flatten_next_reg_239 <= indvar_flatten_next_fu_199_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_77 & (1'b1 == ap_reg_ppiten_pp0_it1)) | (ap_done_reg == 1'b1)))) begin
        exitcond_flatten_reg_249 <= exitcond_flatten_fu_211_p2;
        tmp_6_reg_224 <= tmp_6_fu_177_p3;
        tmp_7_reg_229 <= tmp_7_fu_185_p3;
        tmp_reg_219 <= tmp_fu_169_p3;
    end
end

always @ (*) begin
    if (((1'b1 == ap_done_reg) | ((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it1) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_77 & (1'b1 == ap_reg_ppiten_pp0_it1)) | (ap_done_reg == 1'b1)) & ~(1'b0 == exitcond_flatten_reg_249)))) begin
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
    if ((~(exitcond_flatten_fu_211_p2 == 1'b0) & (1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it0) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_77 & (1'b1 == ap_reg_ppiten_pp0_it1)) | (ap_done_reg == 1'b1)))) begin
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
    if (((1'b0 == ap_start) & (1'b0 == ap_reg_ppiten_pp0_it0))) begin
        ap_sig_pprstidle_pp0 = 1'b1;
    end else begin
        ap_sig_pprstidle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_92) begin
        if (~(1'b0 == exitcond_flatten_reg_249)) begin
            col3_phi_fu_131_p6 = ap_const_lv11_0;
        end else if ((1'b0 == exitcond_flatten_reg_249)) begin
            col3_phi_fu_131_p6 = col_reg_234;
        end else begin
            col3_phi_fu_131_p6 = col3_reg_127;
        end
    end else begin
        col3_phi_fu_131_p6 = col3_reg_127;
    end
end

always @ (*) begin
    if (ap_sig_92) begin
        if (~(1'b0 == exitcond_flatten_reg_249)) begin
            exitcond4_phi_fu_117_p6 = 1'b0;
        end else if ((1'b0 == exitcond_flatten_reg_249)) begin
            exitcond4_phi_fu_117_p6 = exitcond_reg_244;
        end else begin
            exitcond4_phi_fu_117_p6 = exitcond4_reg_113;
        end
    end else begin
        exitcond4_phi_fu_117_p6 = exitcond4_reg_113;
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
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it0) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_77 & (1'b1 == ap_reg_ppiten_pp0_it1)) | (ap_done_reg == 1'b1)))) begin
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
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it0) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_77 & (1'b1 == ap_reg_ppiten_pp0_it1)) | (ap_done_reg == 1'b1)))) begin
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
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it0) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_77 & (1'b1 == ap_reg_ppiten_pp0_it1)) | (ap_done_reg == 1'b1)))) begin
        img_in_data_stream_V_read = 1'b1;
    end else begin
        img_in_data_stream_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it1))) begin
        img_out_data_stream_V3_blk_n = img_out_data_stream_V3_full_n;
    end else begin
        img_out_data_stream_V3_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it1) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_77 & (1'b1 == ap_reg_ppiten_pp0_it1)) | (ap_done_reg == 1'b1)))) begin
        img_out_data_stream_V3_write = 1'b1;
    end else begin
        img_out_data_stream_V3_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it1))) begin
        img_out_data_stream_V4_blk_n = img_out_data_stream_V4_full_n;
    end else begin
        img_out_data_stream_V4_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it1) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_77 & (1'b1 == ap_reg_ppiten_pp0_it1)) | (ap_done_reg == 1'b1)))) begin
        img_out_data_stream_V4_write = 1'b1;
    end else begin
        img_out_data_stream_V4_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it1))) begin
        img_out_data_stream_V_blk_n = img_out_data_stream_V_full_n;
    end else begin
        img_out_data_stream_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it1) & ~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_77 & (1'b1 == ap_reg_ppiten_pp0_it1)) | (ap_done_reg == 1'b1)))) begin
        img_out_data_stream_V_write = 1'b1;
    end else begin
        img_out_data_stream_V_write = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_92) begin
        if (~(1'b0 == exitcond_flatten_reg_249)) begin
            indvar_flatten2_phi_fu_145_p6 = ap_const_lv21_0;
        end else if ((1'b0 == exitcond_flatten_reg_249)) begin
            indvar_flatten2_phi_fu_145_p6 = indvar_flatten_next_reg_239;
        end else begin
            indvar_flatten2_phi_fu_145_p6 = indvar_flatten2_reg_141;
        end
    end else begin
        indvar_flatten2_phi_fu_145_p6 = indvar_flatten2_reg_141;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : begin
            if (~ap_sig_116) begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_pp0_stg0_fsm_1 : begin
            if (~(1'b1 == ap_sig_pprstidle_pp0)) begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_1;
            end else if ((~(((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_58) | (ap_sig_77 & (1'b1 == ap_reg_ppiten_pp0_it1)) | (ap_done_reg == 1'b1)) & (1'b1 == ap_sig_pprstidle_pp0))) begin
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

assign ap_reg_ppiten_pp0_it0 = ap_start;

always @ (*) begin
    ap_sig_116 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
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
    ap_sig_77 = ((img_out_data_stream_V_full_n == 1'b0) | (img_out_data_stream_V3_full_n == 1'b0) | (img_out_data_stream_V4_full_n == 1'b0));
end

always @ (*) begin
    ap_sig_92 = ((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it1));
end

assign col_fu_193_p2 = (col_mid2_fu_155_p3 + ap_const_lv11_1);

assign col_mid2_fu_155_p3 = ((exitcond4_phi_fu_117_p6[0:0] === 1'b1) ? ap_const_lv11_0 : col3_phi_fu_131_p6);

assign exitcond_flatten_fu_211_p2 = ((indvar_flatten2_phi_fu_145_p6 == ap_const_lv21_1FA3FF) ? 1'b1 : 1'b0);

assign exitcond_fu_205_p2 = ((col_fu_193_p2 == ap_const_lv11_780) ? 1'b1 : 1'b0);

assign img_out_data_stream_V3_din = tmp_6_reg_224;

assign img_out_data_stream_V4_din = tmp_7_reg_229;

assign img_out_data_stream_V_din = tmp_reg_219;

assign indvar_flatten_next_fu_199_p2 = (indvar_flatten2_phi_fu_145_p6 + ap_const_lv21_1);

assign tmp_5_fu_163_p2 = ((col_mid2_fu_155_p3 > ap_const_lv11_3E8) ? 1'b1 : 1'b0);

assign tmp_6_fu_177_p3 = ((tmp_5_fu_163_p2[0:0] === 1'b1) ? ap_const_lv8_0 : img_in_data_stream_V1_dout);

assign tmp_7_fu_185_p3 = ((tmp_5_fu_163_p2[0:0] === 1'b1) ? ap_const_lv8_0 : img_in_data_stream_V2_dout);

assign tmp_fu_169_p3 = ((tmp_5_fu_163_p2[0:0] === 1'b1) ? ap_const_lv8_0 : img_in_data_stream_V_dout);

endmodule //filter_split64
