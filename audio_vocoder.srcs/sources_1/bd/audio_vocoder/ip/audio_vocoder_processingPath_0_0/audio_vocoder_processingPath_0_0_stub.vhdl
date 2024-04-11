-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
-- Date        : Sat Mar 23 19:34:20 2024
-- Host        : BA3135WS39 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/damounik/March23/final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ip/audio_vocoder_processingPath_0_0/audio_vocoder_processingPath_0_0_stub.vhdl
-- Design      : audio_vocoder_processingPath_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tsbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity audio_vocoder_processingPath_0_0 is
  Port ( 
    clk_12 : in STD_LOGIC;
    resetn : in STD_LOGIC;
    inputSample : in STD_LOGIC_VECTOR ( 23 downto 0 );
    outputSample : out STD_LOGIC_VECTOR ( 23 downto 0 );
    axi_clk : out STD_LOGIC;
    configDataFFT : out STD_LOGIC_VECTOR ( 15 downto 0 );
    configValidFFT : out STD_LOGIC;
    configReadyFFT : in STD_LOGIC;
    outValidFFT : out STD_LOGIC;
    outLastFFT : out STD_LOGIC;
    inReadyFFT : in STD_LOGIC;
    inputFFTData : out STD_LOGIC_VECTOR ( 47 downto 0 );
    configDataIFFT : out STD_LOGIC_VECTOR ( 15 downto 0 );
    configValidIFFT : out STD_LOGIC;
    configReadyIFFT : in STD_LOGIC;
    inValidIFFT : in STD_LOGIC;
    inLastIFFT : in STD_LOGIC;
    outReadyIFFT : out STD_LOGIC;
    outputIFFTData : in STD_LOGIC_VECTOR ( 47 downto 0 )
  );

end audio_vocoder_processingPath_0_0;

architecture stub of audio_vocoder_processingPath_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_12,resetn,inputSample[23:0],outputSample[23:0],axi_clk,configDataFFT[15:0],configValidFFT,configReadyFFT,outValidFFT,outLastFFT,inReadyFFT,inputFFTData[47:0],configDataIFFT[15:0],configValidIFFT,configReadyIFFT,inValidIFFT,inLastIFFT,outReadyIFFT,outputIFFTData[47:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "processingPath,Vivado 2018.3.1";
begin
end;
