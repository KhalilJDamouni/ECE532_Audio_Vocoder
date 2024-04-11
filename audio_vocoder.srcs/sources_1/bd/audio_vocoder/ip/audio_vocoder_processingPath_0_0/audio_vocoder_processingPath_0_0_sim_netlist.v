// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
// Date        : Sat Mar 23 19:34:20 2024
// Host        : BA3135WS39 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/damounik/March23/final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ip/audio_vocoder_processingPath_0_0/audio_vocoder_processingPath_0_0_sim_netlist.v
// Design      : audio_vocoder_processingPath_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "audio_vocoder_processingPath_0_0,processingPath,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "processingPath,Vivado 2018.3.1" *) 
(* NotValidForBitStream *)
module audio_vocoder_processingPath_0_0
   (clk_12,
    resetn,
    inputSample,
    outputSample,
    axi_clk,
    configDataFFT,
    configValidFFT,
    configReadyFFT,
    outValidFFT,
    outLastFFT,
    inReadyFFT,
    inputFFTData,
    configDataIFFT,
    configValidIFFT,
    configReadyIFFT,
    inValidIFFT,
    inLastIFFT,
    outReadyIFFT,
    outputIFFTData);
  input clk_12;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
  input [23:0]inputSample;
  output [23:0]outputSample;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axi_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN audio_vocoder_processingPath_0_0_axi_clk, INSERT_VIP 0" *) output axi_clk;
  output [15:0]configDataFFT;
  output configValidFFT;
  input configReadyFFT;
  output outValidFFT;
  output outLastFFT;
  input inReadyFFT;
  output [47:0]inputFFTData;
  output [15:0]configDataIFFT;
  output configValidIFFT;
  input configReadyIFFT;
  input inValidIFFT;
  input inLastIFFT;
  output outReadyIFFT;
  input [47:0]outputIFFTData;

  wire axi_clk;
  wire clk_12;
  wire [15:0]configDataFFT;
  wire [15:0]configDataIFFT;
  wire configReadyFFT;
  wire configReadyIFFT;
  wire configValidFFT;
  wire configValidIFFT;
  wire inLastIFFT;
  wire inReadyFFT;
  wire inValidIFFT;
  wire [47:0]inputFFTData;
  wire [23:0]inputSample;
  wire outLastFFT;
  wire outReadyIFFT;
  wire outValidFFT;
  wire [47:0]outputIFFTData;
  wire [23:0]outputSample;
  wire resetn;

  (* DATAWIDTH = "48" *) 
  (* SAMPLEWIDTH = "24" *) 
  audio_vocoder_processingPath_0_0_processingPath inst
       (.axi_clk(axi_clk),
        .clk_12(clk_12),
        .configDataFFT(configDataFFT),
        .configDataIFFT(configDataIFFT),
        .configReadyFFT(configReadyFFT),
        .configReadyIFFT(configReadyIFFT),
        .configValidFFT(configValidFFT),
        .configValidIFFT(configValidIFFT),
        .inLastIFFT(inLastIFFT),
        .inReadyFFT(inReadyFFT),
        .inValidIFFT(inValidIFFT),
        .inputFFTData(inputFFTData),
        .inputSample(inputSample),
        .outLastFFT(outLastFFT),
        .outReadyIFFT(outReadyIFFT),
        .outValidFFT(outValidFFT),
        .outputIFFTData(outputIFFTData),
        .outputSample(outputSample),
        .resetn(resetn));
endmodule

(* DATAWIDTH = "48" *) (* ORIG_REF_NAME = "processingPath" *) (* SAMPLEWIDTH = "24" *) 
module audio_vocoder_processingPath_0_0_processingPath
   (clk_12,
    resetn,
    inputSample,
    outputSample,
    axi_clk,
    configDataFFT,
    configValidFFT,
    configReadyFFT,
    outValidFFT,
    outLastFFT,
    inReadyFFT,
    inputFFTData,
    configDataIFFT,
    configValidIFFT,
    configReadyIFFT,
    inValidIFFT,
    inLastIFFT,
    outReadyIFFT,
    outputIFFTData);
  input clk_12;
  input resetn;
  input [23:0]inputSample;
  output [23:0]outputSample;
  output axi_clk;
  output [15:0]configDataFFT;
  output configValidFFT;
  input configReadyFFT;
  output outValidFFT;
  output outLastFFT;
  input inReadyFFT;
  output [47:0]inputFFTData;
  output [15:0]configDataIFFT;
  output configValidIFFT;
  input configReadyIFFT;
  input inValidIFFT;
  input inLastIFFT;
  output outReadyIFFT;
  input [47:0]outputIFFTData;

  wire \<const0> ;
  wire \<const1> ;
  wire axi_clk;
  wire clk_12;
  wire clk_48k_i_1_n_0;
  wire clk_48k_i_2_n_0;
  wire [7:0]counter;
  wire \counter[6]_i_2_n_0 ;
  wire \counter[7]_i_2_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[3] ;
  wire \counter_reg_n_0_[4] ;
  wire \counter_reg_n_0_[5] ;
  wire \counter_reg_n_0_[6] ;
  wire \counter_reg_n_0_[7] ;
  wire [23:0]\^inputFFTData ;
  wire [23:0]inputSample;
  wire [47:0]outputIFFTData;
  wire [23:0]outputSample;
  wire p_0_in;
  wire resetn;

  assign configDataFFT[15] = \<const0> ;
  assign configDataFFT[14] = \<const0> ;
  assign configDataFFT[13] = \<const0> ;
  assign configDataFFT[12] = \<const0> ;
  assign configDataFFT[11] = \<const0> ;
  assign configDataFFT[10] = \<const0> ;
  assign configDataFFT[9] = \<const1> ;
  assign configDataFFT[8] = \<const1> ;
  assign configDataFFT[7] = \<const0> ;
  assign configDataFFT[6] = \<const1> ;
  assign configDataFFT[5] = \<const0> ;
  assign configDataFFT[4] = \<const1> ;
  assign configDataFFT[3] = \<const0> ;
  assign configDataFFT[2] = \<const1> ;
  assign configDataFFT[1] = \<const1> ;
  assign configDataFFT[0] = \<const1> ;
  assign configDataIFFT[15] = \<const0> ;
  assign configDataIFFT[14] = \<const0> ;
  assign configDataIFFT[13] = \<const0> ;
  assign configDataIFFT[12] = \<const0> ;
  assign configDataIFFT[11] = \<const0> ;
  assign configDataIFFT[10] = \<const0> ;
  assign configDataIFFT[9] = \<const1> ;
  assign configDataIFFT[8] = \<const1> ;
  assign configDataIFFT[7] = \<const0> ;
  assign configDataIFFT[6] = \<const1> ;
  assign configDataIFFT[5] = \<const0> ;
  assign configDataIFFT[4] = \<const1> ;
  assign configDataIFFT[3] = \<const0> ;
  assign configDataIFFT[2] = \<const1> ;
  assign configDataIFFT[1] = \<const1> ;
  assign configDataIFFT[0] = \<const0> ;
  assign configValidFFT = \<const1> ;
  assign configValidIFFT = \<const1> ;
  assign inputFFTData[47] = \<const0> ;
  assign inputFFTData[46] = \<const0> ;
  assign inputFFTData[45] = \<const0> ;
  assign inputFFTData[44] = \<const0> ;
  assign inputFFTData[43] = \<const0> ;
  assign inputFFTData[42] = \<const0> ;
  assign inputFFTData[41] = \<const0> ;
  assign inputFFTData[40] = \<const0> ;
  assign inputFFTData[39] = \<const0> ;
  assign inputFFTData[38] = \<const0> ;
  assign inputFFTData[37] = \<const0> ;
  assign inputFFTData[36] = \<const0> ;
  assign inputFFTData[35] = \<const0> ;
  assign inputFFTData[34] = \<const0> ;
  assign inputFFTData[33] = \<const0> ;
  assign inputFFTData[32] = \<const0> ;
  assign inputFFTData[31] = \<const0> ;
  assign inputFFTData[30] = \<const0> ;
  assign inputFFTData[29] = \<const0> ;
  assign inputFFTData[28] = \<const0> ;
  assign inputFFTData[27] = \<const0> ;
  assign inputFFTData[26] = \<const0> ;
  assign inputFFTData[25] = \<const0> ;
  assign inputFFTData[24] = \<const0> ;
  assign inputFFTData[23:0] = \^inputFFTData [23:0];
  assign outLastFFT = \<const0> ;
  assign outReadyIFFT = \<const1> ;
  assign outValidFFT = \<const1> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    clk_48k_i_1
       (.I0(\counter_reg_n_0_[7] ),
        .I1(clk_48k_i_2_n_0),
        .I2(\counter_reg_n_0_[6] ),
        .I3(axi_clk),
        .O(clk_48k_i_1_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    clk_48k_i_2
       (.I0(\counter_reg_n_0_[4] ),
        .I1(\counter_reg_n_0_[2] ),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(\counter_reg_n_0_[3] ),
        .I5(\counter_reg_n_0_[5] ),
        .O(clk_48k_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_48k_reg
       (.C(clk_12),
        .CE(1'b1),
        .D(clk_48k_i_1_n_0),
        .Q(axi_clk),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(\counter_reg_n_0_[0] ),
        .O(counter[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(\counter_reg_n_0_[1] ),
        .O(counter[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \counter[2]_i_1 
       (.I0(\counter_reg_n_0_[2] ),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[1] ),
        .O(counter[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \counter[3]_i_1 
       (.I0(\counter_reg_n_0_[3] ),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[2] ),
        .O(counter[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \counter[4]_i_1 
       (.I0(\counter_reg_n_0_[4] ),
        .I1(\counter_reg_n_0_[2] ),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(\counter_reg_n_0_[3] ),
        .O(counter[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \counter[5]_i_1 
       (.I0(\counter_reg_n_0_[5] ),
        .I1(\counter_reg_n_0_[3] ),
        .I2(\counter_reg_n_0_[0] ),
        .I3(\counter_reg_n_0_[1] ),
        .I4(\counter_reg_n_0_[2] ),
        .I5(\counter_reg_n_0_[4] ),
        .O(counter[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \counter[6]_i_1 
       (.I0(\counter_reg_n_0_[6] ),
        .I1(\counter_reg_n_0_[4] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter[6]_i_2_n_0 ),
        .I4(\counter_reg_n_0_[3] ),
        .I5(\counter_reg_n_0_[5] ),
        .O(counter[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[6]_i_2 
       (.I0(\counter_reg_n_0_[1] ),
        .I1(\counter_reg_n_0_[0] ),
        .O(\counter[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hB8CC)) 
    \counter[7]_i_1 
       (.I0(\counter[7]_i_2_n_0 ),
        .I1(\counter_reg_n_0_[7] ),
        .I2(clk_48k_i_2_n_0),
        .I3(\counter_reg_n_0_[6] ),
        .O(counter[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \counter[7]_i_2 
       (.I0(\counter_reg_n_0_[4] ),
        .I1(\counter_reg_n_0_[2] ),
        .I2(\counter_reg_n_0_[0] ),
        .I3(\counter_reg_n_0_[1] ),
        .I4(\counter_reg_n_0_[3] ),
        .I5(\counter_reg_n_0_[5] ),
        .O(\counter[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_12),
        .CE(1'b1),
        .D(counter[0]),
        .Q(\counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_12),
        .CE(1'b1),
        .D(counter[1]),
        .Q(\counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_12),
        .CE(1'b1),
        .D(counter[2]),
        .Q(\counter_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_12),
        .CE(1'b1),
        .D(counter[3]),
        .Q(\counter_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_12),
        .CE(1'b1),
        .D(counter[4]),
        .Q(\counter_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_12),
        .CE(1'b1),
        .D(counter[5]),
        .Q(\counter_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_12),
        .CE(1'b1),
        .D(counter[6]),
        .Q(\counter_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_12),
        .CE(1'b1),
        .D(counter[7]),
        .Q(\counter_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \inputData_reg[0] 
       (.C(clk_12),
        .CE(1'b1),
        .D(inputSample[0]),
        .Q(\^inputFFTData [0]),
        .R(p_0_in));
  FDRE \inputData_reg[10] 
       (.C(clk_12),
        .CE(1'b1),
        .D(inputSample[10]),
        .Q(\^inputFFTData [10]),
        .R(p_0_in));
  FDRE \inputData_reg[11] 
       (.C(clk_12),
        .CE(1'b1),
        .D(inputSample[11]),
        .Q(\^inputFFTData [11]),
        .R(p_0_in));
  FDRE \inputData_reg[12] 
       (.C(clk_12),
        .CE(1'b1),
        .D(inputSample[12]),
        .Q(\^inputFFTData [12]),
        .R(p_0_in));
  FDRE \inputData_reg[13] 
       (.C(clk_12),
        .CE(1'b1),
        .D(inputSample[13]),
        .Q(\^inputFFTData [13]),
        .R(p_0_in));
  FDRE \inputData_reg[14] 
       (.C(clk_12),
        .CE(1'b1),
        .D(inputSample[14]),
        .Q(\^inputFFTData [14]),
        .R(p_0_in));
  FDRE \inputData_reg[15] 
       (.C(clk_12),
        .CE(1'b1),
        .D(inputSample[15]),
        .Q(\^inputFFTData [15]),
        .R(p_0_in));
  FDRE \inputData_reg[16] 
       (.C(clk_12),
        .CE(1'b1),
        .D(inputSample[16]),
        .Q(\^inputFFTData [16]),
        .R(p_0_in));
  FDRE \inputData_reg[17] 
       (.C(clk_12),
        .CE(1'b1),
        .D(inputSample[17]),
        .Q(\^inputFFTData [17]),
        .R(p_0_in));
  FDRE \inputData_reg[18] 
       (.C(clk_12),
        .CE(1'b1),
        .D(inputSample[18]),
        .Q(\^inputFFTData [18]),
        .R(p_0_in));
  FDRE \inputData_reg[19] 
       (.C(clk_12),
        .CE(1'b1),
        .D(inputSample[19]),
        .Q(\^inputFFTData [19]),
        .R(p_0_in));
  FDRE \inputData_reg[1] 
       (.C(clk_12),
        .CE(1'b1),
        .D(inputSample[1]),
        .Q(\^inputFFTData [1]),
        .R(p_0_in));
  FDRE \inputData_reg[20] 
       (.C(clk_12),
        .CE(1'b1),
        .D(inputSample[20]),
        .Q(\^inputFFTData [20]),
        .R(p_0_in));
  FDRE \inputData_reg[21] 
       (.C(clk_12),
        .CE(1'b1),
        .D(inputSample[21]),
        .Q(\^inputFFTData [21]),
        .R(p_0_in));
  FDRE \inputData_reg[22] 
       (.C(clk_12),
        .CE(1'b1),
        .D(inputSample[22]),
        .Q(\^inputFFTData [22]),
        .R(p_0_in));
  FDRE \inputData_reg[23] 
       (.C(clk_12),
        .CE(1'b1),
        .D(inputSample[23]),
        .Q(\^inputFFTData [23]),
        .R(p_0_in));
  FDRE \inputData_reg[2] 
       (.C(clk_12),
        .CE(1'b1),
        .D(inputSample[2]),
        .Q(\^inputFFTData [2]),
        .R(p_0_in));
  FDRE \inputData_reg[3] 
       (.C(clk_12),
        .CE(1'b1),
        .D(inputSample[3]),
        .Q(\^inputFFTData [3]),
        .R(p_0_in));
  FDRE \inputData_reg[4] 
       (.C(clk_12),
        .CE(1'b1),
        .D(inputSample[4]),
        .Q(\^inputFFTData [4]),
        .R(p_0_in));
  FDRE \inputData_reg[5] 
       (.C(clk_12),
        .CE(1'b1),
        .D(inputSample[5]),
        .Q(\^inputFFTData [5]),
        .R(p_0_in));
  FDRE \inputData_reg[6] 
       (.C(clk_12),
        .CE(1'b1),
        .D(inputSample[6]),
        .Q(\^inputFFTData [6]),
        .R(p_0_in));
  FDRE \inputData_reg[7] 
       (.C(clk_12),
        .CE(1'b1),
        .D(inputSample[7]),
        .Q(\^inputFFTData [7]),
        .R(p_0_in));
  FDRE \inputData_reg[8] 
       (.C(clk_12),
        .CE(1'b1),
        .D(inputSample[8]),
        .Q(\^inputFFTData [8]),
        .R(p_0_in));
  FDRE \inputData_reg[9] 
       (.C(clk_12),
        .CE(1'b1),
        .D(inputSample[9]),
        .Q(\^inputFFTData [9]),
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    \outputSample[23]_i_1 
       (.I0(resetn),
        .O(p_0_in));
  FDRE \outputSample_reg[0] 
       (.C(clk_12),
        .CE(1'b1),
        .D(outputIFFTData[0]),
        .Q(outputSample[0]),
        .R(p_0_in));
  FDRE \outputSample_reg[10] 
       (.C(clk_12),
        .CE(1'b1),
        .D(outputIFFTData[10]),
        .Q(outputSample[10]),
        .R(p_0_in));
  FDRE \outputSample_reg[11] 
       (.C(clk_12),
        .CE(1'b1),
        .D(outputIFFTData[11]),
        .Q(outputSample[11]),
        .R(p_0_in));
  FDRE \outputSample_reg[12] 
       (.C(clk_12),
        .CE(1'b1),
        .D(outputIFFTData[12]),
        .Q(outputSample[12]),
        .R(p_0_in));
  FDRE \outputSample_reg[13] 
       (.C(clk_12),
        .CE(1'b1),
        .D(outputIFFTData[13]),
        .Q(outputSample[13]),
        .R(p_0_in));
  FDRE \outputSample_reg[14] 
       (.C(clk_12),
        .CE(1'b1),
        .D(outputIFFTData[14]),
        .Q(outputSample[14]),
        .R(p_0_in));
  FDRE \outputSample_reg[15] 
       (.C(clk_12),
        .CE(1'b1),
        .D(outputIFFTData[15]),
        .Q(outputSample[15]),
        .R(p_0_in));
  FDRE \outputSample_reg[16] 
       (.C(clk_12),
        .CE(1'b1),
        .D(outputIFFTData[16]),
        .Q(outputSample[16]),
        .R(p_0_in));
  FDRE \outputSample_reg[17] 
       (.C(clk_12),
        .CE(1'b1),
        .D(outputIFFTData[17]),
        .Q(outputSample[17]),
        .R(p_0_in));
  FDRE \outputSample_reg[18] 
       (.C(clk_12),
        .CE(1'b1),
        .D(outputIFFTData[18]),
        .Q(outputSample[18]),
        .R(p_0_in));
  FDRE \outputSample_reg[19] 
       (.C(clk_12),
        .CE(1'b1),
        .D(outputIFFTData[19]),
        .Q(outputSample[19]),
        .R(p_0_in));
  FDRE \outputSample_reg[1] 
       (.C(clk_12),
        .CE(1'b1),
        .D(outputIFFTData[1]),
        .Q(outputSample[1]),
        .R(p_0_in));
  FDRE \outputSample_reg[20] 
       (.C(clk_12),
        .CE(1'b1),
        .D(outputIFFTData[20]),
        .Q(outputSample[20]),
        .R(p_0_in));
  FDRE \outputSample_reg[21] 
       (.C(clk_12),
        .CE(1'b1),
        .D(outputIFFTData[21]),
        .Q(outputSample[21]),
        .R(p_0_in));
  FDRE \outputSample_reg[22] 
       (.C(clk_12),
        .CE(1'b1),
        .D(outputIFFTData[22]),
        .Q(outputSample[22]),
        .R(p_0_in));
  FDRE \outputSample_reg[23] 
       (.C(clk_12),
        .CE(1'b1),
        .D(outputIFFTData[23]),
        .Q(outputSample[23]),
        .R(p_0_in));
  FDRE \outputSample_reg[2] 
       (.C(clk_12),
        .CE(1'b1),
        .D(outputIFFTData[2]),
        .Q(outputSample[2]),
        .R(p_0_in));
  FDRE \outputSample_reg[3] 
       (.C(clk_12),
        .CE(1'b1),
        .D(outputIFFTData[3]),
        .Q(outputSample[3]),
        .R(p_0_in));
  FDRE \outputSample_reg[4] 
       (.C(clk_12),
        .CE(1'b1),
        .D(outputIFFTData[4]),
        .Q(outputSample[4]),
        .R(p_0_in));
  FDRE \outputSample_reg[5] 
       (.C(clk_12),
        .CE(1'b1),
        .D(outputIFFTData[5]),
        .Q(outputSample[5]),
        .R(p_0_in));
  FDRE \outputSample_reg[6] 
       (.C(clk_12),
        .CE(1'b1),
        .D(outputIFFTData[6]),
        .Q(outputSample[6]),
        .R(p_0_in));
  FDRE \outputSample_reg[7] 
       (.C(clk_12),
        .CE(1'b1),
        .D(outputIFFTData[7]),
        .Q(outputSample[7]),
        .R(p_0_in));
  FDRE \outputSample_reg[8] 
       (.C(clk_12),
        .CE(1'b1),
        .D(outputIFFTData[8]),
        .Q(outputSample[8]),
        .R(p_0_in));
  FDRE \outputSample_reg[9] 
       (.C(clk_12),
        .CE(1'b1),
        .D(outputIFFTData[9]),
        .Q(outputSample[9]),
        .R(p_0_in));
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
