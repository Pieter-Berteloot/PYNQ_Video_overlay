// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module filter_grad_vertical (
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
        img_out_data_stream_2_V_write
);

parameter    ap_ST_st1_fsm_0 = 5'b1;
parameter    ap_ST_st2_fsm_1 = 5'b10;
parameter    ap_ST_st3_fsm_2 = 5'b100;
parameter    ap_ST_st4_fsm_3 = 5'b1000;
parameter    ap_ST_st5_fsm_4 = 5'b10000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv2_0 = 2'b00;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv2_3 = 2'b11;
parameter    ap_const_lv2_1 = 2'b1;

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

reg ap_done;
reg ap_idle;
reg ap_ready;
reg img_in_data_stream_0_V_read;
reg img_in_data_stream_1_V_read;
reg img_in_data_stream_2_V_read;
reg img_out_data_stream_0_V_write;
reg img_out_data_stream_1_V_write;
reg img_out_data_stream_2_V_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_23;
wire   [3:0] coef_v_address0;
reg    coef_v_ce0;
wire   [6:0] coef_v_q0;
wire   [1:0] r_1_fu_183_p2;
reg   [1:0] r_1_reg_657;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_68;
wire   [4:0] tmp_1_fu_205_p2;
reg   [4:0] tmp_1_reg_662;
wire   [0:0] exitcond6_fu_177_p2;
wire   [0:0] sel_tmp_fu_211_p2;
reg   [0:0] sel_tmp_reg_667;
wire   [0:0] sel_tmp2_fu_217_p2;
reg   [0:0] sel_tmp2_reg_673;
wire   [0:0] sel_tmp11_fu_235_p2;
reg   [0:0] sel_tmp11_reg_680;
wire   [1:0] c_1_fu_247_p2;
reg   [1:0] c_1_reg_734;
reg    ap_sig_cseq_ST_st3_fsm_2;
reg    ap_sig_109;
wire   [0:0] exitcond_fu_241_p2;
wire   [0:0] tmp_8_fu_273_p2;
reg   [0:0] tmp_8_reg_744;
wire    grp_filter_Filter2D_fu_116_ap_start;
wire    grp_filter_Filter2D_fu_116_ap_done;
wire    grp_filter_Filter2D_fu_116_ap_idle;
wire    grp_filter_Filter2D_fu_116_ap_ready;
wire    grp_filter_Filter2D_fu_116_p_src_data_stream_0_V_read;
wire    grp_filter_Filter2D_fu_116_p_src_data_stream_1_V_read;
wire    grp_filter_Filter2D_fu_116_p_src_data_stream_2_V_read;
wire   [7:0] grp_filter_Filter2D_fu_116_p_dst_data_stream_0_V_din;
wire    grp_filter_Filter2D_fu_116_p_dst_data_stream_0_V_write;
wire   [7:0] grp_filter_Filter2D_fu_116_p_dst_data_stream_1_V_din;
wire    grp_filter_Filter2D_fu_116_p_dst_data_stream_1_V_write;
wire   [7:0] grp_filter_Filter2D_fu_116_p_dst_data_stream_2_V_din;
wire    grp_filter_Filter2D_fu_116_p_dst_data_stream_2_V_write;
reg   [1:0] r_reg_92;
reg    ap_sig_157;
reg   [1:0] c_reg_104;
reg    ap_sig_cseq_ST_st4_fsm_3;
reg    ap_sig_169;
reg    ap_reg_grp_filter_Filter2D_fu_116_ap_start;
reg    ap_sig_cseq_ST_st5_fsm_4;
reg    ap_sig_178;
wire  signed [63:0] tmp_19_cast_fu_262_p1;
reg   [7:0] Sv_val_2_V_2_1_fu_44;
wire   [7:0] Sv_val_2_V_2_24_fu_547_p3;
reg   [7:0] Sv_val_2_V_2_3_fu_48;
wire   [7:0] Sv_val_2_V_2_23_fu_532_p3;
reg   [7:0] Sv_val_2_V_2_5_fu_52;
wire   [7:0] Sv_val_2_V_2_22_fu_508_p3;
reg   [7:0] Sv_val_2_V_2_7_fu_56;
wire   [7:0] Sv_val_2_V_2_21_fu_476_p3;
reg   [7:0] Sv_val_2_V_2_9_fu_60;
wire   [7:0] Sv_val_2_V_2_8_fu_460_p3;
reg   [7:0] Sv_val_2_V_2_13_fu_64;
wire   [7:0] Sv_val_2_V_2_6_fu_444_p3;
reg   [7:0] Sv_val_2_V_2_14_fu_68;
wire   [7:0] Sv_val_2_V_2_4_fu_420_p3;
reg   [7:0] Sv_val_2_V_2_15_fu_72;
wire   [7:0] Sv_val_2_V_2_2_fu_412_p3;
reg   [7:0] Sv_val_2_V_2_16_fu_76;
wire   [7:0] Sv_val_2_V_2_fu_389_p3;
wire   [3:0] tmp_s_fu_193_p3;
wire   [4:0] p_shl_cast_fu_201_p1;
wire   [4:0] tmp_cast_fu_189_p1;
wire   [0:0] sel_tmp8_fu_223_p2;
wire   [0:0] sel_tmp10_fu_229_p2;
wire   [4:0] tmp_cast_19_fu_253_p1;
wire   [4:0] tmp_2_fu_257_p2;
wire   [1:0] tmp_7_fu_267_p2;
wire   [0:0] sel_tmp3_fu_283_p2;
wire   [0:0] sel_tmp5_fu_289_p2;
wire   [0:0] tmp20_fu_295_p2;
wire   [0:0] sel_tmp9_fu_306_p2;
wire   [0:0] sel_tmp13_fu_332_p2;
wire   [0:0] sel_tmp15_fu_343_p2;
wire   [0:0] sel_tmp14_fu_338_p2;
wire   [0:0] sel_tmp12_fu_327_p2;
wire   [0:0] sel_tmp7_fu_322_p2;
wire   [0:0] sel_tmp4_fu_317_p2;
wire   [0:0] sel_tmp1_fu_312_p2;
wire   [0:0] sel_tmp6_fu_301_p2;
wire   [0:0] or_cond_fu_348_p2;
wire   [0:0] or_cond1_fu_354_p2;
wire   [0:0] or_cond2_fu_359_p2;
wire   [0:0] or_cond3_fu_365_p2;
wire   [0:0] or_cond4_fu_371_p2;
wire   [0:0] or_cond5_fu_377_p2;
wire   [0:0] or_cond6_fu_383_p2;
wire  signed [7:0] Sv_val_2_V_0_cast_fu_279_p1;
wire   [7:0] newSel_fu_397_p3;
wire   [7:0] newSel1_fu_404_p3;
wire   [7:0] newSel3_fu_428_p3;
wire   [7:0] newSel4_fu_436_p3;
wire   [7:0] newSel6_fu_452_p3;
wire   [7:0] Sv_val_2_V_2_20_fu_468_p3;
wire   [7:0] newSel8_fu_484_p3;
wire   [7:0] newSel9_fu_492_p3;
wire   [7:0] newSel2_fu_500_p3;
wire   [7:0] newSel5_fu_516_p3;
wire   [7:0] newSel7_fu_524_p3;
wire   [7:0] newSel10_fu_540_p3;
reg   [4:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 5'b1;
#0 ap_reg_grp_filter_Filter2D_fu_116_ap_start = 1'b0;
end

filter_grad_vertical_coef_v #(
    .DataWidth( 7 ),
    .AddressRange( 9 ),
    .AddressWidth( 4 ))
coef_v_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(coef_v_address0),
    .ce0(coef_v_ce0),
    .q0(coef_v_q0)
);

filter_Filter2D grp_filter_Filter2D_fu_116(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_filter_Filter2D_fu_116_ap_start),
    .ap_done(grp_filter_Filter2D_fu_116_ap_done),
    .ap_idle(grp_filter_Filter2D_fu_116_ap_idle),
    .ap_ready(grp_filter_Filter2D_fu_116_ap_ready),
    .p_src_data_stream_0_V_dout(img_in_data_stream_0_V_dout),
    .p_src_data_stream_0_V_empty_n(img_in_data_stream_0_V_empty_n),
    .p_src_data_stream_0_V_read(grp_filter_Filter2D_fu_116_p_src_data_stream_0_V_read),
    .p_src_data_stream_1_V_dout(img_in_data_stream_1_V_dout),
    .p_src_data_stream_1_V_empty_n(img_in_data_stream_1_V_empty_n),
    .p_src_data_stream_1_V_read(grp_filter_Filter2D_fu_116_p_src_data_stream_1_V_read),
    .p_src_data_stream_2_V_dout(img_in_data_stream_2_V_dout),
    .p_src_data_stream_2_V_empty_n(img_in_data_stream_2_V_empty_n),
    .p_src_data_stream_2_V_read(grp_filter_Filter2D_fu_116_p_src_data_stream_2_V_read),
    .p_dst_data_stream_0_V_din(grp_filter_Filter2D_fu_116_p_dst_data_stream_0_V_din),
    .p_dst_data_stream_0_V_full_n(img_out_data_stream_0_V_full_n),
    .p_dst_data_stream_0_V_write(grp_filter_Filter2D_fu_116_p_dst_data_stream_0_V_write),
    .p_dst_data_stream_1_V_din(grp_filter_Filter2D_fu_116_p_dst_data_stream_1_V_din),
    .p_dst_data_stream_1_V_full_n(img_out_data_stream_1_V_full_n),
    .p_dst_data_stream_1_V_write(grp_filter_Filter2D_fu_116_p_dst_data_stream_1_V_write),
    .p_dst_data_stream_2_V_din(grp_filter_Filter2D_fu_116_p_dst_data_stream_2_V_din),
    .p_dst_data_stream_2_V_full_n(img_out_data_stream_2_V_full_n),
    .p_dst_data_stream_2_V_write(grp_filter_Filter2D_fu_116_p_dst_data_stream_2_V_write),
    .p_kernel_val_0_V_0_read(Sv_val_2_V_2_1_fu_44),
    .p_kernel_val_0_V_1_read(Sv_val_2_V_2_3_fu_48),
    .p_kernel_val_0_V_2_read(Sv_val_2_V_2_5_fu_52),
    .p_kernel_val_1_V_0_read(Sv_val_2_V_2_7_fu_56),
    .p_kernel_val_1_V_1_read(Sv_val_2_V_2_9_fu_60),
    .p_kernel_val_1_V_2_read(Sv_val_2_V_2_13_fu_64),
    .p_kernel_val_2_V_0_read(Sv_val_2_V_2_14_fu_68),
    .p_kernel_val_2_V_1_read(Sv_val_2_V_2_15_fu_72),
    .p_kernel_val_2_V_2_read(Sv_val_2_V_2_16_fu_76)
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
        end else if (((1'b1 == ap_sig_cseq_ST_st5_fsm_4) & ~(1'b0 == grp_filter_Filter2D_fu_116_ap_done))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_filter_Filter2D_fu_116_ap_start <= 1'b0;
    end else begin
        if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond6_fu_177_p2 == 1'b0))) begin
            ap_reg_grp_filter_Filter2D_fu_116_ap_start <= 1'b1;
        end else if ((1'b1 == grp_filter_Filter2D_fu_116_ap_ready)) begin
            ap_reg_grp_filter_Filter2D_fu_116_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        c_reg_104 <= c_1_reg_734;
    end else if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond6_fu_177_p2 == 1'b0))) begin
        c_reg_104 <= ap_const_lv2_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~(1'b0 == exitcond_fu_241_p2))) begin
        r_reg_92 <= r_1_reg_657;
    end else if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_157)) begin
        r_reg_92 <= ap_const_lv2_0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        Sv_val_2_V_2_13_fu_64 <= Sv_val_2_V_2_6_fu_444_p3;
        Sv_val_2_V_2_14_fu_68 <= Sv_val_2_V_2_4_fu_420_p3;
        Sv_val_2_V_2_15_fu_72 <= Sv_val_2_V_2_2_fu_412_p3;
        Sv_val_2_V_2_16_fu_76 <= Sv_val_2_V_2_fu_389_p3;
        Sv_val_2_V_2_1_fu_44 <= Sv_val_2_V_2_24_fu_547_p3;
        Sv_val_2_V_2_3_fu_48 <= Sv_val_2_V_2_23_fu_532_p3;
        Sv_val_2_V_2_5_fu_52 <= Sv_val_2_V_2_22_fu_508_p3;
        Sv_val_2_V_2_7_fu_56 <= Sv_val_2_V_2_21_fu_476_p3;
        Sv_val_2_V_2_9_fu_60 <= Sv_val_2_V_2_8_fu_460_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        c_1_reg_734 <= c_1_fu_247_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        r_1_reg_657 <= r_1_fu_183_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond6_fu_177_p2 == 1'b0))) begin
        sel_tmp11_reg_680 <= sel_tmp11_fu_235_p2;
        sel_tmp2_reg_673 <= sel_tmp2_fu_217_p2;
        sel_tmp_reg_667 <= sel_tmp_fu_211_p2;
        tmp_1_reg_662 <= tmp_1_fu_205_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & (1'b0 == exitcond_fu_241_p2))) begin
        tmp_8_reg_744 <= tmp_8_fu_273_p2;
    end
end

always @ (*) begin
    if (((1'b1 == ap_done_reg) | ((1'b1 == ap_sig_cseq_ST_st5_fsm_4) & ~(1'b0 == grp_filter_Filter2D_fu_116_ap_done)))) begin
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
    if (((1'b1 == ap_sig_cseq_ST_st5_fsm_4) & ~(1'b0 == grp_filter_Filter2D_fu_116_ap_done))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_23) begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_68) begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_109) begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_169) begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_178) begin
        ap_sig_cseq_ST_st5_fsm_4 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st5_fsm_4 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        coef_v_ce0 = 1'b1;
    end else begin
        coef_v_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        img_in_data_stream_0_V_read = grp_filter_Filter2D_fu_116_p_src_data_stream_0_V_read;
    end else begin
        img_in_data_stream_0_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        img_in_data_stream_1_V_read = grp_filter_Filter2D_fu_116_p_src_data_stream_1_V_read;
    end else begin
        img_in_data_stream_1_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        img_in_data_stream_2_V_read = grp_filter_Filter2D_fu_116_p_src_data_stream_2_V_read;
    end else begin
        img_in_data_stream_2_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        img_out_data_stream_0_V_write = grp_filter_Filter2D_fu_116_p_dst_data_stream_0_V_write;
    end else begin
        img_out_data_stream_0_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        img_out_data_stream_1_V_write = grp_filter_Filter2D_fu_116_p_dst_data_stream_1_V_write;
    end else begin
        img_out_data_stream_1_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        img_out_data_stream_2_V_write = grp_filter_Filter2D_fu_116_p_dst_data_stream_2_V_write;
    end else begin
        img_out_data_stream_2_V_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : begin
            if (~ap_sig_157) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_st2_fsm_1 : begin
            if ((exitcond6_fu_177_p2 == 1'b0)) begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end else begin
                ap_NS_fsm = ap_ST_st5_fsm_4;
            end
        end
        ap_ST_st3_fsm_2 : begin
            if ((1'b0 == exitcond_fu_241_p2)) begin
                ap_NS_fsm = ap_ST_st4_fsm_3;
            end else begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end
        end
        ap_ST_st4_fsm_3 : begin
            ap_NS_fsm = ap_ST_st3_fsm_2;
        end
        ap_ST_st5_fsm_4 : begin
            if (~(1'b0 == grp_filter_Filter2D_fu_116_ap_done)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_st5_fsm_4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign Sv_val_2_V_0_cast_fu_279_p1 = $signed(coef_v_q0);

assign Sv_val_2_V_2_20_fu_468_p3 = ((sel_tmp14_fu_338_p2[0:0] === 1'b1) ? Sv_val_2_V_0_cast_fu_279_p1 : Sv_val_2_V_2_7_fu_56);

assign Sv_val_2_V_2_21_fu_476_p3 = ((sel_tmp15_fu_343_p2[0:0] === 1'b1) ? Sv_val_2_V_2_7_fu_56 : Sv_val_2_V_2_20_fu_468_p3);

assign Sv_val_2_V_2_22_fu_508_p3 = ((or_cond6_fu_383_p2[0:0] === 1'b1) ? newSel2_fu_500_p3 : Sv_val_2_V_2_5_fu_52);

assign Sv_val_2_V_2_23_fu_532_p3 = ((or_cond4_fu_371_p2[0:0] === 1'b1) ? Sv_val_2_V_2_3_fu_48 : newSel7_fu_524_p3);

assign Sv_val_2_V_2_24_fu_547_p3 = ((or_cond_fu_348_p2[0:0] === 1'b1) ? Sv_val_2_V_2_1_fu_44 : newSel10_fu_540_p3);

assign Sv_val_2_V_2_2_fu_412_p3 = ((or_cond4_fu_371_p2[0:0] === 1'b1) ? newSel1_fu_404_p3 : Sv_val_2_V_2_15_fu_72);

assign Sv_val_2_V_2_4_fu_420_p3 = ((sel_tmp15_fu_343_p2[0:0] === 1'b1) ? Sv_val_2_V_0_cast_fu_279_p1 : Sv_val_2_V_2_14_fu_68);

assign Sv_val_2_V_2_6_fu_444_p3 = ((or_cond4_fu_371_p2[0:0] === 1'b1) ? Sv_val_2_V_2_13_fu_64 : newSel4_fu_436_p3);

assign Sv_val_2_V_2_8_fu_460_p3 = ((or_cond4_fu_371_p2[0:0] === 1'b1) ? Sv_val_2_V_2_9_fu_60 : newSel6_fu_452_p3);

assign Sv_val_2_V_2_fu_389_p3 = ((or_cond6_fu_383_p2[0:0] === 1'b1) ? Sv_val_2_V_2_16_fu_76 : Sv_val_2_V_0_cast_fu_279_p1);

always @ (*) begin
    ap_sig_109 = (1'b1 == ap_CS_fsm[ap_const_lv32_2]);
end

always @ (*) begin
    ap_sig_157 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_sig_169 = (1'b1 == ap_CS_fsm[ap_const_lv32_3]);
end

always @ (*) begin
    ap_sig_178 = (1'b1 == ap_CS_fsm[ap_const_lv32_4]);
end

always @ (*) begin
    ap_sig_23 = (ap_CS_fsm[ap_const_lv32_0] == 1'b1);
end

always @ (*) begin
    ap_sig_68 = (1'b1 == ap_CS_fsm[ap_const_lv32_1]);
end

assign c_1_fu_247_p2 = (c_reg_104 + ap_const_lv2_1);

assign coef_v_address0 = tmp_19_cast_fu_262_p1;

assign exitcond6_fu_177_p2 = ((r_reg_92 == ap_const_lv2_3) ? 1'b1 : 1'b0);

assign exitcond_fu_241_p2 = ((c_reg_104 == ap_const_lv2_3) ? 1'b1 : 1'b0);

assign grp_filter_Filter2D_fu_116_ap_start = ap_reg_grp_filter_Filter2D_fu_116_ap_start;

assign img_out_data_stream_0_V_din = grp_filter_Filter2D_fu_116_p_dst_data_stream_0_V_din;

assign img_out_data_stream_1_V_din = grp_filter_Filter2D_fu_116_p_dst_data_stream_1_V_din;

assign img_out_data_stream_2_V_din = grp_filter_Filter2D_fu_116_p_dst_data_stream_2_V_din;

assign newSel10_fu_540_p3 = ((tmp_8_reg_744[0:0] === 1'b1) ? Sv_val_2_V_0_cast_fu_279_p1 : Sv_val_2_V_2_1_fu_44);

assign newSel1_fu_404_p3 = ((or_cond_fu_348_p2[0:0] === 1'b1) ? Sv_val_2_V_2_15_fu_72 : newSel_fu_397_p3);

assign newSel2_fu_500_p3 = ((or_cond4_fu_371_p2[0:0] === 1'b1) ? Sv_val_2_V_2_5_fu_52 : newSel9_fu_492_p3);

assign newSel3_fu_428_p3 = ((sel_tmp7_fu_322_p2[0:0] === 1'b1) ? Sv_val_2_V_2_13_fu_64 : Sv_val_2_V_0_cast_fu_279_p1);

assign newSel4_fu_436_p3 = ((or_cond2_fu_359_p2[0:0] === 1'b1) ? newSel3_fu_428_p3 : Sv_val_2_V_2_13_fu_64);

assign newSel5_fu_516_p3 = ((sel_tmp1_fu_312_p2[0:0] === 1'b1) ? Sv_val_2_V_0_cast_fu_279_p1 : Sv_val_2_V_2_3_fu_48);

assign newSel6_fu_452_p3 = ((sel_tmp7_fu_322_p2[0:0] === 1'b1) ? Sv_val_2_V_0_cast_fu_279_p1 : Sv_val_2_V_2_9_fu_60);

assign newSel7_fu_524_p3 = ((or_cond2_fu_359_p2[0:0] === 1'b1) ? Sv_val_2_V_2_3_fu_48 : newSel5_fu_516_p3);

assign newSel8_fu_484_p3 = ((sel_tmp1_fu_312_p2[0:0] === 1'b1) ? Sv_val_2_V_2_5_fu_52 : Sv_val_2_V_0_cast_fu_279_p1);

assign newSel9_fu_492_p3 = ((or_cond2_fu_359_p2[0:0] === 1'b1) ? Sv_val_2_V_2_5_fu_52 : newSel8_fu_484_p3);

assign newSel_fu_397_p3 = ((tmp_8_reg_744[0:0] === 1'b1) ? Sv_val_2_V_2_15_fu_72 : Sv_val_2_V_0_cast_fu_279_p1);

assign or_cond1_fu_354_p2 = (tmp_8_reg_744 | sel_tmp12_fu_327_p2);

assign or_cond2_fu_359_p2 = (sel_tmp7_fu_322_p2 | sel_tmp4_fu_317_p2);

assign or_cond3_fu_365_p2 = (sel_tmp1_fu_312_p2 | sel_tmp6_fu_301_p2);

assign or_cond4_fu_371_p2 = (or_cond_fu_348_p2 | or_cond1_fu_354_p2);

assign or_cond5_fu_377_p2 = (or_cond2_fu_359_p2 | or_cond3_fu_365_p2);

assign or_cond6_fu_383_p2 = (or_cond4_fu_371_p2 | or_cond5_fu_377_p2);

assign or_cond_fu_348_p2 = (sel_tmp15_fu_343_p2 | sel_tmp14_fu_338_p2);

assign p_shl_cast_fu_201_p1 = tmp_s_fu_193_p3;

assign r_1_fu_183_p2 = (r_reg_92 + ap_const_lv2_1);

assign sel_tmp10_fu_229_p2 = ((r_reg_92 != ap_const_lv2_1) ? 1'b1 : 1'b0);

assign sel_tmp11_fu_235_p2 = (sel_tmp8_fu_223_p2 & sel_tmp10_fu_229_p2);

assign sel_tmp12_fu_327_p2 = (sel_tmp11_reg_680 & sel_tmp9_fu_306_p2);

assign sel_tmp13_fu_332_p2 = ((c_reg_104 == ap_const_lv2_0) ? 1'b1 : 1'b0);

assign sel_tmp14_fu_338_p2 = (sel_tmp2_reg_673 & sel_tmp13_fu_332_p2);

assign sel_tmp15_fu_343_p2 = (sel_tmp11_reg_680 & sel_tmp13_fu_332_p2);

assign sel_tmp1_fu_312_p2 = (sel_tmp_reg_667 & sel_tmp9_fu_306_p2);

assign sel_tmp2_fu_217_p2 = ((r_reg_92 == ap_const_lv2_1) ? 1'b1 : 1'b0);

assign sel_tmp3_fu_283_p2 = ((c_reg_104 != ap_const_lv2_0) ? 1'b1 : 1'b0);

assign sel_tmp4_fu_317_p2 = (tmp20_fu_295_p2 & sel_tmp2_reg_673);

assign sel_tmp5_fu_289_p2 = ((c_reg_104 != ap_const_lv2_1) ? 1'b1 : 1'b0);

assign sel_tmp6_fu_301_p2 = (tmp20_fu_295_p2 & sel_tmp_reg_667);

assign sel_tmp7_fu_322_p2 = (sel_tmp2_reg_673 & sel_tmp9_fu_306_p2);

assign sel_tmp8_fu_223_p2 = ((r_reg_92 != ap_const_lv2_0) ? 1'b1 : 1'b0);

assign sel_tmp9_fu_306_p2 = ((c_reg_104 == ap_const_lv2_1) ? 1'b1 : 1'b0);

assign sel_tmp_fu_211_p2 = ((r_reg_92 == ap_const_lv2_0) ? 1'b1 : 1'b0);

assign tmp20_fu_295_p2 = (sel_tmp3_fu_283_p2 & sel_tmp5_fu_289_p2);

assign tmp_19_cast_fu_262_p1 = $signed(tmp_2_fu_257_p2);

assign tmp_1_fu_205_p2 = (p_shl_cast_fu_201_p1 - tmp_cast_fu_189_p1);

assign tmp_2_fu_257_p2 = (tmp_1_reg_662 + tmp_cast_19_fu_253_p1);

assign tmp_7_fu_267_p2 = (r_reg_92 | c_reg_104);

assign tmp_8_fu_273_p2 = ((tmp_7_fu_267_p2 == ap_const_lv2_0) ? 1'b1 : 1'b0);

assign tmp_cast_19_fu_253_p1 = c_reg_104;

assign tmp_cast_fu_189_p1 = r_reg_92;

assign tmp_s_fu_193_p3 = {{r_reg_92}, {ap_const_lv2_0}};

endmodule //filter_grad_vertical
