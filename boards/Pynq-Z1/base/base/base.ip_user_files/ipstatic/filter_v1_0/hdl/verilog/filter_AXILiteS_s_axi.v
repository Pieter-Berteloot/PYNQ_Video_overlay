// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

`timescale 1ns/1ps
module filter_AXILiteS_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 7,
    C_S_AXI_DATA_WIDTH = 32
)(
    // axi4 lite slave signals
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    // user signals
    output wire [31:0]                   index,
    output wire [31:0]                   index2,
    output wire [31:0]                   index3,
    output wire [7:0]                    modeOriginal,
    output wire [7:0]                    mode2,
    output wire [7:0]                    mode1,
    output wire [7:0]                    mode,
    output wire [7:0]                    dir,
    output wire [31:0]                   splitIndex
);
//------------------------Address Info-------------------
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of index
//        bit 31~0 - index[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of index2
//        bit 31~0 - index2[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of index3
//        bit 31~0 - index3[31:0] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of modeOriginal
//        bit 7~0 - modeOriginal[7:0] (Read/Write)
//        others  - reserved
// 0x2c : reserved
// 0x30 : Data signal of mode2
//        bit 7~0 - mode2[7:0] (Read/Write)
//        others  - reserved
// 0x34 : reserved
// 0x38 : Data signal of mode1
//        bit 7~0 - mode1[7:0] (Read/Write)
//        others  - reserved
// 0x3c : reserved
// 0x40 : Data signal of mode
//        bit 7~0 - mode[7:0] (Read/Write)
//        others  - reserved
// 0x44 : reserved
// 0x48 : Data signal of dir
//        bit 7~0 - dir[7:0] (Read/Write)
//        others  - reserved
// 0x4c : reserved
// 0x50 : Data signal of splitIndex
//        bit 31~0 - splitIndex[31:0] (Read/Write)
// 0x54 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_INDEX_DATA_0        = 7'h10,
    ADDR_INDEX_CTRL          = 7'h14,
    ADDR_INDEX2_DATA_0       = 7'h18,
    ADDR_INDEX2_CTRL         = 7'h1c,
    ADDR_INDEX3_DATA_0       = 7'h20,
    ADDR_INDEX3_CTRL         = 7'h24,
    ADDR_MODEORIGINAL_DATA_0 = 7'h28,
    ADDR_MODEORIGINAL_CTRL   = 7'h2c,
    ADDR_MODE2_DATA_0        = 7'h30,
    ADDR_MODE2_CTRL          = 7'h34,
    ADDR_MODE1_DATA_0        = 7'h38,
    ADDR_MODE1_CTRL          = 7'h3c,
    ADDR_MODE_DATA_0         = 7'h40,
    ADDR_MODE_CTRL           = 7'h44,
    ADDR_DIR_DATA_0          = 7'h48,
    ADDR_DIR_CTRL            = 7'h4c,
    ADDR_SPLITINDEX_DATA_0   = 7'h50,
    ADDR_SPLITINDEX_CTRL     = 7'h54,
    WRIDLE                   = 2'd0,
    WRDATA                   = 2'd1,
    WRRESP                   = 2'd2,
    RDIDLE                   = 2'd0,
    RDDATA                   = 2'd1,
    ADDR_BITS         = 7;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [31:0]                   wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate;
    reg  [1:0]                    rnext;
    reg  [31:0]                   rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    reg  [31:0]                   int_index;
    reg  [31:0]                   int_index2;
    reg  [31:0]                   int_index3;
    reg  [7:0]                    int_modeOriginal;
    reg  [7:0]                    int_mode2;
    reg  [7:0]                    int_mode1;
    reg  [7:0]                    int_mode;
    reg  [7:0]                    int_dir;
    reg  [31:0]                   int_splitIndex;

//------------------------Instantiation------------------

//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRIDLE;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (WVALID)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= AWADDR[ADDR_BITS-1:0];
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA);
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDIDLE;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 1'b0;
            case (raddr)
                ADDR_INDEX_DATA_0: begin
                    rdata <= int_index[31:0];
                end
                ADDR_INDEX2_DATA_0: begin
                    rdata <= int_index2[31:0];
                end
                ADDR_INDEX3_DATA_0: begin
                    rdata <= int_index3[31:0];
                end
                ADDR_MODEORIGINAL_DATA_0: begin
                    rdata <= int_modeOriginal[7:0];
                end
                ADDR_MODE2_DATA_0: begin
                    rdata <= int_mode2[7:0];
                end
                ADDR_MODE1_DATA_0: begin
                    rdata <= int_mode1[7:0];
                end
                ADDR_MODE_DATA_0: begin
                    rdata <= int_mode[7:0];
                end
                ADDR_DIR_DATA_0: begin
                    rdata <= int_dir[7:0];
                end
                ADDR_SPLITINDEX_DATA_0: begin
                    rdata <= int_splitIndex[31:0];
                end
            endcase
        end
    end
end


//------------------------Register logic-----------------
assign index        = int_index;
assign index2       = int_index2;
assign index3       = int_index3;
assign modeOriginal = int_modeOriginal;
assign mode2        = int_mode2;
assign mode1        = int_mode1;
assign mode         = int_mode;
assign dir          = int_dir;
assign splitIndex   = int_splitIndex;
// int_index[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_index[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INDEX_DATA_0)
            int_index[31:0] <= (WDATA[31:0] & wmask) | (int_index[31:0] & ~wmask);
    end
end

// int_index2[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_index2[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INDEX2_DATA_0)
            int_index2[31:0] <= (WDATA[31:0] & wmask) | (int_index2[31:0] & ~wmask);
    end
end

// int_index3[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_index3[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INDEX3_DATA_0)
            int_index3[31:0] <= (WDATA[31:0] & wmask) | (int_index3[31:0] & ~wmask);
    end
end

// int_modeOriginal[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_modeOriginal[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_MODEORIGINAL_DATA_0)
            int_modeOriginal[7:0] <= (WDATA[31:0] & wmask) | (int_modeOriginal[7:0] & ~wmask);
    end
end

// int_mode2[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_mode2[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_MODE2_DATA_0)
            int_mode2[7:0] <= (WDATA[31:0] & wmask) | (int_mode2[7:0] & ~wmask);
    end
end

// int_mode1[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_mode1[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_MODE1_DATA_0)
            int_mode1[7:0] <= (WDATA[31:0] & wmask) | (int_mode1[7:0] & ~wmask);
    end
end

// int_mode[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_mode[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_MODE_DATA_0)
            int_mode[7:0] <= (WDATA[31:0] & wmask) | (int_mode[7:0] & ~wmask);
    end
end

// int_dir[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_dir[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIR_DATA_0)
            int_dir[7:0] <= (WDATA[31:0] & wmask) | (int_dir[7:0] & ~wmask);
    end
end

// int_splitIndex[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_splitIndex[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SPLITINDEX_DATA_0)
            int_splitIndex[31:0] <= (WDATA[31:0] & wmask) | (int_splitIndex[31:0] & ~wmask);
    end
end


//------------------------Memory logic-------------------

endmodule
