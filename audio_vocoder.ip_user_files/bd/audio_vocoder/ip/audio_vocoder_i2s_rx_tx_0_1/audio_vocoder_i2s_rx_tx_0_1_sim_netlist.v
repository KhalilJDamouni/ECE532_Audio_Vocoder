// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
// Date        : Sat Mar 23 19:34:20 2024
// Host        : BA3135WS39 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/damounik/March23/final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ip/audio_vocoder_i2s_rx_tx_0_1/audio_vocoder_i2s_rx_tx_0_1_sim_netlist.v
// Design      : audio_vocoder_i2s_rx_tx_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "audio_vocoder_i2s_rx_tx_0_1,i2s_rx_tx,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "i2s_rx_tx,Vivado 2018.3.1" *) 
(* NotValidForBitStream *)
module audio_vocoder_i2s_rx_tx_0_1
   (CLK_12,
    resetn,
    BCLK_O,
    LRCLK_O,
    MCLK_O,
    SDATA_I,
    SDATA_O,
    from_datapath,
    to_datapath);
  input CLK_12;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
  output BCLK_O;
  output LRCLK_O;
  output MCLK_O;
  input SDATA_I;
  output SDATA_O;
  input [23:0]from_datapath;
  output [23:0]to_datapath;

  wire BCLK_O;
  wire CLK_12;
  wire LRCLK_O;
  wire MCLK_O;
  wire SDATA_I;
  wire SDATA_O;
  wire [23:0]from_datapath;
  wire resetn;
  wire [23:0]to_datapath;

  audio_vocoder_i2s_rx_tx_0_1_i2s_rx_tx inst
       (.BCLK_int_reg(BCLK_O),
        .CLK_12(CLK_12),
        .LRCLK_reg(LRCLK_O),
        .MCLK_O(MCLK_O),
        .SDATA_I(SDATA_I),
        .SDATA_O(SDATA_O),
        .from_datapath(from_datapath),
        .resetn(resetn),
        .to_datapath(to_datapath));
endmodule

(* ORIG_REF_NAME = "i2s_ctl" *) 
module audio_vocoder_i2s_rx_tx_0_1_i2s_ctl
   (LRCLK_reg_0,
    SDATA_O,
    to_datapath,
    BCLK_int_reg_0,
    CLK_12,
    from_datapath,
    SDATA_I,
    resetn);
  output LRCLK_reg_0;
  output SDATA_O;
  output [23:0]to_datapath;
  output BCLK_int_reg_0;
  input CLK_12;
  input [23:0]from_datapath;
  input SDATA_I;
  input resetn;

  wire BCLK_Fall;
  wire BCLK_Rise__0;
  wire BCLK_int_i_1_n_0;
  wire BCLK_int_i_2_n_0;
  wire BCLK_int_reg_0;
  wire CLK_12;
  wire [4:0]Cnt_Bclk;
  wire \Cnt_Bclk[0]_i_1_n_0 ;
  wire \Cnt_Bclk[1]_i_1_n_0 ;
  wire \Cnt_Bclk[2]_i_1_n_0 ;
  wire \Cnt_Bclk[3]_i_1_n_0 ;
  wire \Cnt_Bclk[4]_i_1_n_0 ;
  wire [4:0]Cnt_Lrclk;
  wire \Cnt_Lrclk[0]_i_1_n_0 ;
  wire \Cnt_Lrclk[1]_i_1_n_0 ;
  wire \Cnt_Lrclk[2]_i_1_n_0 ;
  wire \Cnt_Lrclk[3]_i_1_n_0 ;
  wire \Cnt_Lrclk[4]_i_2_n_0 ;
  wire [23:0]D_L_O_int;
  wire D_L_O_int_0;
  wire [23:0]D_R_O_int;
  wire \D_R_O_int[23]_i_1_n_0 ;
  wire Data_In_int;
  wire Data_In_int2__3;
  wire [23:23]Data_Out_int;
  wire \Data_Out_int[0]_i_1_n_0 ;
  wire \Data_Out_int[0]_i_2_n_0 ;
  wire \Data_Out_int[10]_i_1_n_0 ;
  wire \Data_Out_int[11]_i_1_n_0 ;
  wire \Data_Out_int[12]_i_1_n_0 ;
  wire \Data_Out_int[13]_i_1_n_0 ;
  wire \Data_Out_int[14]_i_1_n_0 ;
  wire \Data_Out_int[15]_i_1_n_0 ;
  wire \Data_Out_int[16]_i_1_n_0 ;
  wire \Data_Out_int[17]_i_1_n_0 ;
  wire \Data_Out_int[18]_i_1_n_0 ;
  wire \Data_Out_int[19]_i_1_n_0 ;
  wire \Data_Out_int[1]_i_1_n_0 ;
  wire \Data_Out_int[20]_i_1_n_0 ;
  wire \Data_Out_int[21]_i_1_n_0 ;
  wire \Data_Out_int[22]_i_1_n_0 ;
  wire \Data_Out_int[23]_i_2_n_0 ;
  wire \Data_Out_int[23]_i_4_n_0 ;
  wire \Data_Out_int[2]_i_1_n_0 ;
  wire \Data_Out_int[3]_i_1_n_0 ;
  wire \Data_Out_int[4]_i_1_n_0 ;
  wire \Data_Out_int[5]_i_1_n_0 ;
  wire \Data_Out_int[6]_i_1_n_0 ;
  wire \Data_Out_int[7]_i_1_n_0 ;
  wire \Data_Out_int[8]_i_1_n_0 ;
  wire \Data_Out_int[9]_i_1_n_0 ;
  wire \Data_Out_int_reg_n_0_[0] ;
  wire \Data_Out_int_reg_n_0_[10] ;
  wire \Data_Out_int_reg_n_0_[11] ;
  wire \Data_Out_int_reg_n_0_[12] ;
  wire \Data_Out_int_reg_n_0_[13] ;
  wire \Data_Out_int_reg_n_0_[14] ;
  wire \Data_Out_int_reg_n_0_[15] ;
  wire \Data_Out_int_reg_n_0_[16] ;
  wire \Data_Out_int_reg_n_0_[17] ;
  wire \Data_Out_int_reg_n_0_[18] ;
  wire \Data_Out_int_reg_n_0_[19] ;
  wire \Data_Out_int_reg_n_0_[1] ;
  wire \Data_Out_int_reg_n_0_[20] ;
  wire \Data_Out_int_reg_n_0_[21] ;
  wire \Data_Out_int_reg_n_0_[22] ;
  wire \Data_Out_int_reg_n_0_[2] ;
  wire \Data_Out_int_reg_n_0_[3] ;
  wire \Data_Out_int_reg_n_0_[4] ;
  wire \Data_Out_int_reg_n_0_[5] ;
  wire \Data_Out_int_reg_n_0_[6] ;
  wire \Data_Out_int_reg_n_0_[7] ;
  wire \Data_Out_int_reg_n_0_[8] ;
  wire \Data_Out_int_reg_n_0_[9] ;
  wire LRCLK_i_1_n_0;
  wire LRCLK_i_2_n_0;
  wire LRCLK_reg_0;
  wire SDATA_I;
  wire SDATA_O;
  wire [23:0]from_datapath;
  wire resetn;
  wire [23:0]to_datapath;

  LUT1 #(
    .INIT(2'h1)) 
    BCLK_int_i_1
       (.I0(resetn),
        .O(BCLK_int_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000010)) 
    BCLK_int_i_2
       (.I0(Cnt_Bclk[2]),
        .I1(Cnt_Bclk[1]),
        .I2(Cnt_Bclk[0]),
        .I3(Cnt_Bclk[4]),
        .I4(Cnt_Bclk[3]),
        .I5(BCLK_int_reg_0),
        .O(BCLK_int_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    BCLK_int_reg
       (.C(CLK_12),
        .CE(1'b1),
        .D(BCLK_int_i_2_n_0),
        .Q(BCLK_int_reg_0),
        .R(BCLK_int_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \Cnt_Bclk[0]_i_1 
       (.I0(Cnt_Bclk[0]),
        .O(\Cnt_Bclk[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00FEFF00)) 
    \Cnt_Bclk[1]_i_1 
       (.I0(Cnt_Bclk[2]),
        .I1(Cnt_Bclk[3]),
        .I2(Cnt_Bclk[4]),
        .I3(Cnt_Bclk[1]),
        .I4(Cnt_Bclk[0]),
        .O(\Cnt_Bclk[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \Cnt_Bclk[2]_i_1 
       (.I0(Cnt_Bclk[2]),
        .I1(Cnt_Bclk[1]),
        .I2(Cnt_Bclk[0]),
        .O(\Cnt_Bclk[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6CCC)) 
    \Cnt_Bclk[3]_i_1 
       (.I0(Cnt_Bclk[2]),
        .I1(Cnt_Bclk[3]),
        .I2(Cnt_Bclk[1]),
        .I3(Cnt_Bclk[0]),
        .O(\Cnt_Bclk[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h78F0F0F0)) 
    \Cnt_Bclk[4]_i_1 
       (.I0(Cnt_Bclk[2]),
        .I1(Cnt_Bclk[3]),
        .I2(Cnt_Bclk[4]),
        .I3(Cnt_Bclk[1]),
        .I4(Cnt_Bclk[0]),
        .O(\Cnt_Bclk[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Cnt_Bclk_reg[0] 
       (.C(CLK_12),
        .CE(1'b1),
        .D(\Cnt_Bclk[0]_i_1_n_0 ),
        .Q(Cnt_Bclk[0]),
        .R(BCLK_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \Cnt_Bclk_reg[1] 
       (.C(CLK_12),
        .CE(1'b1),
        .D(\Cnt_Bclk[1]_i_1_n_0 ),
        .Q(Cnt_Bclk[1]),
        .R(BCLK_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \Cnt_Bclk_reg[2] 
       (.C(CLK_12),
        .CE(1'b1),
        .D(\Cnt_Bclk[2]_i_1_n_0 ),
        .Q(Cnt_Bclk[2]),
        .R(BCLK_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \Cnt_Bclk_reg[3] 
       (.C(CLK_12),
        .CE(1'b1),
        .D(\Cnt_Bclk[3]_i_1_n_0 ),
        .Q(Cnt_Bclk[3]),
        .R(BCLK_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \Cnt_Bclk_reg[4] 
       (.C(CLK_12),
        .CE(1'b1),
        .D(\Cnt_Bclk[4]_i_1_n_0 ),
        .Q(Cnt_Bclk[4]),
        .R(BCLK_int_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \Cnt_Lrclk[0]_i_1 
       (.I0(Cnt_Lrclk[0]),
        .O(\Cnt_Lrclk[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \Cnt_Lrclk[1]_i_1 
       (.I0(Cnt_Lrclk[0]),
        .I1(Cnt_Lrclk[1]),
        .O(\Cnt_Lrclk[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \Cnt_Lrclk[2]_i_1 
       (.I0(Cnt_Lrclk[2]),
        .I1(Cnt_Lrclk[0]),
        .I2(Cnt_Lrclk[1]),
        .O(\Cnt_Lrclk[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \Cnt_Lrclk[3]_i_1 
       (.I0(Cnt_Lrclk[2]),
        .I1(Cnt_Lrclk[0]),
        .I2(Cnt_Lrclk[1]),
        .I3(Cnt_Lrclk[3]),
        .O(\Cnt_Lrclk[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \Cnt_Lrclk[4]_i_1 
       (.I0(Cnt_Bclk[3]),
        .I1(Cnt_Bclk[4]),
        .I2(Cnt_Bclk[1]),
        .I3(Cnt_Bclk[2]),
        .I4(Cnt_Bclk[0]),
        .I5(BCLK_int_reg_0),
        .O(BCLK_Fall));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6CCCCCCC)) 
    \Cnt_Lrclk[4]_i_2 
       (.I0(Cnt_Lrclk[2]),
        .I1(Cnt_Lrclk[4]),
        .I2(Cnt_Lrclk[0]),
        .I3(Cnt_Lrclk[1]),
        .I4(Cnt_Lrclk[3]),
        .O(\Cnt_Lrclk[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Cnt_Lrclk_reg[0] 
       (.C(CLK_12),
        .CE(BCLK_Fall),
        .D(\Cnt_Lrclk[0]_i_1_n_0 ),
        .Q(Cnt_Lrclk[0]),
        .R(BCLK_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \Cnt_Lrclk_reg[1] 
       (.C(CLK_12),
        .CE(BCLK_Fall),
        .D(\Cnt_Lrclk[1]_i_1_n_0 ),
        .Q(Cnt_Lrclk[1]),
        .R(BCLK_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \Cnt_Lrclk_reg[2] 
       (.C(CLK_12),
        .CE(BCLK_Fall),
        .D(\Cnt_Lrclk[2]_i_1_n_0 ),
        .Q(Cnt_Lrclk[2]),
        .R(BCLK_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \Cnt_Lrclk_reg[3] 
       (.C(CLK_12),
        .CE(BCLK_Fall),
        .D(\Cnt_Lrclk[3]_i_1_n_0 ),
        .Q(Cnt_Lrclk[3]),
        .R(BCLK_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \Cnt_Lrclk_reg[4] 
       (.C(CLK_12),
        .CE(BCLK_Fall),
        .D(\Cnt_Lrclk[4]_i_2_n_0 ),
        .Q(Cnt_Lrclk[4]),
        .R(BCLK_int_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    \D_L_O_int[23]_i_1 
       (.I0(Data_In_int2__3),
        .I1(BCLK_Fall),
        .I2(LRCLK_reg_0),
        .O(D_L_O_int_0));
  FDRE \D_L_O_int_reg[0] 
       (.C(CLK_12),
        .CE(D_L_O_int_0),
        .D(from_datapath[0]),
        .Q(D_L_O_int[0]),
        .R(BCLK_int_i_1_n_0));
  FDRE \D_L_O_int_reg[10] 
       (.C(CLK_12),
        .CE(D_L_O_int_0),
        .D(from_datapath[10]),
        .Q(D_L_O_int[10]),
        .R(BCLK_int_i_1_n_0));
  FDRE \D_L_O_int_reg[11] 
       (.C(CLK_12),
        .CE(D_L_O_int_0),
        .D(from_datapath[11]),
        .Q(D_L_O_int[11]),
        .R(BCLK_int_i_1_n_0));
  FDRE \D_L_O_int_reg[12] 
       (.C(CLK_12),
        .CE(D_L_O_int_0),
        .D(from_datapath[12]),
        .Q(D_L_O_int[12]),
        .R(BCLK_int_i_1_n_0));
  FDRE \D_L_O_int_reg[13] 
       (.C(CLK_12),
        .CE(D_L_O_int_0),
        .D(from_datapath[13]),
        .Q(D_L_O_int[13]),
        .R(BCLK_int_i_1_n_0));
  FDRE \D_L_O_int_reg[14] 
       (.C(CLK_12),
        .CE(D_L_O_int_0),
        .D(from_datapath[14]),
        .Q(D_L_O_int[14]),
        .R(BCLK_int_i_1_n_0));
  FDRE \D_L_O_int_reg[15] 
       (.C(CLK_12),
        .CE(D_L_O_int_0),
        .D(from_datapath[15]),
        .Q(D_L_O_int[15]),
        .R(BCLK_int_i_1_n_0));
  FDRE \D_L_O_int_reg[16] 
       (.C(CLK_12),
        .CE(D_L_O_int_0),
        .D(from_datapath[16]),
        .Q(D_L_O_int[16]),
        .R(BCLK_int_i_1_n_0));
  FDRE \D_L_O_int_reg[17] 
       (.C(CLK_12),
        .CE(D_L_O_int_0),
        .D(from_datapath[17]),
        .Q(D_L_O_int[17]),
        .R(BCLK_int_i_1_n_0));
  FDRE \D_L_O_int_reg[18] 
       (.C(CLK_12),
        .CE(D_L_O_int_0),
        .D(from_datapath[18]),
        .Q(D_L_O_int[18]),
        .R(BCLK_int_i_1_n_0));
  FDRE \D_L_O_int_reg[19] 
       (.C(CLK_12),
        .CE(D_L_O_int_0),
        .D(from_datapath[19]),
        .Q(D_L_O_int[19]),
        .R(BCLK_int_i_1_n_0));
  FDRE \D_L_O_int_reg[1] 
       (.C(CLK_12),
        .CE(D_L_O_int_0),
        .D(from_datapath[1]),
        .Q(D_L_O_int[1]),
        .R(BCLK_int_i_1_n_0));
  FDRE \D_L_O_int_reg[20] 
       (.C(CLK_12),
        .CE(D_L_O_int_0),
        .D(from_datapath[20]),
        .Q(D_L_O_int[20]),
        .R(BCLK_int_i_1_n_0));
  FDRE \D_L_O_int_reg[21] 
       (.C(CLK_12),
        .CE(D_L_O_int_0),
        .D(from_datapath[21]),
        .Q(D_L_O_int[21]),
        .R(BCLK_int_i_1_n_0));
  FDRE \D_L_O_int_reg[22] 
       (.C(CLK_12),
        .CE(D_L_O_int_0),
        .D(from_datapath[22]),
        .Q(D_L_O_int[22]),
        .R(BCLK_int_i_1_n_0));
  FDRE \D_L_O_int_reg[23] 
       (.C(CLK_12),
        .CE(D_L_O_int_0),
        .D(from_datapath[23]),
        .Q(D_L_O_int[23]),
        .R(BCLK_int_i_1_n_0));
  FDRE \D_L_O_int_reg[2] 
       (.C(CLK_12),
        .CE(D_L_O_int_0),
        .D(from_datapath[2]),
        .Q(D_L_O_int[2]),
        .R(BCLK_int_i_1_n_0));
  FDRE \D_L_O_int_reg[3] 
       (.C(CLK_12),
        .CE(D_L_O_int_0),
        .D(from_datapath[3]),
        .Q(D_L_O_int[3]),
        .R(BCLK_int_i_1_n_0));
  FDRE \D_L_O_int_reg[4] 
       (.C(CLK_12),
        .CE(D_L_O_int_0),
        .D(from_datapath[4]),
        .Q(D_L_O_int[4]),
        .R(BCLK_int_i_1_n_0));
  FDRE \D_L_O_int_reg[5] 
       (.C(CLK_12),
        .CE(D_L_O_int_0),
        .D(from_datapath[5]),
        .Q(D_L_O_int[5]),
        .R(BCLK_int_i_1_n_0));
  FDRE \D_L_O_int_reg[6] 
       (.C(CLK_12),
        .CE(D_L_O_int_0),
        .D(from_datapath[6]),
        .Q(D_L_O_int[6]),
        .R(BCLK_int_i_1_n_0));
  FDRE \D_L_O_int_reg[7] 
       (.C(CLK_12),
        .CE(D_L_O_int_0),
        .D(from_datapath[7]),
        .Q(D_L_O_int[7]),
        .R(BCLK_int_i_1_n_0));
  FDRE \D_L_O_int_reg[8] 
       (.C(CLK_12),
        .CE(D_L_O_int_0),
        .D(from_datapath[8]),
        .Q(D_L_O_int[8]),
        .R(BCLK_int_i_1_n_0));
  FDRE \D_L_O_int_reg[9] 
       (.C(CLK_12),
        .CE(D_L_O_int_0),
        .D(from_datapath[9]),
        .Q(D_L_O_int[9]),
        .R(BCLK_int_i_1_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    \D_R_O_int[23]_i_1 
       (.I0(Data_In_int2__3),
        .I1(BCLK_Fall),
        .I2(LRCLK_reg_0),
        .O(\D_R_O_int[23]_i_1_n_0 ));
  FDRE \D_R_O_int_reg[0] 
       (.C(CLK_12),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(from_datapath[0]),
        .Q(D_R_O_int[0]),
        .R(BCLK_int_i_1_n_0));
  FDRE \D_R_O_int_reg[10] 
       (.C(CLK_12),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(from_datapath[10]),
        .Q(D_R_O_int[10]),
        .R(BCLK_int_i_1_n_0));
  FDRE \D_R_O_int_reg[11] 
       (.C(CLK_12),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(from_datapath[11]),
        .Q(D_R_O_int[11]),
        .R(BCLK_int_i_1_n_0));
  FDRE \D_R_O_int_reg[12] 
       (.C(CLK_12),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(from_datapath[12]),
        .Q(D_R_O_int[12]),
        .R(BCLK_int_i_1_n_0));
  FDRE \D_R_O_int_reg[13] 
       (.C(CLK_12),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(from_datapath[13]),
        .Q(D_R_O_int[13]),
        .R(BCLK_int_i_1_n_0));
  FDRE \D_R_O_int_reg[14] 
       (.C(CLK_12),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(from_datapath[14]),
        .Q(D_R_O_int[14]),
        .R(BCLK_int_i_1_n_0));
  FDRE \D_R_O_int_reg[15] 
       (.C(CLK_12),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(from_datapath[15]),
        .Q(D_R_O_int[15]),
        .R(BCLK_int_i_1_n_0));
  FDRE \D_R_O_int_reg[16] 
       (.C(CLK_12),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(from_datapath[16]),
        .Q(D_R_O_int[16]),
        .R(BCLK_int_i_1_n_0));
  FDRE \D_R_O_int_reg[17] 
       (.C(CLK_12),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(from_datapath[17]),
        .Q(D_R_O_int[17]),
        .R(BCLK_int_i_1_n_0));
  FDRE \D_R_O_int_reg[18] 
       (.C(CLK_12),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(from_datapath[18]),
        .Q(D_R_O_int[18]),
        .R(BCLK_int_i_1_n_0));
  FDRE \D_R_O_int_reg[19] 
       (.C(CLK_12),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(from_datapath[19]),
        .Q(D_R_O_int[19]),
        .R(BCLK_int_i_1_n_0));
  FDRE \D_R_O_int_reg[1] 
       (.C(CLK_12),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(from_datapath[1]),
        .Q(D_R_O_int[1]),
        .R(BCLK_int_i_1_n_0));
  FDRE \D_R_O_int_reg[20] 
       (.C(CLK_12),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(from_datapath[20]),
        .Q(D_R_O_int[20]),
        .R(BCLK_int_i_1_n_0));
  FDRE \D_R_O_int_reg[21] 
       (.C(CLK_12),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(from_datapath[21]),
        .Q(D_R_O_int[21]),
        .R(BCLK_int_i_1_n_0));
  FDRE \D_R_O_int_reg[22] 
       (.C(CLK_12),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(from_datapath[22]),
        .Q(D_R_O_int[22]),
        .R(BCLK_int_i_1_n_0));
  FDRE \D_R_O_int_reg[23] 
       (.C(CLK_12),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(from_datapath[23]),
        .Q(D_R_O_int[23]),
        .R(BCLK_int_i_1_n_0));
  FDRE \D_R_O_int_reg[2] 
       (.C(CLK_12),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(from_datapath[2]),
        .Q(D_R_O_int[2]),
        .R(BCLK_int_i_1_n_0));
  FDRE \D_R_O_int_reg[3] 
       (.C(CLK_12),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(from_datapath[3]),
        .Q(D_R_O_int[3]),
        .R(BCLK_int_i_1_n_0));
  FDRE \D_R_O_int_reg[4] 
       (.C(CLK_12),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(from_datapath[4]),
        .Q(D_R_O_int[4]),
        .R(BCLK_int_i_1_n_0));
  FDRE \D_R_O_int_reg[5] 
       (.C(CLK_12),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(from_datapath[5]),
        .Q(D_R_O_int[5]),
        .R(BCLK_int_i_1_n_0));
  FDRE \D_R_O_int_reg[6] 
       (.C(CLK_12),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(from_datapath[6]),
        .Q(D_R_O_int[6]),
        .R(BCLK_int_i_1_n_0));
  FDRE \D_R_O_int_reg[7] 
       (.C(CLK_12),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(from_datapath[7]),
        .Q(D_R_O_int[7]),
        .R(BCLK_int_i_1_n_0));
  FDRE \D_R_O_int_reg[8] 
       (.C(CLK_12),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(from_datapath[8]),
        .Q(D_R_O_int[8]),
        .R(BCLK_int_i_1_n_0));
  FDRE \D_R_O_int_reg[9] 
       (.C(CLK_12),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(from_datapath[9]),
        .Q(D_R_O_int[9]),
        .R(BCLK_int_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \Data_In_int[23]_i_1 
       (.I0(\Data_Out_int[23]_i_4_n_0 ),
        .I1(BCLK_int_reg_0),
        .O(Data_In_int));
  FDRE \Data_In_int_reg[0] 
       (.C(CLK_12),
        .CE(Data_In_int),
        .D(SDATA_I),
        .Q(to_datapath[0]),
        .R(BCLK_int_i_1_n_0));
  FDRE \Data_In_int_reg[10] 
       (.C(CLK_12),
        .CE(Data_In_int),
        .D(to_datapath[9]),
        .Q(to_datapath[10]),
        .R(BCLK_int_i_1_n_0));
  FDRE \Data_In_int_reg[11] 
       (.C(CLK_12),
        .CE(Data_In_int),
        .D(to_datapath[10]),
        .Q(to_datapath[11]),
        .R(BCLK_int_i_1_n_0));
  FDRE \Data_In_int_reg[12] 
       (.C(CLK_12),
        .CE(Data_In_int),
        .D(to_datapath[11]),
        .Q(to_datapath[12]),
        .R(BCLK_int_i_1_n_0));
  FDRE \Data_In_int_reg[13] 
       (.C(CLK_12),
        .CE(Data_In_int),
        .D(to_datapath[12]),
        .Q(to_datapath[13]),
        .R(BCLK_int_i_1_n_0));
  FDRE \Data_In_int_reg[14] 
       (.C(CLK_12),
        .CE(Data_In_int),
        .D(to_datapath[13]),
        .Q(to_datapath[14]),
        .R(BCLK_int_i_1_n_0));
  FDRE \Data_In_int_reg[15] 
       (.C(CLK_12),
        .CE(Data_In_int),
        .D(to_datapath[14]),
        .Q(to_datapath[15]),
        .R(BCLK_int_i_1_n_0));
  FDRE \Data_In_int_reg[16] 
       (.C(CLK_12),
        .CE(Data_In_int),
        .D(to_datapath[15]),
        .Q(to_datapath[16]),
        .R(BCLK_int_i_1_n_0));
  FDRE \Data_In_int_reg[17] 
       (.C(CLK_12),
        .CE(Data_In_int),
        .D(to_datapath[16]),
        .Q(to_datapath[17]),
        .R(BCLK_int_i_1_n_0));
  FDRE \Data_In_int_reg[18] 
       (.C(CLK_12),
        .CE(Data_In_int),
        .D(to_datapath[17]),
        .Q(to_datapath[18]),
        .R(BCLK_int_i_1_n_0));
  FDRE \Data_In_int_reg[19] 
       (.C(CLK_12),
        .CE(Data_In_int),
        .D(to_datapath[18]),
        .Q(to_datapath[19]),
        .R(BCLK_int_i_1_n_0));
  FDRE \Data_In_int_reg[1] 
       (.C(CLK_12),
        .CE(Data_In_int),
        .D(to_datapath[0]),
        .Q(to_datapath[1]),
        .R(BCLK_int_i_1_n_0));
  FDRE \Data_In_int_reg[20] 
       (.C(CLK_12),
        .CE(Data_In_int),
        .D(to_datapath[19]),
        .Q(to_datapath[20]),
        .R(BCLK_int_i_1_n_0));
  FDRE \Data_In_int_reg[21] 
       (.C(CLK_12),
        .CE(Data_In_int),
        .D(to_datapath[20]),
        .Q(to_datapath[21]),
        .R(BCLK_int_i_1_n_0));
  FDRE \Data_In_int_reg[22] 
       (.C(CLK_12),
        .CE(Data_In_int),
        .D(to_datapath[21]),
        .Q(to_datapath[22]),
        .R(BCLK_int_i_1_n_0));
  FDRE \Data_In_int_reg[23] 
       (.C(CLK_12),
        .CE(Data_In_int),
        .D(to_datapath[22]),
        .Q(to_datapath[23]),
        .R(BCLK_int_i_1_n_0));
  FDRE \Data_In_int_reg[2] 
       (.C(CLK_12),
        .CE(Data_In_int),
        .D(to_datapath[1]),
        .Q(to_datapath[2]),
        .R(BCLK_int_i_1_n_0));
  FDRE \Data_In_int_reg[3] 
       (.C(CLK_12),
        .CE(Data_In_int),
        .D(to_datapath[2]),
        .Q(to_datapath[3]),
        .R(BCLK_int_i_1_n_0));
  FDRE \Data_In_int_reg[4] 
       (.C(CLK_12),
        .CE(Data_In_int),
        .D(to_datapath[3]),
        .Q(to_datapath[4]),
        .R(BCLK_int_i_1_n_0));
  FDRE \Data_In_int_reg[5] 
       (.C(CLK_12),
        .CE(Data_In_int),
        .D(to_datapath[4]),
        .Q(to_datapath[5]),
        .R(BCLK_int_i_1_n_0));
  FDRE \Data_In_int_reg[6] 
       (.C(CLK_12),
        .CE(Data_In_int),
        .D(to_datapath[5]),
        .Q(to_datapath[6]),
        .R(BCLK_int_i_1_n_0));
  FDRE \Data_In_int_reg[7] 
       (.C(CLK_12),
        .CE(Data_In_int),
        .D(to_datapath[6]),
        .Q(to_datapath[7]),
        .R(BCLK_int_i_1_n_0));
  FDRE \Data_In_int_reg[8] 
       (.C(CLK_12),
        .CE(Data_In_int),
        .D(to_datapath[7]),
        .Q(to_datapath[8]),
        .R(BCLK_int_i_1_n_0));
  FDRE \Data_In_int_reg[9] 
       (.C(CLK_12),
        .CE(Data_In_int),
        .D(to_datapath[8]),
        .Q(to_datapath[9]),
        .R(BCLK_int_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000A0A0C0A0A0A0)) 
    \Data_Out_int[0]_i_1 
       (.I0(\Data_Out_int_reg_n_0_[0] ),
        .I1(\Data_Out_int[0]_i_2_n_0 ),
        .I2(resetn),
        .I3(Data_In_int2__3),
        .I4(\Data_Out_int[23]_i_4_n_0 ),
        .I5(BCLK_int_reg_0),
        .O(\Data_Out_int[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \Data_Out_int[0]_i_2 
       (.I0(D_R_O_int[0]),
        .I1(LRCLK_reg_0),
        .I2(D_L_O_int[0]),
        .O(\Data_Out_int[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \Data_Out_int[10]_i_1 
       (.I0(D_R_O_int[10]),
        .I1(LRCLK_reg_0),
        .I2(D_L_O_int[10]),
        .I3(BCLK_Rise__0),
        .I4(Data_In_int2__3),
        .I5(\Data_Out_int_reg_n_0_[9] ),
        .O(\Data_Out_int[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \Data_Out_int[11]_i_1 
       (.I0(D_R_O_int[11]),
        .I1(LRCLK_reg_0),
        .I2(D_L_O_int[11]),
        .I3(BCLK_Rise__0),
        .I4(Data_In_int2__3),
        .I5(\Data_Out_int_reg_n_0_[10] ),
        .O(\Data_Out_int[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \Data_Out_int[12]_i_1 
       (.I0(D_R_O_int[12]),
        .I1(LRCLK_reg_0),
        .I2(D_L_O_int[12]),
        .I3(BCLK_Rise__0),
        .I4(Data_In_int2__3),
        .I5(\Data_Out_int_reg_n_0_[11] ),
        .O(\Data_Out_int[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \Data_Out_int[13]_i_1 
       (.I0(D_R_O_int[13]),
        .I1(LRCLK_reg_0),
        .I2(D_L_O_int[13]),
        .I3(BCLK_Rise__0),
        .I4(Data_In_int2__3),
        .I5(\Data_Out_int_reg_n_0_[12] ),
        .O(\Data_Out_int[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \Data_Out_int[14]_i_1 
       (.I0(D_R_O_int[14]),
        .I1(LRCLK_reg_0),
        .I2(D_L_O_int[14]),
        .I3(BCLK_Rise__0),
        .I4(Data_In_int2__3),
        .I5(\Data_Out_int_reg_n_0_[13] ),
        .O(\Data_Out_int[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \Data_Out_int[15]_i_1 
       (.I0(D_R_O_int[15]),
        .I1(LRCLK_reg_0),
        .I2(D_L_O_int[15]),
        .I3(BCLK_Rise__0),
        .I4(Data_In_int2__3),
        .I5(\Data_Out_int_reg_n_0_[14] ),
        .O(\Data_Out_int[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \Data_Out_int[16]_i_1 
       (.I0(D_R_O_int[16]),
        .I1(LRCLK_reg_0),
        .I2(D_L_O_int[16]),
        .I3(BCLK_Rise__0),
        .I4(Data_In_int2__3),
        .I5(\Data_Out_int_reg_n_0_[15] ),
        .O(\Data_Out_int[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \Data_Out_int[17]_i_1 
       (.I0(D_R_O_int[17]),
        .I1(LRCLK_reg_0),
        .I2(D_L_O_int[17]),
        .I3(BCLK_Rise__0),
        .I4(Data_In_int2__3),
        .I5(\Data_Out_int_reg_n_0_[16] ),
        .O(\Data_Out_int[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \Data_Out_int[18]_i_1 
       (.I0(D_R_O_int[18]),
        .I1(LRCLK_reg_0),
        .I2(D_L_O_int[18]),
        .I3(BCLK_Rise__0),
        .I4(Data_In_int2__3),
        .I5(\Data_Out_int_reg_n_0_[17] ),
        .O(\Data_Out_int[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \Data_Out_int[19]_i_1 
       (.I0(D_R_O_int[19]),
        .I1(LRCLK_reg_0),
        .I2(D_L_O_int[19]),
        .I3(BCLK_Rise__0),
        .I4(Data_In_int2__3),
        .I5(\Data_Out_int_reg_n_0_[18] ),
        .O(\Data_Out_int[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \Data_Out_int[1]_i_1 
       (.I0(D_R_O_int[1]),
        .I1(LRCLK_reg_0),
        .I2(D_L_O_int[1]),
        .I3(BCLK_Rise__0),
        .I4(Data_In_int2__3),
        .I5(\Data_Out_int_reg_n_0_[0] ),
        .O(\Data_Out_int[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \Data_Out_int[20]_i_1 
       (.I0(D_R_O_int[20]),
        .I1(LRCLK_reg_0),
        .I2(D_L_O_int[20]),
        .I3(BCLK_Rise__0),
        .I4(Data_In_int2__3),
        .I5(\Data_Out_int_reg_n_0_[19] ),
        .O(\Data_Out_int[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \Data_Out_int[21]_i_1 
       (.I0(D_R_O_int[21]),
        .I1(LRCLK_reg_0),
        .I2(D_L_O_int[21]),
        .I3(BCLK_Rise__0),
        .I4(Data_In_int2__3),
        .I5(\Data_Out_int_reg_n_0_[20] ),
        .O(\Data_Out_int[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \Data_Out_int[22]_i_1 
       (.I0(D_R_O_int[22]),
        .I1(LRCLK_reg_0),
        .I2(D_L_O_int[22]),
        .I3(BCLK_Rise__0),
        .I4(Data_In_int2__3),
        .I5(\Data_Out_int_reg_n_0_[21] ),
        .O(\Data_Out_int[22]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \Data_Out_int[23]_i_1 
       (.I0(Data_In_int2__3),
        .I1(BCLK_int_reg_0),
        .I2(\Data_Out_int[23]_i_4_n_0 ),
        .O(Data_Out_int));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \Data_Out_int[23]_i_2 
       (.I0(D_R_O_int[23]),
        .I1(LRCLK_reg_0),
        .I2(D_L_O_int[23]),
        .I3(BCLK_Rise__0),
        .I4(Data_In_int2__3),
        .I5(\Data_Out_int_reg_n_0_[22] ),
        .O(\Data_Out_int[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \Data_Out_int[23]_i_3 
       (.I0(Cnt_Lrclk[3]),
        .I1(Cnt_Lrclk[4]),
        .I2(Cnt_Lrclk[0]),
        .I3(Cnt_Lrclk[1]),
        .I4(Cnt_Lrclk[2]),
        .O(Data_In_int2__3));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \Data_Out_int[23]_i_4 
       (.I0(Cnt_Bclk[0]),
        .I1(Cnt_Bclk[2]),
        .I2(Cnt_Bclk[1]),
        .I3(Cnt_Bclk[4]),
        .I4(Cnt_Bclk[3]),
        .O(\Data_Out_int[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \Data_Out_int[23]_i_5 
       (.I0(Cnt_Bclk[3]),
        .I1(Cnt_Bclk[4]),
        .I2(Cnt_Bclk[1]),
        .I3(Cnt_Bclk[2]),
        .I4(Cnt_Bclk[0]),
        .I5(BCLK_int_reg_0),
        .O(BCLK_Rise__0));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \Data_Out_int[2]_i_1 
       (.I0(D_R_O_int[2]),
        .I1(LRCLK_reg_0),
        .I2(D_L_O_int[2]),
        .I3(BCLK_Rise__0),
        .I4(Data_In_int2__3),
        .I5(\Data_Out_int_reg_n_0_[1] ),
        .O(\Data_Out_int[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \Data_Out_int[3]_i_1 
       (.I0(D_R_O_int[3]),
        .I1(LRCLK_reg_0),
        .I2(D_L_O_int[3]),
        .I3(BCLK_Rise__0),
        .I4(Data_In_int2__3),
        .I5(\Data_Out_int_reg_n_0_[2] ),
        .O(\Data_Out_int[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \Data_Out_int[4]_i_1 
       (.I0(D_R_O_int[4]),
        .I1(LRCLK_reg_0),
        .I2(D_L_O_int[4]),
        .I3(BCLK_Rise__0),
        .I4(Data_In_int2__3),
        .I5(\Data_Out_int_reg_n_0_[3] ),
        .O(\Data_Out_int[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \Data_Out_int[5]_i_1 
       (.I0(D_R_O_int[5]),
        .I1(LRCLK_reg_0),
        .I2(D_L_O_int[5]),
        .I3(BCLK_Rise__0),
        .I4(Data_In_int2__3),
        .I5(\Data_Out_int_reg_n_0_[4] ),
        .O(\Data_Out_int[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \Data_Out_int[6]_i_1 
       (.I0(D_R_O_int[6]),
        .I1(LRCLK_reg_0),
        .I2(D_L_O_int[6]),
        .I3(BCLK_Rise__0),
        .I4(Data_In_int2__3),
        .I5(\Data_Out_int_reg_n_0_[5] ),
        .O(\Data_Out_int[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \Data_Out_int[7]_i_1 
       (.I0(D_R_O_int[7]),
        .I1(LRCLK_reg_0),
        .I2(D_L_O_int[7]),
        .I3(BCLK_Rise__0),
        .I4(Data_In_int2__3),
        .I5(\Data_Out_int_reg_n_0_[6] ),
        .O(\Data_Out_int[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \Data_Out_int[8]_i_1 
       (.I0(D_R_O_int[8]),
        .I1(LRCLK_reg_0),
        .I2(D_L_O_int[8]),
        .I3(BCLK_Rise__0),
        .I4(Data_In_int2__3),
        .I5(\Data_Out_int_reg_n_0_[7] ),
        .O(\Data_Out_int[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \Data_Out_int[9]_i_1 
       (.I0(D_R_O_int[9]),
        .I1(LRCLK_reg_0),
        .I2(D_L_O_int[9]),
        .I3(BCLK_Rise__0),
        .I4(Data_In_int2__3),
        .I5(\Data_Out_int_reg_n_0_[8] ),
        .O(\Data_Out_int[9]_i_1_n_0 ));
  FDRE \Data_Out_int_reg[0] 
       (.C(CLK_12),
        .CE(1'b1),
        .D(\Data_Out_int[0]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \Data_Out_int_reg[10] 
       (.C(CLK_12),
        .CE(Data_Out_int),
        .D(\Data_Out_int[10]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[10] ),
        .R(BCLK_int_i_1_n_0));
  FDRE \Data_Out_int_reg[11] 
       (.C(CLK_12),
        .CE(Data_Out_int),
        .D(\Data_Out_int[11]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[11] ),
        .R(BCLK_int_i_1_n_0));
  FDRE \Data_Out_int_reg[12] 
       (.C(CLK_12),
        .CE(Data_Out_int),
        .D(\Data_Out_int[12]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[12] ),
        .R(BCLK_int_i_1_n_0));
  FDRE \Data_Out_int_reg[13] 
       (.C(CLK_12),
        .CE(Data_Out_int),
        .D(\Data_Out_int[13]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[13] ),
        .R(BCLK_int_i_1_n_0));
  FDRE \Data_Out_int_reg[14] 
       (.C(CLK_12),
        .CE(Data_Out_int),
        .D(\Data_Out_int[14]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[14] ),
        .R(BCLK_int_i_1_n_0));
  FDRE \Data_Out_int_reg[15] 
       (.C(CLK_12),
        .CE(Data_Out_int),
        .D(\Data_Out_int[15]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[15] ),
        .R(BCLK_int_i_1_n_0));
  FDRE \Data_Out_int_reg[16] 
       (.C(CLK_12),
        .CE(Data_Out_int),
        .D(\Data_Out_int[16]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[16] ),
        .R(BCLK_int_i_1_n_0));
  FDRE \Data_Out_int_reg[17] 
       (.C(CLK_12),
        .CE(Data_Out_int),
        .D(\Data_Out_int[17]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[17] ),
        .R(BCLK_int_i_1_n_0));
  FDRE \Data_Out_int_reg[18] 
       (.C(CLK_12),
        .CE(Data_Out_int),
        .D(\Data_Out_int[18]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[18] ),
        .R(BCLK_int_i_1_n_0));
  FDRE \Data_Out_int_reg[19] 
       (.C(CLK_12),
        .CE(Data_Out_int),
        .D(\Data_Out_int[19]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[19] ),
        .R(BCLK_int_i_1_n_0));
  FDRE \Data_Out_int_reg[1] 
       (.C(CLK_12),
        .CE(Data_Out_int),
        .D(\Data_Out_int[1]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[1] ),
        .R(BCLK_int_i_1_n_0));
  FDRE \Data_Out_int_reg[20] 
       (.C(CLK_12),
        .CE(Data_Out_int),
        .D(\Data_Out_int[20]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[20] ),
        .R(BCLK_int_i_1_n_0));
  FDRE \Data_Out_int_reg[21] 
       (.C(CLK_12),
        .CE(Data_Out_int),
        .D(\Data_Out_int[21]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[21] ),
        .R(BCLK_int_i_1_n_0));
  FDRE \Data_Out_int_reg[22] 
       (.C(CLK_12),
        .CE(Data_Out_int),
        .D(\Data_Out_int[22]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[22] ),
        .R(BCLK_int_i_1_n_0));
  FDRE \Data_Out_int_reg[23] 
       (.C(CLK_12),
        .CE(Data_Out_int),
        .D(\Data_Out_int[23]_i_2_n_0 ),
        .Q(SDATA_O),
        .R(BCLK_int_i_1_n_0));
  FDRE \Data_Out_int_reg[2] 
       (.C(CLK_12),
        .CE(Data_Out_int),
        .D(\Data_Out_int[2]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[2] ),
        .R(BCLK_int_i_1_n_0));
  FDRE \Data_Out_int_reg[3] 
       (.C(CLK_12),
        .CE(Data_Out_int),
        .D(\Data_Out_int[3]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[3] ),
        .R(BCLK_int_i_1_n_0));
  FDRE \Data_Out_int_reg[4] 
       (.C(CLK_12),
        .CE(Data_Out_int),
        .D(\Data_Out_int[4]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[4] ),
        .R(BCLK_int_i_1_n_0));
  FDRE \Data_Out_int_reg[5] 
       (.C(CLK_12),
        .CE(Data_Out_int),
        .D(\Data_Out_int[5]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[5] ),
        .R(BCLK_int_i_1_n_0));
  FDRE \Data_Out_int_reg[6] 
       (.C(CLK_12),
        .CE(Data_Out_int),
        .D(\Data_Out_int[6]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[6] ),
        .R(BCLK_int_i_1_n_0));
  FDRE \Data_Out_int_reg[7] 
       (.C(CLK_12),
        .CE(Data_Out_int),
        .D(\Data_Out_int[7]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[7] ),
        .R(BCLK_int_i_1_n_0));
  FDRE \Data_Out_int_reg[8] 
       (.C(CLK_12),
        .CE(Data_Out_int),
        .D(\Data_Out_int[8]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[8] ),
        .R(BCLK_int_i_1_n_0));
  FDRE \Data_Out_int_reg[9] 
       (.C(CLK_12),
        .CE(Data_Out_int),
        .D(\Data_Out_int[9]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[9] ),
        .R(BCLK_int_i_1_n_0));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    LRCLK_i_1
       (.I0(LRCLK_i_2_n_0),
        .I1(Cnt_Lrclk[3]),
        .I2(Cnt_Lrclk[4]),
        .I3(BCLK_Fall),
        .I4(LRCLK_reg_0),
        .O(LRCLK_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    LRCLK_i_2
       (.I0(Cnt_Lrclk[2]),
        .I1(Cnt_Lrclk[1]),
        .I2(Cnt_Lrclk[0]),
        .O(LRCLK_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    LRCLK_reg
       (.C(CLK_12),
        .CE(1'b1),
        .D(LRCLK_i_1_n_0),
        .Q(LRCLK_reg_0),
        .R(BCLK_int_i_1_n_0));
endmodule

(* ORIG_REF_NAME = "i2s_rx_tx" *) 
module audio_vocoder_i2s_rx_tx_0_1_i2s_rx_tx
   (LRCLK_reg,
    SDATA_O,
    to_datapath,
    BCLK_int_reg,
    MCLK_O,
    CLK_12,
    from_datapath,
    SDATA_I,
    resetn);
  output LRCLK_reg;
  output SDATA_O;
  output [23:0]to_datapath;
  output BCLK_int_reg;
  output MCLK_O;
  input CLK_12;
  input [23:0]from_datapath;
  input SDATA_I;
  input resetn;

  wire BCLK_int_reg;
  wire CLK_12;
  wire LRCLK_reg;
  wire MCLK_O;
  wire SDATA_I;
  wire SDATA_O;
  wire [23:0]from_datapath;
  wire resetn;
  wire [23:0]to_datapath;

  audio_vocoder_i2s_rx_tx_0_1_i2s_ctl Inst_I2s
       (.BCLK_int_reg_0(BCLK_int_reg),
        .CLK_12(CLK_12),
        .LRCLK_reg_0(LRCLK_reg),
        .SDATA_I(SDATA_I),
        .SDATA_O(SDATA_O),
        .from_datapath(from_datapath),
        .resetn(resetn),
        .to_datapath(to_datapath));
  (* CHECK_LICENSE_TYPE = "oddr_0,oddr_v1_0_0_oddr,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "oddr_v1_0_0_oddr,Vivado 2018.3.1" *) 
  audio_vocoder_i2s_rx_tx_0_1_oddr_0 ODDR_inst
       (.clk_in(CLK_12),
        .clk_out(MCLK_O));
endmodule

(* CHECK_LICENSE_TYPE = "oddr_0,oddr_v1_0_0_oddr,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "oddr_0" *) 
(* X_CORE_INFO = "oddr_v1_0_0_oddr,Vivado 2018.3.1" *) 
module audio_vocoder_i2s_rx_tx_0_1_oddr_0
   (clk_in,
    clk_out);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk_in CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk_in, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input clk_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk_out CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk_out, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) output clk_out;

  wire clk_in;
  wire clk_out;

  audio_vocoder_i2s_rx_tx_0_1_oddr_v1_0_0_oddr inst
       (.clk_in(clk_in),
        .clk_out(clk_out));
endmodule

(* ORIG_REF_NAME = "oddr_v1_0_0_oddr" *) 
module audio_vocoder_i2s_rx_tx_0_1_oddr_v1_0_0_oddr
   (clk_out,
    clk_in);
  output clk_out;
  input clk_in;

  wire clk_in;
  wire clk_out;
  wire NLW_ODDR_inst_R_UNCONNECTED;
  wire NLW_ODDR_inst_S_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO " *) 
  (* __SRVAL = "TRUE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    ODDR_inst
       (.C(clk_in),
        .CE(1'b1),
        .D1(1'b1),
        .D2(1'b0),
        .Q(clk_out),
        .R(NLW_ODDR_inst_R_UNCONNECTED),
        .S(NLW_ODDR_inst_S_UNCONNECTED));
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
