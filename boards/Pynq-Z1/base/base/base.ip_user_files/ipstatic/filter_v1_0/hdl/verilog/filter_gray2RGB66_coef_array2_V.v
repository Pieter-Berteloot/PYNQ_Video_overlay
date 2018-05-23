// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

`timescale 1 ns / 1 ps
module filter_gray2RGB66_coef_array2_V_ram (addr0, ce0, d0, we0, addr1, ce1, d1, we1,  clk);

parameter DWIDTH = 10;
parameter AWIDTH = 4;
parameter MEM_SIZE = 9;

input[AWIDTH-1:0] addr0;
input ce0;
input[DWIDTH-1:0] d0;
input we0;
input[AWIDTH-1:0] addr1;
input ce1;
input[DWIDTH-1:0] d1;
input we1;
input clk;

(* ram_style = "distributed" *)reg [DWIDTH-1:0] ram[MEM_SIZE-1:0];

initial begin
    $readmemh("./filter_gray2RGB66_coef_array2_V_ram.dat", ram);
end



always @(posedge clk)  
begin 
    if (ce0) 
    begin
        if (we0) 
        begin 
            ram[addr0] <= d0; 
        end 
    end
end


always @(posedge clk)  
begin 
    if (ce1) 
    begin
        if (we1) 
        begin 
            ram[addr1] <= d1; 
        end 
    end
end


endmodule


`timescale 1 ns / 1 ps
module filter_gray2RGB66_coef_array2_V(
    reset,
    clk,
    address0,
    ce0,
    we0,
    d0,
    address1,
    ce1,
    we1,
    d1);

parameter DataWidth = 32'd10;
parameter AddressRange = 32'd9;
parameter AddressWidth = 32'd4;
input reset;
input clk;
input[AddressWidth - 1:0] address0;
input ce0;
input we0;
input[DataWidth - 1:0] d0;
input[AddressWidth - 1:0] address1;
input ce1;
input we1;
input[DataWidth - 1:0] d1;



filter_gray2RGB66_coef_array2_V_ram filter_gray2RGB66_coef_array2_V_ram_U(
    .clk( clk ),
    .addr0( address0 ),
    .ce0( ce0 ),
    .d0( d0 ),
    .we0( we0 ),
    .addr1( address1 ),
    .ce1( ce1 ),
    .d1( d1 ),
    .we1( we1 ));

endmodule

