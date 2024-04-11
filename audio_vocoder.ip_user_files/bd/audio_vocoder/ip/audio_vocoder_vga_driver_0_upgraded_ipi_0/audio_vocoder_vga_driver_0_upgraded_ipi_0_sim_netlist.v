// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
// Date        : Sat Mar 23 19:34:20 2024
// Host        : BA3135WS39 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/damounik/March23/final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ip/audio_vocoder_vga_driver_0_upgraded_ipi_0/audio_vocoder_vga_driver_0_upgraded_ipi_0_sim_netlist.v
// Design      : audio_vocoder_vga_driver_0_upgraded_ipi_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "audio_vocoder_vga_driver_0_upgraded_ipi_0,vga_driver,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "vga_driver,Vivado 2018.3.1" *) 
(* NotValidForBitStream *)
module audio_vocoder_vga_driver_0_upgraded_ipi_0
   (CLK100MHZ,
    CPU_RESETN,
    VGA_R,
    VGA_G,
    VGA_B,
    VGA_HS,
    VGA_VS,
    BRAM_PORTB_0_addr,
    BRAM_PORTB_0_clk,
    BRAM_PORTB_0_din,
    BRAM_PORTB_0_dout,
    BRAM_PORTB_0_en,
    BRAM_PORTB_0_rst,
    BRAM_PORTB_0_we);
  input CLK100MHZ;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 CPU_RESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CPU_RESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input CPU_RESETN;
  output [3:0]VGA_R;
  output [3:0]VGA_G;
  output [3:0]VGA_B;
  output VGA_HS;
  output VGA_VS;
  output [31:0]BRAM_PORTB_0_addr;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 BRAM_PORTB_0_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTB_0_clk, ASSOCIATED_RESET BRAM_PORTB_0_rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN audio_vocoder_vga_driver_0_upgraded_ipi_0_BRAM_PORTB_0_clk, INSERT_VIP 0" *) output BRAM_PORTB_0_clk;
  output [31:0]BRAM_PORTB_0_din;
  input [31:0]BRAM_PORTB_0_dout;
  output BRAM_PORTB_0_en;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 BRAM_PORTB_0_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTB_0_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output BRAM_PORTB_0_rst;
  output [3:0]BRAM_PORTB_0_we;

  wire \<const0> ;
  wire \<const1> ;
  wire [30:0]\^BRAM_PORTB_0_addr ;
  wire [31:0]BRAM_PORTB_0_dout;
  wire CLK100MHZ;
  wire [3:0]VGA_B;
  wire [3:0]VGA_G;
  wire VGA_HS;
  wire [3:0]VGA_R;
  wire VGA_VS;

  assign BRAM_PORTB_0_addr[31] = \^BRAM_PORTB_0_addr [30];
  assign BRAM_PORTB_0_addr[30] = \^BRAM_PORTB_0_addr [30];
  assign BRAM_PORTB_0_addr[29] = \^BRAM_PORTB_0_addr [30];
  assign BRAM_PORTB_0_addr[28] = \^BRAM_PORTB_0_addr [30];
  assign BRAM_PORTB_0_addr[27] = \^BRAM_PORTB_0_addr [30];
  assign BRAM_PORTB_0_addr[26] = \^BRAM_PORTB_0_addr [30];
  assign BRAM_PORTB_0_addr[25] = \^BRAM_PORTB_0_addr [30];
  assign BRAM_PORTB_0_addr[24] = \^BRAM_PORTB_0_addr [30];
  assign BRAM_PORTB_0_addr[23] = \^BRAM_PORTB_0_addr [30];
  assign BRAM_PORTB_0_addr[22] = \^BRAM_PORTB_0_addr [30];
  assign BRAM_PORTB_0_addr[21] = \^BRAM_PORTB_0_addr [30];
  assign BRAM_PORTB_0_addr[20:0] = \^BRAM_PORTB_0_addr [20:0];
  assign BRAM_PORTB_0_clk = CLK100MHZ;
  assign BRAM_PORTB_0_din[31] = \<const0> ;
  assign BRAM_PORTB_0_din[30] = \<const0> ;
  assign BRAM_PORTB_0_din[29] = \<const0> ;
  assign BRAM_PORTB_0_din[28] = \<const1> ;
  assign BRAM_PORTB_0_din[27] = \<const0> ;
  assign BRAM_PORTB_0_din[26] = \<const0> ;
  assign BRAM_PORTB_0_din[25] = \<const1> ;
  assign BRAM_PORTB_0_din[24] = \<const0> ;
  assign BRAM_PORTB_0_din[23] = \<const0> ;
  assign BRAM_PORTB_0_din[22] = \<const0> ;
  assign BRAM_PORTB_0_din[21] = \<const1> ;
  assign BRAM_PORTB_0_din[20] = \<const1> ;
  assign BRAM_PORTB_0_din[19] = \<const0> ;
  assign BRAM_PORTB_0_din[18] = \<const1> ;
  assign BRAM_PORTB_0_din[17] = \<const0> ;
  assign BRAM_PORTB_0_din[16] = \<const0> ;
  assign BRAM_PORTB_0_din[15] = \<const0> ;
  assign BRAM_PORTB_0_din[14] = \<const1> ;
  assign BRAM_PORTB_0_din[13] = \<const0> ;
  assign BRAM_PORTB_0_din[12] = \<const1> ;
  assign BRAM_PORTB_0_din[11] = \<const0> ;
  assign BRAM_PORTB_0_din[10] = \<const1> ;
  assign BRAM_PORTB_0_din[9] = \<const1> ;
  assign BRAM_PORTB_0_din[8] = \<const0> ;
  assign BRAM_PORTB_0_din[7] = \<const0> ;
  assign BRAM_PORTB_0_din[6] = \<const1> ;
  assign BRAM_PORTB_0_din[5] = \<const1> ;
  assign BRAM_PORTB_0_din[4] = \<const1> ;
  assign BRAM_PORTB_0_din[3] = \<const1> ;
  assign BRAM_PORTB_0_din[2] = \<const0> ;
  assign BRAM_PORTB_0_din[1] = \<const0> ;
  assign BRAM_PORTB_0_din[0] = \<const0> ;
  assign BRAM_PORTB_0_en = \<const1> ;
  assign BRAM_PORTB_0_rst = \<const0> ;
  assign BRAM_PORTB_0_we[3] = \<const0> ;
  assign BRAM_PORTB_0_we[2] = \<const0> ;
  assign BRAM_PORTB_0_we[1] = \<const0> ;
  assign BRAM_PORTB_0_we[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  audio_vocoder_vga_driver_0_upgraded_ipi_0_vga_driver inst
       (.BRAM_PORTB_0_addr({\^BRAM_PORTB_0_addr [30],\^BRAM_PORTB_0_addr [20:0]}),
        .BRAM_PORTB_0_dout(BRAM_PORTB_0_dout[11:0]),
        .CLK100MHZ(CLK100MHZ),
        .VGA_B(VGA_B),
        .VGA_G(VGA_G),
        .VGA_HS(VGA_HS),
        .VGA_R(VGA_R),
        .VGA_VS(VGA_VS));
endmodule

(* ORIG_REF_NAME = "address_driver" *) 
module audio_vocoder_vga_driver_0_upgraded_ipi_0_address_driver
   (BRAM_PORTB_0_addr,
    horizontal_counter,
    DI,
    S,
    address_reg1,
    \address_reg_reg[12]_0 ,
    \address_reg_reg[12]_1 ,
    \address_reg_reg[20]_0 ,
    SR,
    clk,
    D);
  output [21:0]BRAM_PORTB_0_addr;
  input [6:0]horizontal_counter;
  input [1:0]DI;
  input [3:0]S;
  input [9:0]address_reg1;
  input [1:0]\address_reg_reg[12]_0 ;
  input [1:0]\address_reg_reg[12]_1 ;
  input [1:0]\address_reg_reg[20]_0 ;
  input [0:0]SR;
  input clk;
  input [0:0]D;

  wire [21:0]BRAM_PORTB_0_addr;
  wire [0:0]D;
  wire [1:0]DI;
  wire [3:0]S;
  wire [0:0]SR;
  wire address_reg0_carry__0_i_4_n_0;
  wire address_reg0_carry__0_i_5_n_0;
  wire address_reg0_carry__0_n_0;
  wire address_reg0_carry__0_n_1;
  wire address_reg0_carry__0_n_2;
  wire address_reg0_carry__0_n_3;
  wire address_reg0_carry__0_n_4;
  wire address_reg0_carry__0_n_5;
  wire address_reg0_carry__0_n_6;
  wire address_reg0_carry__0_n_7;
  wire address_reg0_carry__1_i_2_n_0;
  wire address_reg0_carry__1_i_3_n_0;
  wire address_reg0_carry__1_i_4_n_0;
  wire address_reg0_carry__1_i_5_n_0;
  wire address_reg0_carry__1_n_0;
  wire address_reg0_carry__1_n_1;
  wire address_reg0_carry__1_n_2;
  wire address_reg0_carry__1_n_3;
  wire address_reg0_carry__1_n_4;
  wire address_reg0_carry__1_n_5;
  wire address_reg0_carry__1_n_6;
  wire address_reg0_carry__1_n_7;
  wire address_reg0_carry__2_i_4_n_0;
  wire address_reg0_carry__2_i_5_n_0;
  wire address_reg0_carry__2_n_0;
  wire address_reg0_carry__2_n_1;
  wire address_reg0_carry__2_n_2;
  wire address_reg0_carry__2_n_3;
  wire address_reg0_carry__2_n_4;
  wire address_reg0_carry__2_n_5;
  wire address_reg0_carry__2_n_6;
  wire address_reg0_carry__2_n_7;
  wire address_reg0_carry__3_n_7;
  wire address_reg0_carry_n_0;
  wire address_reg0_carry_n_1;
  wire address_reg0_carry_n_2;
  wire address_reg0_carry_n_3;
  wire address_reg0_carry_n_4;
  wire address_reg0_carry_n_5;
  wire address_reg0_carry_n_6;
  wire address_reg0_carry_n_7;
  wire [9:0]address_reg1;
  wire [1:0]\address_reg_reg[12]_0 ;
  wire [1:0]\address_reg_reg[12]_1 ;
  wire [1:0]\address_reg_reg[20]_0 ;
  wire clk;
  wire [6:0]horizontal_counter;
  wire [3:0]NLW_address_reg0_carry__3_CO_UNCONNECTED;
  wire [3:1]NLW_address_reg0_carry__3_O_UNCONNECTED;

  CARRY4 address_reg0_carry
       (.CI(1'b0),
        .CO({address_reg0_carry_n_0,address_reg0_carry_n_1,address_reg0_carry_n_2,address_reg0_carry_n_3}),
        .CYINIT(horizontal_counter[4]),
        .DI({DI[1],horizontal_counter[6:5],DI[0]}),
        .O({address_reg0_carry_n_4,address_reg0_carry_n_5,address_reg0_carry_n_6,address_reg0_carry_n_7}),
        .S(S));
  CARRY4 address_reg0_carry__0
       (.CI(address_reg0_carry_n_0),
        .CO({address_reg0_carry__0_n_0,address_reg0_carry__0_n_1,address_reg0_carry__0_n_2,address_reg0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({address_reg1[1:0],\address_reg_reg[12]_0 }),
        .O({address_reg0_carry__0_n_4,address_reg0_carry__0_n_5,address_reg0_carry__0_n_6,address_reg0_carry__0_n_7}),
        .S({address_reg0_carry__0_i_4_n_0,address_reg0_carry__0_i_5_n_0,\address_reg_reg[12]_1 }));
  LUT2 #(
    .INIT(4'h9)) 
    address_reg0_carry__0_i_4
       (.I0(address_reg1[1]),
        .I1(address_reg1[2]),
        .O(address_reg0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    address_reg0_carry__0_i_5
       (.I0(address_reg1[0]),
        .I1(address_reg1[1]),
        .O(address_reg0_carry__0_i_5_n_0));
  CARRY4 address_reg0_carry__1
       (.CI(address_reg0_carry__0_n_0),
        .CO({address_reg0_carry__1_n_0,address_reg0_carry__1_n_1,address_reg0_carry__1_n_2,address_reg0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(address_reg1[5:2]),
        .O({address_reg0_carry__1_n_4,address_reg0_carry__1_n_5,address_reg0_carry__1_n_6,address_reg0_carry__1_n_7}),
        .S({address_reg0_carry__1_i_2_n_0,address_reg0_carry__1_i_3_n_0,address_reg0_carry__1_i_4_n_0,address_reg0_carry__1_i_5_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    address_reg0_carry__1_i_2
       (.I0(address_reg1[5]),
        .I1(address_reg1[6]),
        .O(address_reg0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    address_reg0_carry__1_i_3
       (.I0(address_reg1[4]),
        .I1(address_reg1[5]),
        .O(address_reg0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    address_reg0_carry__1_i_4
       (.I0(address_reg1[3]),
        .I1(address_reg1[4]),
        .O(address_reg0_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    address_reg0_carry__1_i_5
       (.I0(address_reg1[2]),
        .I1(address_reg1[3]),
        .O(address_reg0_carry__1_i_5_n_0));
  CARRY4 address_reg0_carry__2
       (.CI(address_reg0_carry__1_n_0),
        .CO({address_reg0_carry__2_n_0,address_reg0_carry__2_n_1,address_reg0_carry__2_n_2,address_reg0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(address_reg1[9:6]),
        .O({address_reg0_carry__2_n_4,address_reg0_carry__2_n_5,address_reg0_carry__2_n_6,address_reg0_carry__2_n_7}),
        .S({\address_reg_reg[20]_0 ,address_reg0_carry__2_i_4_n_0,address_reg0_carry__2_i_5_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    address_reg0_carry__2_i_4
       (.I0(address_reg1[7]),
        .I1(address_reg1[8]),
        .O(address_reg0_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    address_reg0_carry__2_i_5
       (.I0(address_reg1[6]),
        .I1(address_reg1[7]),
        .O(address_reg0_carry__2_i_5_n_0));
  CARRY4 address_reg0_carry__3
       (.CI(address_reg0_carry__2_n_0),
        .CO(NLW_address_reg0_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_address_reg0_carry__3_O_UNCONNECTED[3:1],address_reg0_carry__3_n_7}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(horizontal_counter[0]),
        .Q(BRAM_PORTB_0_addr[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(address_reg0_carry__0_n_6),
        .Q(BRAM_PORTB_0_addr[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(address_reg0_carry__0_n_5),
        .Q(BRAM_PORTB_0_addr[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(address_reg0_carry__0_n_4),
        .Q(BRAM_PORTB_0_addr[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(address_reg0_carry__1_n_7),
        .Q(BRAM_PORTB_0_addr[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(address_reg0_carry__1_n_6),
        .Q(BRAM_PORTB_0_addr[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(address_reg0_carry__1_n_5),
        .Q(BRAM_PORTB_0_addr[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(address_reg0_carry__1_n_4),
        .Q(BRAM_PORTB_0_addr[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(address_reg0_carry__2_n_7),
        .Q(BRAM_PORTB_0_addr[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(address_reg0_carry__2_n_6),
        .Q(BRAM_PORTB_0_addr[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(address_reg0_carry__2_n_5),
        .Q(BRAM_PORTB_0_addr[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(horizontal_counter[1]),
        .Q(BRAM_PORTB_0_addr[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(address_reg0_carry__2_n_4),
        .Q(BRAM_PORTB_0_addr[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(horizontal_counter[2]),
        .Q(BRAM_PORTB_0_addr[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(address_reg0_carry__3_n_7),
        .Q(BRAM_PORTB_0_addr[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(horizontal_counter[3]),
        .Q(BRAM_PORTB_0_addr[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(D),
        .Q(BRAM_PORTB_0_addr[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(address_reg0_carry_n_7),
        .Q(BRAM_PORTB_0_addr[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(address_reg0_carry_n_6),
        .Q(BRAM_PORTB_0_addr[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(address_reg0_carry_n_5),
        .Q(BRAM_PORTB_0_addr[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(address_reg0_carry_n_4),
        .Q(BRAM_PORTB_0_addr[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(address_reg0_carry__0_n_7),
        .Q(BRAM_PORTB_0_addr[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "div_by_4_clk" *) 
module audio_vocoder_vga_driver_0_upgraded_ipi_0_div_by_4_clk
   (clk,
    CLK100MHZ);
  output clk;
  input CLK100MHZ;

  wire CLK100MHZ;
  wire clk;
  wire [1:0]counter;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  wire out_clk_reg_i_1_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter[0]),
        .O(\counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \counter[1]_i_1 
       (.I0(counter[0]),
        .I1(counter[1]),
        .O(\counter[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\counter[0]_i_1_n_0 ),
        .Q(counter[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\counter[1]_i_1_n_0 ),
        .Q(counter[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    out_clk_reg_i_1
       (.I0(counter[1]),
        .I1(counter[0]),
        .I2(clk),
        .O(out_clk_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    out_clk_reg_reg
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(out_clk_reg_i_1_n_0),
        .Q(clk),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "double_counter" *) 
module audio_vocoder_vga_driver_0_upgraded_ipi_0_double_counter
   (S,
    \counter_variable2_reg[9]_0 ,
    \counter_variable1_reg[6]_0 ,
    \counter_variable1_reg[9]_0 ,
    \counter_variable2_reg[9]_1 ,
    VGA_B,
    VGA_G,
    VGA_R,
    VGA_VS,
    SR,
    DI,
    \counter_variable1_reg[9]_1 ,
    D,
    VGA_HS,
    BRAM_PORTB_0_dout,
    clk);
  output [3:0]S;
  output [9:0]\counter_variable2_reg[9]_0 ;
  output [6:0]\counter_variable1_reg[6]_0 ;
  output [1:0]\counter_variable1_reg[9]_0 ;
  output [1:0]\counter_variable2_reg[9]_1 ;
  output [3:0]VGA_B;
  output [3:0]VGA_G;
  output [3:0]VGA_R;
  output VGA_VS;
  output [0:0]SR;
  output [1:0]DI;
  output [1:0]\counter_variable1_reg[9]_1 ;
  output [0:0]D;
  output VGA_HS;
  input [11:0]BRAM_PORTB_0_dout;
  input clk;

  wire [11:0]BRAM_PORTB_0_dout;
  wire [0:0]D;
  wire [1:0]DI;
  wire [3:0]S;
  wire [0:0]SR;
  wire [3:0]VGA_B;
  wire [3:0]VGA_G;
  wire VGA_HS;
  wire [3:0]VGA_R;
  wire \VGA_R[3]_INST_0_i_1_n_0 ;
  wire \VGA_R[3]_INST_0_i_2_n_0 ;
  wire \VGA_R[3]_INST_0_i_3_n_0 ;
  wire VGA_VS;
  wire VGA_VS_INST_0_i_1_n_0;
  wire address_reg0_carry__0_i_10_n_0;
  wire address_reg0_carry__0_i_11_n_0;
  wire address_reg0_carry__0_i_12_n_0;
  wire address_reg0_carry__0_i_13_n_0;
  wire address_reg0_carry__0_i_14_n_0;
  wire address_reg0_carry__0_i_1_n_0;
  wire address_reg0_carry__0_i_1_n_1;
  wire address_reg0_carry__0_i_1_n_2;
  wire address_reg0_carry__0_i_1_n_3;
  wire address_reg0_carry__0_i_9_n_0;
  wire address_reg0_carry__1_i_10_n_0;
  wire address_reg0_carry__1_i_11_n_0;
  wire address_reg0_carry__1_i_12_n_0;
  wire address_reg0_carry__1_i_13_n_0;
  wire address_reg0_carry__1_i_1_n_0;
  wire address_reg0_carry__1_i_1_n_1;
  wire address_reg0_carry__1_i_1_n_2;
  wire address_reg0_carry__1_i_1_n_3;
  wire address_reg0_carry__2_i_10_n_0;
  wire address_reg0_carry__2_i_11_n_0;
  wire address_reg0_carry__2_i_12_n_0;
  wire address_reg0_carry__2_i_1_n_2;
  wire address_reg0_carry__2_i_1_n_3;
  wire address_reg0_carry__2_i_9_n_0;
  wire [9:8]address_reg1;
  wire [9:2]address_reg2;
  wire \address_reg[31]_i_2_n_0 ;
  wire \address_reg[31]_i_3_n_0 ;
  wire clk;
  wire \counter_variable1[0]_i_1_n_0 ;
  wire \counter_variable1[0]_i_2_n_0 ;
  wire \counter_variable1[1]_i_1_n_0 ;
  wire \counter_variable1[2]_i_1_n_0 ;
  wire \counter_variable1[3]_i_1_n_0 ;
  wire \counter_variable1[4]_i_1_n_0 ;
  wire \counter_variable1[5]_i_1_n_0 ;
  wire \counter_variable1[6]_i_1_n_0 ;
  wire \counter_variable1[7]_i_1_n_0 ;
  wire \counter_variable1[8]_i_1_n_0 ;
  wire \counter_variable1[9]_i_1_n_0 ;
  wire \counter_variable1[9]_i_2_n_0 ;
  wire \counter_variable1[9]_i_3_n_0 ;
  wire \counter_variable1[9]_i_4_n_0 ;
  wire [6:0]\counter_variable1_reg[6]_0 ;
  wire [1:0]\counter_variable1_reg[9]_0 ;
  wire [1:0]\counter_variable1_reg[9]_1 ;
  wire \counter_variable2[0]_i_1_n_0 ;
  wire \counter_variable2[2]_i_1_n_0 ;
  wire \counter_variable2[6]_i_2_n_0 ;
  wire \counter_variable2[9]_i_1_n_0 ;
  wire \counter_variable2[9]_i_2_n_0 ;
  wire \counter_variable2[9]_i_4_n_0 ;
  wire \counter_variable2[9]_i_5_n_0 ;
  wire \counter_variable2[9]_i_6_n_0 ;
  wire \counter_variable2[9]_i_7_n_0 ;
  wire [9:0]\counter_variable2_reg[9]_0 ;
  wire [1:0]\counter_variable2_reg[9]_1 ;
  wire [9:3]data0;
  wire [1:1]data0__0;
  wire [9:7]horizontal_counter;
  wire [9:0]vertical_counter;
  wire [2:2]NLW_address_reg0_carry__2_i_1_CO_UNCONNECTED;
  wire [3:3]NLW_address_reg0_carry__2_i_1_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h01EA000000000000)) 
    \VGA_B[0]_INST_0 
       (.I0(\VGA_R[3]_INST_0_i_1_n_0 ),
        .I1(\VGA_R[3]_INST_0_i_2_n_0 ),
        .I2(vertical_counter[5]),
        .I3(vertical_counter[9]),
        .I4(\VGA_R[3]_INST_0_i_3_n_0 ),
        .I5(BRAM_PORTB_0_dout[0]),
        .O(VGA_B[0]));
  LUT6 #(
    .INIT(64'h01EA000000000000)) 
    \VGA_B[1]_INST_0 
       (.I0(\VGA_R[3]_INST_0_i_1_n_0 ),
        .I1(\VGA_R[3]_INST_0_i_2_n_0 ),
        .I2(vertical_counter[5]),
        .I3(vertical_counter[9]),
        .I4(\VGA_R[3]_INST_0_i_3_n_0 ),
        .I5(BRAM_PORTB_0_dout[1]),
        .O(VGA_B[1]));
  LUT6 #(
    .INIT(64'h01EA000000000000)) 
    \VGA_B[2]_INST_0 
       (.I0(\VGA_R[3]_INST_0_i_1_n_0 ),
        .I1(\VGA_R[3]_INST_0_i_2_n_0 ),
        .I2(vertical_counter[5]),
        .I3(vertical_counter[9]),
        .I4(\VGA_R[3]_INST_0_i_3_n_0 ),
        .I5(BRAM_PORTB_0_dout[2]),
        .O(VGA_B[2]));
  LUT6 #(
    .INIT(64'h01EA000000000000)) 
    \VGA_B[3]_INST_0 
       (.I0(\VGA_R[3]_INST_0_i_1_n_0 ),
        .I1(\VGA_R[3]_INST_0_i_2_n_0 ),
        .I2(vertical_counter[5]),
        .I3(vertical_counter[9]),
        .I4(\VGA_R[3]_INST_0_i_3_n_0 ),
        .I5(BRAM_PORTB_0_dout[3]),
        .O(VGA_B[3]));
  LUT6 #(
    .INIT(64'h01EA000000000000)) 
    \VGA_G[0]_INST_0 
       (.I0(\VGA_R[3]_INST_0_i_1_n_0 ),
        .I1(\VGA_R[3]_INST_0_i_2_n_0 ),
        .I2(vertical_counter[5]),
        .I3(vertical_counter[9]),
        .I4(\VGA_R[3]_INST_0_i_3_n_0 ),
        .I5(BRAM_PORTB_0_dout[4]),
        .O(VGA_G[0]));
  LUT6 #(
    .INIT(64'h01EA000000000000)) 
    \VGA_G[1]_INST_0 
       (.I0(\VGA_R[3]_INST_0_i_1_n_0 ),
        .I1(\VGA_R[3]_INST_0_i_2_n_0 ),
        .I2(vertical_counter[5]),
        .I3(vertical_counter[9]),
        .I4(\VGA_R[3]_INST_0_i_3_n_0 ),
        .I5(BRAM_PORTB_0_dout[5]),
        .O(VGA_G[1]));
  LUT6 #(
    .INIT(64'h01EA000000000000)) 
    \VGA_G[2]_INST_0 
       (.I0(\VGA_R[3]_INST_0_i_1_n_0 ),
        .I1(\VGA_R[3]_INST_0_i_2_n_0 ),
        .I2(vertical_counter[5]),
        .I3(vertical_counter[9]),
        .I4(\VGA_R[3]_INST_0_i_3_n_0 ),
        .I5(BRAM_PORTB_0_dout[6]),
        .O(VGA_G[2]));
  LUT6 #(
    .INIT(64'h01EA000000000000)) 
    \VGA_G[3]_INST_0 
       (.I0(\VGA_R[3]_INST_0_i_1_n_0 ),
        .I1(\VGA_R[3]_INST_0_i_2_n_0 ),
        .I2(vertical_counter[5]),
        .I3(vertical_counter[9]),
        .I4(\VGA_R[3]_INST_0_i_3_n_0 ),
        .I5(BRAM_PORTB_0_dout[7]),
        .O(VGA_G[3]));
  LUT5 #(
    .INIT(32'h00010101)) 
    VGA_HS_INST_0
       (.I0(horizontal_counter[7]),
        .I1(horizontal_counter[8]),
        .I2(horizontal_counter[9]),
        .I3(\counter_variable1_reg[6]_0 [6]),
        .I4(\counter_variable1_reg[6]_0 [5]),
        .O(VGA_HS));
  LUT6 #(
    .INIT(64'h01EA000000000000)) 
    \VGA_R[0]_INST_0 
       (.I0(\VGA_R[3]_INST_0_i_1_n_0 ),
        .I1(\VGA_R[3]_INST_0_i_2_n_0 ),
        .I2(vertical_counter[5]),
        .I3(vertical_counter[9]),
        .I4(\VGA_R[3]_INST_0_i_3_n_0 ),
        .I5(BRAM_PORTB_0_dout[8]),
        .O(VGA_R[0]));
  LUT6 #(
    .INIT(64'h01EA000000000000)) 
    \VGA_R[1]_INST_0 
       (.I0(\VGA_R[3]_INST_0_i_1_n_0 ),
        .I1(\VGA_R[3]_INST_0_i_2_n_0 ),
        .I2(vertical_counter[5]),
        .I3(vertical_counter[9]),
        .I4(\VGA_R[3]_INST_0_i_3_n_0 ),
        .I5(BRAM_PORTB_0_dout[9]),
        .O(VGA_R[1]));
  LUT6 #(
    .INIT(64'h01EA000000000000)) 
    \VGA_R[2]_INST_0 
       (.I0(\VGA_R[3]_INST_0_i_1_n_0 ),
        .I1(\VGA_R[3]_INST_0_i_2_n_0 ),
        .I2(vertical_counter[5]),
        .I3(vertical_counter[9]),
        .I4(\VGA_R[3]_INST_0_i_3_n_0 ),
        .I5(BRAM_PORTB_0_dout[10]),
        .O(VGA_R[2]));
  LUT6 #(
    .INIT(64'h01EA000000000000)) 
    \VGA_R[3]_INST_0 
       (.I0(\VGA_R[3]_INST_0_i_1_n_0 ),
        .I1(\VGA_R[3]_INST_0_i_2_n_0 ),
        .I2(vertical_counter[5]),
        .I3(vertical_counter[9]),
        .I4(\VGA_R[3]_INST_0_i_3_n_0 ),
        .I5(BRAM_PORTB_0_dout[11]),
        .O(VGA_R[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \VGA_R[3]_INST_0_i_1 
       (.I0(vertical_counter[7]),
        .I1(vertical_counter[6]),
        .I2(vertical_counter[8]),
        .O(\VGA_R[3]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFEFEFE)) 
    \VGA_R[3]_INST_0_i_2 
       (.I0(vertical_counter[4]),
        .I1(vertical_counter[2]),
        .I2(vertical_counter[3]),
        .I3(vertical_counter[1]),
        .I4(vertical_counter[0]),
        .O(\VGA_R[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h55555557EEEEEEEA)) 
    \VGA_R[3]_INST_0_i_3 
       (.I0(horizontal_counter[8]),
        .I1(horizontal_counter[7]),
        .I2(\counter_variable1_reg[6]_0 [6]),
        .I3(\counter_variable1_reg[6]_0 [5]),
        .I4(\counter_variable1_reg[6]_0 [4]),
        .I5(horizontal_counter[9]),
        .O(\VGA_R[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    VGA_VS_INST_0
       (.I0(vertical_counter[3]),
        .I1(vertical_counter[2]),
        .I2(vertical_counter[4]),
        .I3(vertical_counter[5]),
        .I4(vertical_counter[9]),
        .I5(VGA_VS_INST_0_i_1_n_0),
        .O(VGA_VS));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    VGA_VS_INST_0_i_1
       (.I0(vertical_counter[8]),
        .I1(vertical_counter[6]),
        .I2(vertical_counter[7]),
        .I3(vertical_counter[1]),
        .O(VGA_VS_INST_0_i_1_n_0));
  CARRY4 address_reg0_carry__0_i_1
       (.CI(1'b0),
        .CO({address_reg0_carry__0_i_1_n_0,address_reg0_carry__0_i_1_n_1,address_reg0_carry__0_i_1_n_2,address_reg0_carry__0_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({address_reg2[2],address_reg0_carry__0_i_9_n_0,address_reg0_carry__0_i_10_n_0,1'b0}),
        .O({\counter_variable2_reg[9]_0 [1:0],address_reg1}),
        .S({address_reg0_carry__0_i_11_n_0,address_reg0_carry__0_i_12_n_0,address_reg0_carry__0_i_13_n_0,address_reg0_carry__0_i_14_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    address_reg0_carry__0_i_10
       (.I0(vertical_counter[0]),
        .O(address_reg0_carry__0_i_10_n_0));
  LUT5 #(
    .INIT(32'h5AA6A6A6)) 
    address_reg0_carry__0_i_11
       (.I0(vertical_counter[4]),
        .I1(vertical_counter[3]),
        .I2(vertical_counter[2]),
        .I3(vertical_counter[1]),
        .I4(vertical_counter[0]),
        .O(address_reg0_carry__0_i_11_n_0));
  LUT4 #(
    .INIT(16'hA669)) 
    address_reg0_carry__0_i_12
       (.I0(vertical_counter[3]),
        .I1(vertical_counter[2]),
        .I2(vertical_counter[1]),
        .I3(vertical_counter[0]),
        .O(address_reg0_carry__0_i_12_n_0));
  LUT3 #(
    .INIT(8'hA6)) 
    address_reg0_carry__0_i_13
       (.I0(vertical_counter[2]),
        .I1(vertical_counter[0]),
        .I2(vertical_counter[1]),
        .O(address_reg0_carry__0_i_13_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    address_reg0_carry__0_i_14
       (.I0(vertical_counter[0]),
        .I1(vertical_counter[1]),
        .O(address_reg0_carry__0_i_14_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    address_reg0_carry__0_i_2
       (.I0(horizontal_counter[9]),
        .I1(address_reg1[9]),
        .O(\counter_variable1_reg[9]_1 [1]));
  LUT2 #(
    .INIT(4'hE)) 
    address_reg0_carry__0_i_3
       (.I0(address_reg1[8]),
        .I1(horizontal_counter[8]),
        .O(\counter_variable1_reg[9]_1 [0]));
  LUT3 #(
    .INIT(8'hE1)) 
    address_reg0_carry__0_i_6
       (.I0(address_reg1[9]),
        .I1(horizontal_counter[9]),
        .I2(\counter_variable2_reg[9]_0 [0]),
        .O(\counter_variable1_reg[9]_0 [1]));
  LUT4 #(
    .INIT(16'h1EE1)) 
    address_reg0_carry__0_i_7
       (.I0(horizontal_counter[8]),
        .I1(address_reg1[8]),
        .I2(address_reg1[9]),
        .I3(horizontal_counter[9]),
        .O(\counter_variable1_reg[9]_0 [0]));
  LUT3 #(
    .INIT(8'h95)) 
    address_reg0_carry__0_i_8
       (.I0(vertical_counter[2]),
        .I1(vertical_counter[0]),
        .I2(vertical_counter[1]),
        .O(address_reg2[2]));
  LUT2 #(
    .INIT(4'h6)) 
    address_reg0_carry__0_i_9
       (.I0(vertical_counter[0]),
        .I1(vertical_counter[1]),
        .O(address_reg0_carry__0_i_9_n_0));
  CARRY4 address_reg0_carry__1_i_1
       (.CI(address_reg0_carry__0_i_1_n_0),
        .CO({address_reg0_carry__1_i_1_n_0,address_reg0_carry__1_i_1_n_1,address_reg0_carry__1_i_1_n_2,address_reg0_carry__1_i_1_n_3}),
        .CYINIT(1'b0),
        .DI(address_reg2[6:3]),
        .O(\counter_variable2_reg[9]_0 [5:2]),
        .S({address_reg0_carry__1_i_10_n_0,address_reg0_carry__1_i_11_n_0,address_reg0_carry__1_i_12_n_0,address_reg0_carry__1_i_13_n_0}));
  LUT4 #(
    .INIT(16'h669A)) 
    address_reg0_carry__1_i_10
       (.I0(vertical_counter[8]),
        .I1(address_reg0_carry__2_i_12_n_0),
        .I2(vertical_counter[7]),
        .I3(vertical_counter[6]),
        .O(address_reg0_carry__1_i_10_n_0));
  LUT4 #(
    .INIT(16'h96A9)) 
    address_reg0_carry__1_i_11
       (.I0(vertical_counter[7]),
        .I1(vertical_counter[5]),
        .I2(\VGA_R[3]_INST_0_i_2_n_0 ),
        .I3(vertical_counter[6]),
        .O(address_reg0_carry__1_i_11_n_0));
  LUT6 #(
    .INIT(64'h5559AAAAAAA65559)) 
    address_reg0_carry__1_i_12
       (.I0(vertical_counter[6]),
        .I1(\counter_variable2[6]_i_2_n_0 ),
        .I2(vertical_counter[3]),
        .I3(vertical_counter[2]),
        .I4(vertical_counter[4]),
        .I5(vertical_counter[5]),
        .O(address_reg0_carry__1_i_12_n_0));
  LUT6 #(
    .INIT(64'hAA55A559A559A559)) 
    address_reg0_carry__1_i_13
       (.I0(vertical_counter[5]),
        .I1(vertical_counter[4]),
        .I2(vertical_counter[2]),
        .I3(vertical_counter[3]),
        .I4(vertical_counter[1]),
        .I5(vertical_counter[0]),
        .O(address_reg0_carry__1_i_13_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAA655555555)) 
    address_reg0_carry__1_i_6
       (.I0(vertical_counter[6]),
        .I1(\counter_variable2[6]_i_2_n_0 ),
        .I2(vertical_counter[3]),
        .I3(vertical_counter[2]),
        .I4(vertical_counter[4]),
        .I5(vertical_counter[5]),
        .O(address_reg2[6]));
  LUT6 #(
    .INIT(64'h00000007FFFFFFF8)) 
    address_reg0_carry__1_i_7
       (.I0(vertical_counter[0]),
        .I1(vertical_counter[1]),
        .I2(vertical_counter[3]),
        .I3(vertical_counter[2]),
        .I4(vertical_counter[4]),
        .I5(vertical_counter[5]),
        .O(address_reg2[5]));
  LUT5 #(
    .INIT(32'hAAA9A9A9)) 
    address_reg0_carry__1_i_8
       (.I0(vertical_counter[4]),
        .I1(vertical_counter[3]),
        .I2(vertical_counter[2]),
        .I3(vertical_counter[1]),
        .I4(vertical_counter[0]),
        .O(address_reg2[4]));
  LUT4 #(
    .INIT(16'hA999)) 
    address_reg0_carry__1_i_9
       (.I0(vertical_counter[3]),
        .I1(vertical_counter[2]),
        .I2(vertical_counter[1]),
        .I3(vertical_counter[0]),
        .O(address_reg2[3]));
  CARRY4 address_reg0_carry__2_i_1
       (.CI(address_reg0_carry__1_i_1_n_0),
        .CO({\counter_variable2_reg[9]_0 [9],NLW_address_reg0_carry__2_i_1_CO_UNCONNECTED[2],address_reg0_carry__2_i_1_n_2,address_reg0_carry__2_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,address_reg2[9:7]}),
        .O({NLW_address_reg0_carry__2_i_1_O_UNCONNECTED[3],\counter_variable2_reg[9]_0 [8:6]}),
        .S({1'b1,address_reg0_carry__2_i_9_n_0,address_reg0_carry__2_i_10_n_0,address_reg0_carry__2_i_11_n_0}));
  LUT6 #(
    .INIT(64'hF0F0F0A4F0F0F00C)) 
    address_reg0_carry__2_i_10
       (.I0(vertical_counter[5]),
        .I1(vertical_counter[9]),
        .I2(vertical_counter[8]),
        .I3(vertical_counter[6]),
        .I4(vertical_counter[7]),
        .I5(\VGA_R[3]_INST_0_i_2_n_0 ),
        .O(address_reg0_carry__2_i_10_n_0));
  LUT5 #(
    .INIT(32'h5566AA9A)) 
    address_reg0_carry__2_i_11
       (.I0(vertical_counter[9]),
        .I1(address_reg0_carry__2_i_12_n_0),
        .I2(vertical_counter[8]),
        .I3(vertical_counter[6]),
        .I4(vertical_counter[7]),
        .O(address_reg0_carry__2_i_11_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFF800000000)) 
    address_reg0_carry__2_i_12
       (.I0(vertical_counter[0]),
        .I1(vertical_counter[1]),
        .I2(vertical_counter[3]),
        .I3(vertical_counter[2]),
        .I4(vertical_counter[4]),
        .I5(vertical_counter[5]),
        .O(address_reg0_carry__2_i_12_n_0));
  LUT6 #(
    .INIT(64'h5555555555555556)) 
    address_reg0_carry__2_i_2
       (.I0(\counter_variable2_reg[9]_0 [9]),
        .I1(vertical_counter[9]),
        .I2(address_reg0_carry__2_i_12_n_0),
        .I3(vertical_counter[8]),
        .I4(vertical_counter[6]),
        .I5(vertical_counter[7]),
        .O(\counter_variable2_reg[9]_1 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    address_reg0_carry__2_i_3
       (.I0(\counter_variable2_reg[9]_0 [8]),
        .I1(\counter_variable2_reg[9]_0 [9]),
        .O(\counter_variable2_reg[9]_1 [0]));
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    address_reg0_carry__2_i_6
       (.I0(vertical_counter[9]),
        .I1(address_reg0_carry__2_i_12_n_0),
        .I2(vertical_counter[8]),
        .I3(vertical_counter[6]),
        .I4(vertical_counter[7]),
        .O(address_reg2[9]));
  LUT4 #(
    .INIT(16'hAAA9)) 
    address_reg0_carry__2_i_7
       (.I0(vertical_counter[8]),
        .I1(address_reg0_carry__2_i_12_n_0),
        .I2(vertical_counter[7]),
        .I3(vertical_counter[6]),
        .O(address_reg2[8]));
  LUT3 #(
    .INIT(8'hA9)) 
    address_reg0_carry__2_i_8
       (.I0(vertical_counter[7]),
        .I1(address_reg0_carry__2_i_12_n_0),
        .I2(vertical_counter[6]),
        .O(address_reg2[7]));
  LUT6 #(
    .INIT(64'hCCCCCCC8CCCCCCC0)) 
    address_reg0_carry__2_i_9
       (.I0(vertical_counter[5]),
        .I1(vertical_counter[9]),
        .I2(vertical_counter[8]),
        .I3(vertical_counter[6]),
        .I4(vertical_counter[7]),
        .I5(\VGA_R[3]_INST_0_i_2_n_0 ),
        .O(address_reg0_carry__2_i_9_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    address_reg0_carry_i_1
       (.I0(address_reg1[8]),
        .I1(horizontal_counter[8]),
        .O(DI[1]));
  LUT1 #(
    .INIT(2'h1)) 
    address_reg0_carry_i_2
       (.I0(\counter_variable1_reg[6]_0 [5]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h9699)) 
    address_reg0_carry_i_3
       (.I0(address_reg1[8]),
        .I1(horizontal_counter[8]),
        .I2(vertical_counter[0]),
        .I3(horizontal_counter[7]),
        .O(S[3]));
  LUT3 #(
    .INIT(8'h69)) 
    address_reg0_carry_i_4
       (.I0(\counter_variable1_reg[6]_0 [6]),
        .I1(vertical_counter[0]),
        .I2(horizontal_counter[7]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h9)) 
    address_reg0_carry_i_5
       (.I0(\counter_variable1_reg[6]_0 [5]),
        .I1(\counter_variable1_reg[6]_0 [6]),
        .O(S[1]));
  LUT1 #(
    .INIT(2'h1)) 
    address_reg0_carry_i_6
       (.I0(\counter_variable1_reg[6]_0 [5]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEFEEFD)) 
    \address_reg[31]_i_1 
       (.I0(vertical_counter[9]),
        .I1(\address_reg[31]_i_2_n_0 ),
        .I2(vertical_counter[5]),
        .I3(\VGA_R[3]_INST_0_i_1_n_0 ),
        .I4(\VGA_R[3]_INST_0_i_2_n_0 ),
        .I5(\address_reg[31]_i_3_n_0 ),
        .O(SR));
  LUT6 #(
    .INIT(64'hFF000000FE000000)) 
    \address_reg[31]_i_2 
       (.I0(\counter_variable1_reg[6]_0 [6]),
        .I1(\counter_variable1_reg[6]_0 [5]),
        .I2(\counter_variable1_reg[6]_0 [4]),
        .I3(horizontal_counter[8]),
        .I4(horizontal_counter[9]),
        .I5(horizontal_counter[7]),
        .O(\address_reg[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0101010101010111)) 
    \address_reg[31]_i_3 
       (.I0(horizontal_counter[9]),
        .I1(horizontal_counter[8]),
        .I2(horizontal_counter[7]),
        .I3(\counter_variable1_reg[6]_0 [6]),
        .I4(\counter_variable1_reg[6]_0 [5]),
        .I5(\counter_variable1_reg[6]_0 [4]),
        .O(\address_reg[31]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \address_reg[4]_i_1 
       (.I0(\counter_variable1_reg[6]_0 [4]),
        .O(D));
  LUT6 #(
    .INIT(64'h40000000BFFFFFFF)) 
    \counter_variable1[0]_i_1 
       (.I0(\counter_variable1[0]_i_2_n_0 ),
        .I1(vertical_counter[0]),
        .I2(vertical_counter[2]),
        .I3(vertical_counter[3]),
        .I4(\counter_variable2[9]_i_4_n_0 ),
        .I5(\counter_variable1_reg[6]_0 [0]),
        .O(\counter_variable1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \counter_variable1[0]_i_2 
       (.I0(vertical_counter[5]),
        .I1(vertical_counter[9]),
        .I2(vertical_counter[4]),
        .I3(vertical_counter[1]),
        .I4(\VGA_R[3]_INST_0_i_1_n_0 ),
        .O(\counter_variable1[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter_variable1[1]_i_1 
       (.I0(\counter_variable1_reg[6]_0 [0]),
        .I1(\counter_variable1_reg[6]_0 [1]),
        .O(\counter_variable1[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter_variable1[2]_i_1 
       (.I0(\counter_variable1_reg[6]_0 [1]),
        .I1(\counter_variable1_reg[6]_0 [0]),
        .I2(\counter_variable1_reg[6]_0 [2]),
        .O(\counter_variable1[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter_variable1[3]_i_1 
       (.I0(\counter_variable1_reg[6]_0 [2]),
        .I1(\counter_variable1_reg[6]_0 [0]),
        .I2(\counter_variable1_reg[6]_0 [1]),
        .I3(\counter_variable1_reg[6]_0 [3]),
        .O(\counter_variable1[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter_variable1[4]_i_1 
       (.I0(\counter_variable1_reg[6]_0 [3]),
        .I1(\counter_variable1_reg[6]_0 [1]),
        .I2(\counter_variable1_reg[6]_0 [0]),
        .I3(\counter_variable1_reg[6]_0 [2]),
        .I4(\counter_variable1_reg[6]_0 [4]),
        .O(\counter_variable1[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \counter_variable1[5]_i_1 
       (.I0(\counter_variable1_reg[6]_0 [4]),
        .I1(\counter_variable1_reg[6]_0 [2]),
        .I2(\counter_variable1_reg[6]_0 [0]),
        .I3(\counter_variable1_reg[6]_0 [1]),
        .I4(\counter_variable1_reg[6]_0 [3]),
        .I5(\counter_variable1_reg[6]_0 [5]),
        .O(\counter_variable1[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \counter_variable1[6]_i_1 
       (.I0(\counter_variable1[9]_i_4_n_0 ),
        .I1(\counter_variable1_reg[6]_0 [5]),
        .I2(\counter_variable1_reg[6]_0 [6]),
        .O(\counter_variable1[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hBF40)) 
    \counter_variable1[7]_i_1 
       (.I0(\counter_variable1[9]_i_4_n_0 ),
        .I1(\counter_variable1_reg[6]_0 [5]),
        .I2(\counter_variable1_reg[6]_0 [6]),
        .I3(horizontal_counter[7]),
        .O(\counter_variable1[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    \counter_variable1[8]_i_1 
       (.I0(\counter_variable1[9]_i_4_n_0 ),
        .I1(horizontal_counter[7]),
        .I2(\counter_variable1_reg[6]_0 [6]),
        .I3(\counter_variable1_reg[6]_0 [5]),
        .I4(horizontal_counter[8]),
        .O(\counter_variable1[8]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter_variable1[9]_i_1 
       (.I0(\counter_variable2[9]_i_4_n_0 ),
        .O(\counter_variable1[9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \counter_variable1[9]_i_2 
       (.I0(\counter_variable2[9]_i_5_n_0 ),
        .I1(vertical_counter[0]),
        .I2(VGA_VS_INST_0_i_1_n_0),
        .I3(vertical_counter[4]),
        .I4(\counter_variable2[9]_i_6_n_0 ),
        .O(\counter_variable1[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF40000000)) 
    \counter_variable1[9]_i_3 
       (.I0(\counter_variable1[9]_i_4_n_0 ),
        .I1(horizontal_counter[8]),
        .I2(horizontal_counter[7]),
        .I3(\counter_variable1_reg[6]_0 [6]),
        .I4(\counter_variable1_reg[6]_0 [5]),
        .I5(horizontal_counter[9]),
        .O(\counter_variable1[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \counter_variable1[9]_i_4 
       (.I0(\counter_variable1_reg[6]_0 [3]),
        .I1(\counter_variable1_reg[6]_0 [1]),
        .I2(\counter_variable1_reg[6]_0 [0]),
        .I3(\counter_variable1_reg[6]_0 [2]),
        .I4(\counter_variable1_reg[6]_0 [4]),
        .O(\counter_variable1[9]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_variable1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_variable1[0]_i_1_n_0 ),
        .Q(\counter_variable1_reg[6]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_variable1_reg[1] 
       (.C(clk),
        .CE(\counter_variable1[9]_i_2_n_0 ),
        .D(\counter_variable1[1]_i_1_n_0 ),
        .Q(\counter_variable1_reg[6]_0 [1]),
        .R(\counter_variable1[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_variable1_reg[2] 
       (.C(clk),
        .CE(\counter_variable1[9]_i_2_n_0 ),
        .D(\counter_variable1[2]_i_1_n_0 ),
        .Q(\counter_variable1_reg[6]_0 [2]),
        .R(\counter_variable1[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_variable1_reg[3] 
       (.C(clk),
        .CE(\counter_variable1[9]_i_2_n_0 ),
        .D(\counter_variable1[3]_i_1_n_0 ),
        .Q(\counter_variable1_reg[6]_0 [3]),
        .R(\counter_variable1[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_variable1_reg[4] 
       (.C(clk),
        .CE(\counter_variable1[9]_i_2_n_0 ),
        .D(\counter_variable1[4]_i_1_n_0 ),
        .Q(\counter_variable1_reg[6]_0 [4]),
        .R(\counter_variable1[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_variable1_reg[5] 
       (.C(clk),
        .CE(\counter_variable1[9]_i_2_n_0 ),
        .D(\counter_variable1[5]_i_1_n_0 ),
        .Q(\counter_variable1_reg[6]_0 [5]),
        .R(\counter_variable1[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_variable1_reg[6] 
       (.C(clk),
        .CE(\counter_variable1[9]_i_2_n_0 ),
        .D(\counter_variable1[6]_i_1_n_0 ),
        .Q(\counter_variable1_reg[6]_0 [6]),
        .R(\counter_variable1[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_variable1_reg[7] 
       (.C(clk),
        .CE(\counter_variable1[9]_i_2_n_0 ),
        .D(\counter_variable1[7]_i_1_n_0 ),
        .Q(horizontal_counter[7]),
        .R(\counter_variable1[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_variable1_reg[8] 
       (.C(clk),
        .CE(\counter_variable1[9]_i_2_n_0 ),
        .D(\counter_variable1[8]_i_1_n_0 ),
        .Q(horizontal_counter[8]),
        .R(\counter_variable1[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_variable1_reg[9] 
       (.C(clk),
        .CE(\counter_variable1[9]_i_2_n_0 ),
        .D(\counter_variable1[9]_i_3_n_0 ),
        .Q(horizontal_counter[9]),
        .R(\counter_variable1[9]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter_variable2[0]_i_1 
       (.I0(vertical_counter[0]),
        .O(\counter_variable2[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter_variable2[1]_i_1 
       (.I0(vertical_counter[0]),
        .I1(vertical_counter[1]),
        .O(data0__0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter_variable2[2]_i_1 
       (.I0(vertical_counter[1]),
        .I1(vertical_counter[0]),
        .I2(vertical_counter[2]),
        .O(\counter_variable2[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter_variable2[3]_i_1 
       (.I0(vertical_counter[0]),
        .I1(vertical_counter[1]),
        .I2(vertical_counter[2]),
        .I3(vertical_counter[3]),
        .O(data0[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter_variable2[4]_i_1 
       (.I0(vertical_counter[0]),
        .I1(vertical_counter[1]),
        .I2(vertical_counter[2]),
        .I3(vertical_counter[3]),
        .I4(vertical_counter[4]),
        .O(data0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \counter_variable2[5]_i_1 
       (.I0(vertical_counter[4]),
        .I1(vertical_counter[3]),
        .I2(vertical_counter[2]),
        .I3(vertical_counter[1]),
        .I4(vertical_counter[0]),
        .I5(vertical_counter[5]),
        .O(data0[5]));
  LUT6 #(
    .INIT(64'hDFFFFFFF20000000)) 
    \counter_variable2[6]_i_1 
       (.I0(vertical_counter[5]),
        .I1(\counter_variable2[6]_i_2_n_0 ),
        .I2(vertical_counter[2]),
        .I3(vertical_counter[3]),
        .I4(vertical_counter[4]),
        .I5(vertical_counter[6]),
        .O(data0[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \counter_variable2[6]_i_2 
       (.I0(vertical_counter[0]),
        .I1(vertical_counter[1]),
        .O(\counter_variable2[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \counter_variable2[7]_i_1 
       (.I0(vertical_counter[6]),
        .I1(\counter_variable2[9]_i_7_n_0 ),
        .I2(vertical_counter[7]),
        .O(data0[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter_variable2[8]_i_1 
       (.I0(\counter_variable2[9]_i_7_n_0 ),
        .I1(vertical_counter[6]),
        .I2(vertical_counter[7]),
        .I3(vertical_counter[8]),
        .O(data0[8]));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \counter_variable2[9]_i_1 
       (.I0(\counter_variable2[9]_i_4_n_0 ),
        .I1(\counter_variable2[9]_i_5_n_0 ),
        .I2(vertical_counter[4]),
        .I3(vertical_counter[0]),
        .I4(\counter_variable2[9]_i_6_n_0 ),
        .I5(VGA_VS_INST_0_i_1_n_0),
        .O(\counter_variable2[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000010FFFFFFFF)) 
    \counter_variable2[9]_i_2 
       (.I0(VGA_VS_INST_0_i_1_n_0),
        .I1(\counter_variable2[9]_i_6_n_0 ),
        .I2(vertical_counter[0]),
        .I3(vertical_counter[4]),
        .I4(\counter_variable2[9]_i_5_n_0 ),
        .I5(\counter_variable2[9]_i_4_n_0 ),
        .O(\counter_variable2[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter_variable2[9]_i_3 
       (.I0(\counter_variable2[9]_i_7_n_0 ),
        .I1(vertical_counter[8]),
        .I2(vertical_counter[7]),
        .I3(vertical_counter[6]),
        .I4(vertical_counter[9]),
        .O(data0[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \counter_variable2[9]_i_4 
       (.I0(horizontal_counter[8]),
        .I1(horizontal_counter[9]),
        .I2(\counter_variable1_reg[6]_0 [6]),
        .I3(\counter_variable1_reg[6]_0 [5]),
        .I4(horizontal_counter[7]),
        .I5(\counter_variable1[9]_i_4_n_0 ),
        .O(\counter_variable2[9]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \counter_variable2[9]_i_5 
       (.I0(vertical_counter[2]),
        .I1(vertical_counter[3]),
        .O(\counter_variable2[9]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \counter_variable2[9]_i_6 
       (.I0(vertical_counter[5]),
        .I1(vertical_counter[9]),
        .O(\counter_variable2[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \counter_variable2[9]_i_7 
       (.I0(vertical_counter[4]),
        .I1(vertical_counter[3]),
        .I2(vertical_counter[2]),
        .I3(vertical_counter[1]),
        .I4(vertical_counter[0]),
        .I5(vertical_counter[5]),
        .O(\counter_variable2[9]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_variable2_reg[0] 
       (.C(clk),
        .CE(\counter_variable2[9]_i_2_n_0 ),
        .D(\counter_variable2[0]_i_1_n_0 ),
        .Q(vertical_counter[0]),
        .R(\counter_variable2[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_variable2_reg[1] 
       (.C(clk),
        .CE(\counter_variable2[9]_i_2_n_0 ),
        .D(data0__0),
        .Q(vertical_counter[1]),
        .R(\counter_variable2[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_variable2_reg[2] 
       (.C(clk),
        .CE(\counter_variable2[9]_i_2_n_0 ),
        .D(\counter_variable2[2]_i_1_n_0 ),
        .Q(vertical_counter[2]),
        .R(\counter_variable2[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_variable2_reg[3] 
       (.C(clk),
        .CE(\counter_variable2[9]_i_2_n_0 ),
        .D(data0[3]),
        .Q(vertical_counter[3]),
        .R(\counter_variable2[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_variable2_reg[4] 
       (.C(clk),
        .CE(\counter_variable2[9]_i_2_n_0 ),
        .D(data0[4]),
        .Q(vertical_counter[4]),
        .R(\counter_variable2[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_variable2_reg[5] 
       (.C(clk),
        .CE(\counter_variable2[9]_i_2_n_0 ),
        .D(data0[5]),
        .Q(vertical_counter[5]),
        .R(\counter_variable2[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_variable2_reg[6] 
       (.C(clk),
        .CE(\counter_variable2[9]_i_2_n_0 ),
        .D(data0[6]),
        .Q(vertical_counter[6]),
        .R(\counter_variable2[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_variable2_reg[7] 
       (.C(clk),
        .CE(\counter_variable2[9]_i_2_n_0 ),
        .D(data0[7]),
        .Q(vertical_counter[7]),
        .R(\counter_variable2[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_variable2_reg[8] 
       (.C(clk),
        .CE(\counter_variable2[9]_i_2_n_0 ),
        .D(data0[8]),
        .Q(vertical_counter[8]),
        .R(\counter_variable2[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_variable2_reg[9] 
       (.C(clk),
        .CE(\counter_variable2[9]_i_2_n_0 ),
        .D(data0[9]),
        .Q(vertical_counter[9]),
        .R(\counter_variable2[9]_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "vga_driver" *) 
module audio_vocoder_vga_driver_0_upgraded_ipi_0_vga_driver
   (VGA_B,
    VGA_G,
    VGA_R,
    BRAM_PORTB_0_addr,
    VGA_VS,
    VGA_HS,
    BRAM_PORTB_0_dout,
    CLK100MHZ);
  output [3:0]VGA_B;
  output [3:0]VGA_G;
  output [3:0]VGA_R;
  output [21:0]BRAM_PORTB_0_addr;
  output VGA_VS;
  output VGA_HS;
  input [11:0]BRAM_PORTB_0_dout;
  input CLK100MHZ;

  wire [21:0]BRAM_PORTB_0_addr;
  wire [11:0]BRAM_PORTB_0_dout;
  wire CLK100MHZ;
  wire [3:0]VGA_B;
  wire [3:0]VGA_G;
  wire VGA_HS;
  wire [3:0]VGA_R;
  wire VGA_VS;
  wire [19:10]address_reg1;
  wire clk;
  wire counter_mod_n_0;
  wire counter_mod_n_1;
  wire counter_mod_n_2;
  wire counter_mod_n_21;
  wire counter_mod_n_22;
  wire counter_mod_n_23;
  wire counter_mod_n_24;
  wire counter_mod_n_3;
  wire counter_mod_n_38;
  wire counter_mod_n_39;
  wire counter_mod_n_40;
  wire counter_mod_n_41;
  wire counter_mod_n_42;
  wire counter_mod_n_43;
  wire [6:0]horizontal_counter;

  audio_vocoder_vga_driver_0_upgraded_ipi_0_address_driver address_driver_mod
       (.BRAM_PORTB_0_addr(BRAM_PORTB_0_addr),
        .D(counter_mod_n_43),
        .DI({counter_mod_n_39,counter_mod_n_40}),
        .S({counter_mod_n_0,counter_mod_n_1,counter_mod_n_2,counter_mod_n_3}),
        .SR(counter_mod_n_38),
        .address_reg1(address_reg1),
        .\address_reg_reg[12]_0 ({counter_mod_n_41,counter_mod_n_42}),
        .\address_reg_reg[12]_1 ({counter_mod_n_21,counter_mod_n_22}),
        .\address_reg_reg[20]_0 ({counter_mod_n_23,counter_mod_n_24}),
        .clk(clk),
        .horizontal_counter(horizontal_counter));
  audio_vocoder_vga_driver_0_upgraded_ipi_0_double_counter counter_mod
       (.BRAM_PORTB_0_dout(BRAM_PORTB_0_dout),
        .D(counter_mod_n_43),
        .DI({counter_mod_n_39,counter_mod_n_40}),
        .S({counter_mod_n_0,counter_mod_n_1,counter_mod_n_2,counter_mod_n_3}),
        .SR(counter_mod_n_38),
        .VGA_B(VGA_B),
        .VGA_G(VGA_G),
        .VGA_HS(VGA_HS),
        .VGA_R(VGA_R),
        .VGA_VS(VGA_VS),
        .clk(clk),
        .\counter_variable1_reg[6]_0 (horizontal_counter),
        .\counter_variable1_reg[9]_0 ({counter_mod_n_21,counter_mod_n_22}),
        .\counter_variable1_reg[9]_1 ({counter_mod_n_41,counter_mod_n_42}),
        .\counter_variable2_reg[9]_0 (address_reg1),
        .\counter_variable2_reg[9]_1 ({counter_mod_n_23,counter_mod_n_24}));
  audio_vocoder_vga_driver_0_upgraded_ipi_0_div_by_4_clk div
       (.CLK100MHZ(CLK100MHZ),
        .clk(clk));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
