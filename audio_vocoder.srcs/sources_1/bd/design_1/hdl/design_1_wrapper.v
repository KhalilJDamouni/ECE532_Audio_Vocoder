//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
//Date        : Tue Apr  2 21:33:19 2024
//Host        : BA3135WS09 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (BCLK_O,
    LED,
    LRCLK_O,
    MCLK_O,
    RX,
    SDATA_I,
    SDATA_O,
    VGA_B,
    VGA_G,
    VGA_HS,
    VGA_R,
    VGA_VS,
    iic_rtl_scl_io,
    iic_rtl_sda_io,
    reset,
    sys_clock_0,
    usb_uart_rxd,
    usb_uart_txd);
  output BCLK_O;
  output [7:0]LED;
  output LRCLK_O;
  output MCLK_O;
  input RX;
  input SDATA_I;
  output SDATA_O;
  output [3:0]VGA_B;
  output [3:0]VGA_G;
  output VGA_HS;
  output [3:0]VGA_R;
  output VGA_VS;
  inout iic_rtl_scl_io;
  inout iic_rtl_sda_io;
  input reset;
  input sys_clock_0;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire BCLK_O;
  wire [7:0]LED;
  wire LRCLK_O;
  wire MCLK_O;
  wire RX;
  wire SDATA_I;
  wire SDATA_O;
  wire [3:0]VGA_B;
  wire [3:0]VGA_G;
  wire VGA_HS;
  wire [3:0]VGA_R;
  wire VGA_VS;
  wire iic_rtl_scl_i;
  wire iic_rtl_scl_io;
  wire iic_rtl_scl_o;
  wire iic_rtl_scl_t;
  wire iic_rtl_sda_i;
  wire iic_rtl_sda_io;
  wire iic_rtl_sda_o;
  wire iic_rtl_sda_t;
  wire reset;
  wire sys_clock_0;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  design_1 design_1_i
       (.BCLK_O(BCLK_O),
        .LED(LED),
        .LRCLK_O(LRCLK_O),
        .MCLK_O(MCLK_O),
        .RX(RX),
        .SDATA_I(SDATA_I),
        .SDATA_O(SDATA_O),
        .VGA_B(VGA_B),
        .VGA_G(VGA_G),
        .VGA_HS(VGA_HS),
        .VGA_R(VGA_R),
        .VGA_VS(VGA_VS),
        .iic_rtl_scl_i(iic_rtl_scl_i),
        .iic_rtl_scl_o(iic_rtl_scl_o),
        .iic_rtl_scl_t(iic_rtl_scl_t),
        .iic_rtl_sda_i(iic_rtl_sda_i),
        .iic_rtl_sda_o(iic_rtl_sda_o),
        .iic_rtl_sda_t(iic_rtl_sda_t),
        .reset(reset),
        .sys_clock_0(sys_clock_0),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
  IOBUF iic_rtl_scl_iobuf
       (.I(iic_rtl_scl_o),
        .IO(iic_rtl_scl_io),
        .O(iic_rtl_scl_i),
        .T(iic_rtl_scl_t));
  IOBUF iic_rtl_sda_iobuf
       (.I(iic_rtl_sda_o),
        .IO(iic_rtl_sda_io),
        .O(iic_rtl_sda_i),
        .T(iic_rtl_sda_t));
endmodule
