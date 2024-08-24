//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
//Date        : Thu Aug 22 21:53:36 2024
//Host        : lappy-tappy running 64-bit Ubuntu 22.04.4 LTS
//Command     : generate_target zybo_1B_wrapper.bd
//Design      : zybo_1B_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module zybo_1B_wrapper
   (DDR_0_addr,
    DDR_0_ba,
    DDR_0_cas_n,
    DDR_0_ck_n,
    DDR_0_ck_p,
    DDR_0_cke,
    DDR_0_cs_n,
    DDR_0_dm,
    DDR_0_dq,
    DDR_0_dqs_n,
    DDR_0_dqs_p,
    DDR_0_odt,
    DDR_0_ras_n,
    DDR_0_reset_n,
    DDR_0_we_n,
    FIXED_IO_0_ddr_vrn,
    FIXED_IO_0_ddr_vrp,
    FIXED_IO_0_mio,
    FIXED_IO_0_ps_clk,
    FIXED_IO_0_ps_porb,
    FIXED_IO_0_ps_srstb,
    leds_4bits_tri_io);
  inout [14:0]DDR_0_addr;
  inout [2:0]DDR_0_ba;
  inout DDR_0_cas_n;
  inout DDR_0_ck_n;
  inout DDR_0_ck_p;
  inout DDR_0_cke;
  inout DDR_0_cs_n;
  inout [3:0]DDR_0_dm;
  inout [31:0]DDR_0_dq;
  inout [3:0]DDR_0_dqs_n;
  inout [3:0]DDR_0_dqs_p;
  inout DDR_0_odt;
  inout DDR_0_ras_n;
  inout DDR_0_reset_n;
  inout DDR_0_we_n;
  inout FIXED_IO_0_ddr_vrn;
  inout FIXED_IO_0_ddr_vrp;
  inout [53:0]FIXED_IO_0_mio;
  inout FIXED_IO_0_ps_clk;
  inout FIXED_IO_0_ps_porb;
  inout FIXED_IO_0_ps_srstb;
  inout [3:0]leds_4bits_tri_io;

  wire [14:0]DDR_0_addr;
  wire [2:0]DDR_0_ba;
  wire DDR_0_cas_n;
  wire DDR_0_ck_n;
  wire DDR_0_ck_p;
  wire DDR_0_cke;
  wire DDR_0_cs_n;
  wire [3:0]DDR_0_dm;
  wire [31:0]DDR_0_dq;
  wire [3:0]DDR_0_dqs_n;
  wire [3:0]DDR_0_dqs_p;
  wire DDR_0_odt;
  wire DDR_0_ras_n;
  wire DDR_0_reset_n;
  wire DDR_0_we_n;
  wire FIXED_IO_0_ddr_vrn;
  wire FIXED_IO_0_ddr_vrp;
  wire [53:0]FIXED_IO_0_mio;
  wire FIXED_IO_0_ps_clk;
  wire FIXED_IO_0_ps_porb;
  wire FIXED_IO_0_ps_srstb;
  wire [0:0]leds_4bits_tri_i_0;
  wire [1:1]leds_4bits_tri_i_1;
  wire [2:2]leds_4bits_tri_i_2;
  wire [3:3]leds_4bits_tri_i_3;
  wire [0:0]leds_4bits_tri_io_0;
  wire [1:1]leds_4bits_tri_io_1;
  wire [2:2]leds_4bits_tri_io_2;
  wire [3:3]leds_4bits_tri_io_3;
  wire [0:0]leds_4bits_tri_o_0;
  wire [1:1]leds_4bits_tri_o_1;
  wire [2:2]leds_4bits_tri_o_2;
  wire [3:3]leds_4bits_tri_o_3;
  wire [0:0]leds_4bits_tri_t_0;
  wire [1:1]leds_4bits_tri_t_1;
  wire [2:2]leds_4bits_tri_t_2;
  wire [3:3]leds_4bits_tri_t_3;

  IOBUF leds_4bits_tri_iobuf_0
       (.I(leds_4bits_tri_o_0),
        .IO(leds_4bits_tri_io[0]),
        .O(leds_4bits_tri_i_0),
        .T(leds_4bits_tri_t_0));
  IOBUF leds_4bits_tri_iobuf_1
       (.I(leds_4bits_tri_o_1),
        .IO(leds_4bits_tri_io[1]),
        .O(leds_4bits_tri_i_1),
        .T(leds_4bits_tri_t_1));
  IOBUF leds_4bits_tri_iobuf_2
       (.I(leds_4bits_tri_o_2),
        .IO(leds_4bits_tri_io[2]),
        .O(leds_4bits_tri_i_2),
        .T(leds_4bits_tri_t_2));
  IOBUF leds_4bits_tri_iobuf_3
       (.I(leds_4bits_tri_o_3),
        .IO(leds_4bits_tri_io[3]),
        .O(leds_4bits_tri_i_3),
        .T(leds_4bits_tri_t_3));
  zybo_1B zybo_1B_i
       (.DDR_0_addr(DDR_0_addr),
        .DDR_0_ba(DDR_0_ba),
        .DDR_0_cas_n(DDR_0_cas_n),
        .DDR_0_ck_n(DDR_0_ck_n),
        .DDR_0_ck_p(DDR_0_ck_p),
        .DDR_0_cke(DDR_0_cke),
        .DDR_0_cs_n(DDR_0_cs_n),
        .DDR_0_dm(DDR_0_dm),
        .DDR_0_dq(DDR_0_dq),
        .DDR_0_dqs_n(DDR_0_dqs_n),
        .DDR_0_dqs_p(DDR_0_dqs_p),
        .DDR_0_odt(DDR_0_odt),
        .DDR_0_ras_n(DDR_0_ras_n),
        .DDR_0_reset_n(DDR_0_reset_n),
        .DDR_0_we_n(DDR_0_we_n),
        .FIXED_IO_0_ddr_vrn(FIXED_IO_0_ddr_vrn),
        .FIXED_IO_0_ddr_vrp(FIXED_IO_0_ddr_vrp),
        .FIXED_IO_0_mio(FIXED_IO_0_mio),
        .FIXED_IO_0_ps_clk(FIXED_IO_0_ps_clk),
        .FIXED_IO_0_ps_porb(FIXED_IO_0_ps_porb),
        .FIXED_IO_0_ps_srstb(FIXED_IO_0_ps_srstb),
        .leds_4bits_tri_i({leds_4bits_tri_i_3,leds_4bits_tri_i_2,leds_4bits_tri_i_1,leds_4bits_tri_i_0}),
        .leds_4bits_tri_o({leds_4bits_tri_o_3,leds_4bits_tri_o_2,leds_4bits_tri_o_1,leds_4bits_tri_o_0}),
        .leds_4bits_tri_t({leds_4bits_tri_t_3,leds_4bits_tri_t_2,leds_4bits_tri_t_1,leds_4bits_tri_t_0}));
endmodule
