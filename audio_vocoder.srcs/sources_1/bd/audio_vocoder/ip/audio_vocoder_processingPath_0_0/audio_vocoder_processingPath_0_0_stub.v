// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
// Date        : Sat Mar 23 19:34:20 2024
// Host        : BA3135WS39 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/damounik/March23/final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ip/audio_vocoder_processingPath_0_0/audio_vocoder_processingPath_0_0_stub.v
// Design      : audio_vocoder_processingPath_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "processingPath,Vivado 2018.3.1" *)
module audio_vocoder_processingPath_0_0(clk_12, resetn, inputSample, outputSample, 
  axi_clk, configDataFFT, configValidFFT, configReadyFFT, outValidFFT, outLastFFT, inReadyFFT, 
  inputFFTData, configDataIFFT, configValidIFFT, configReadyIFFT, inValidIFFT, inLastIFFT, 
  outReadyIFFT, outputIFFTData)
/* synthesis syn_black_box black_box_pad_pin="clk_12,resetn,inputSample[23:0],outputSample[23:0],axi_clk,configDataFFT[15:0],configValidFFT,configReadyFFT,outValidFFT,outLastFFT,inReadyFFT,inputFFTData[47:0],configDataIFFT[15:0],configValidIFFT,configReadyIFFT,inValidIFFT,inLastIFFT,outReadyIFFT,outputIFFTData[47:0]" */;
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
endmodule
