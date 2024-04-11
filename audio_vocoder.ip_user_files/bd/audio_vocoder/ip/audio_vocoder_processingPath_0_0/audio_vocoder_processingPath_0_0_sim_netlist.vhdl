-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
-- Date        : Sun Mar 24 15:31:33 2024
-- Host        : BA3135WS10 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top audio_vocoder_processingPath_0_0 -prefix
--               audio_vocoder_processingPath_0_0_ design_1_processingPath_0_0_sim_netlist.vhdl
-- Design      : design_1_processingPath_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tsbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity audio_vocoder_processingPath_0_0_processingPath is
  port (
    clk_12 : in STD_LOGIC;
    resetn : in STD_LOGIC;
    inputSample : in STD_LOGIC_VECTOR ( 23 downto 0 );
    outputSample : out STD_LOGIC_VECTOR ( 23 downto 0 );
    axi_clk : out STD_LOGIC;
    configDataFFT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    configValidFFT : out STD_LOGIC;
    configReadyFFT : in STD_LOGIC;
    outValidFFT : out STD_LOGIC;
    outLastFFT : out STD_LOGIC;
    inReadyFFT : in STD_LOGIC;
    inputFFTData : out STD_LOGIC_VECTOR ( 47 downto 0 );
    configDataIFFT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    configValidIFFT : out STD_LOGIC;
    configReadyIFFT : in STD_LOGIC;
    inValidIFFT : in STD_LOGIC;
    inLastIFFT : in STD_LOGIC;
    outReadyIFFT : out STD_LOGIC;
    outputIFFTData : in STD_LOGIC_VECTOR ( 47 downto 0 )
  );
  attribute DATAWIDTH : integer;
  attribute DATAWIDTH of audio_vocoder_processingPath_0_0_processingPath : entity is 48;
  attribute SAMPLEWIDTH : integer;
  attribute SAMPLEWIDTH of audio_vocoder_processingPath_0_0_processingPath : entity is 24;
end audio_vocoder_processingPath_0_0_processingPath;

architecture STRUCTURE of audio_vocoder_processingPath_0_0_processingPath is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^axi_clk\ : STD_LOGIC;
  signal clk_48k_i_1_n_0 : STD_LOGIC;
  signal clk_48k_i_2_n_0 : STD_LOGIC;
  signal counter : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \counter[6]_i_2_n_0\ : STD_LOGIC;
  signal \counter[7]_i_2_n_0\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \^inputfftdata\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal p_0_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of clk_48k_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter[6]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter[7]_i_1\ : label is "soft_lutpair1";
begin
  axi_clk <= \^axi_clk\;
  configDataFFT(7) <= \<const0>\;
  configDataFFT(6) <= \<const0>\;
  configDataFFT(5) <= \<const0>\;
  configDataFFT(4) <= \<const0>\;
  configDataFFT(3) <= \<const0>\;
  configDataFFT(2) <= \<const0>\;
  configDataFFT(1) <= \<const0>\;
  configDataFFT(0) <= \<const1>\;
  configDataIFFT(7) <= \<const0>\;
  configDataIFFT(6) <= \<const0>\;
  configDataIFFT(5) <= \<const0>\;
  configDataIFFT(4) <= \<const0>\;
  configDataIFFT(3) <= \<const0>\;
  configDataIFFT(2) <= \<const0>\;
  configDataIFFT(1) <= \<const0>\;
  configDataIFFT(0) <= \<const0>\;
  configValidFFT <= \<const1>\;
  configValidIFFT <= \<const1>\;
  inputFFTData(47) <= \<const0>\;
  inputFFTData(46) <= \<const0>\;
  inputFFTData(45) <= \<const0>\;
  inputFFTData(44) <= \<const0>\;
  inputFFTData(43) <= \<const0>\;
  inputFFTData(42) <= \<const0>\;
  inputFFTData(41) <= \<const0>\;
  inputFFTData(40) <= \<const0>\;
  inputFFTData(39) <= \<const0>\;
  inputFFTData(38) <= \<const0>\;
  inputFFTData(37) <= \<const0>\;
  inputFFTData(36) <= \<const0>\;
  inputFFTData(35) <= \<const0>\;
  inputFFTData(34) <= \<const0>\;
  inputFFTData(33) <= \<const0>\;
  inputFFTData(32) <= \<const0>\;
  inputFFTData(31) <= \<const0>\;
  inputFFTData(30) <= \<const0>\;
  inputFFTData(29) <= \<const0>\;
  inputFFTData(28) <= \<const0>\;
  inputFFTData(27) <= \<const0>\;
  inputFFTData(26) <= \<const0>\;
  inputFFTData(25) <= \<const0>\;
  inputFFTData(24) <= \<const0>\;
  inputFFTData(23 downto 0) <= \^inputfftdata\(23 downto 0);
  outLastFFT <= \<const0>\;
  outReadyIFFT <= \<const1>\;
  outValidFFT <= \<const1>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
clk_48k_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \counter_reg_n_0_[7]\,
      I1 => clk_48k_i_2_n_0,
      I2 => \counter_reg_n_0_[6]\,
      I3 => \^axi_clk\,
      O => clk_48k_i_1_n_0
    );
clk_48k_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \counter_reg_n_0_[4]\,
      I1 => \counter_reg_n_0_[2]\,
      I2 => \counter_reg_n_0_[1]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => \counter_reg_n_0_[3]\,
      I5 => \counter_reg_n_0_[5]\,
      O => clk_48k_i_2_n_0
    );
clk_48k_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_12,
      CE => '1',
      D => clk_48k_i_1_n_0,
      Q => \^axi_clk\,
      R => '0'
    );
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[0]\,
      O => counter(0)
    );
\counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_reg_n_0_[0]\,
      I1 => \counter_reg_n_0_[1]\,
      O => counter(1)
    );
\counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \counter_reg_n_0_[2]\,
      I1 => \counter_reg_n_0_[0]\,
      I2 => \counter_reg_n_0_[1]\,
      O => counter(2)
    );
\counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \counter_reg_n_0_[3]\,
      I1 => \counter_reg_n_0_[0]\,
      I2 => \counter_reg_n_0_[1]\,
      I3 => \counter_reg_n_0_[2]\,
      O => counter(3)
    );
\counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \counter_reg_n_0_[4]\,
      I1 => \counter_reg_n_0_[2]\,
      I2 => \counter_reg_n_0_[1]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => \counter_reg_n_0_[3]\,
      O => counter(4)
    );
\counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \counter_reg_n_0_[5]\,
      I1 => \counter_reg_n_0_[3]\,
      I2 => \counter_reg_n_0_[0]\,
      I3 => \counter_reg_n_0_[1]\,
      I4 => \counter_reg_n_0_[2]\,
      I5 => \counter_reg_n_0_[4]\,
      O => counter(5)
    );
\counter[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \counter_reg_n_0_[6]\,
      I1 => \counter_reg_n_0_[4]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter[6]_i_2_n_0\,
      I4 => \counter_reg_n_0_[3]\,
      I5 => \counter_reg_n_0_[5]\,
      O => counter(6)
    );
\counter[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter_reg_n_0_[1]\,
      I1 => \counter_reg_n_0_[0]\,
      O => \counter[6]_i_2_n_0\
    );
\counter[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B8CC"
    )
        port map (
      I0 => \counter[7]_i_2_n_0\,
      I1 => \counter_reg_n_0_[7]\,
      I2 => clk_48k_i_2_n_0,
      I3 => \counter_reg_n_0_[6]\,
      O => counter(7)
    );
\counter[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \counter_reg_n_0_[4]\,
      I1 => \counter_reg_n_0_[2]\,
      I2 => \counter_reg_n_0_[0]\,
      I3 => \counter_reg_n_0_[1]\,
      I4 => \counter_reg_n_0_[3]\,
      I5 => \counter_reg_n_0_[5]\,
      O => \counter[7]_i_2_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_12,
      CE => '1',
      D => counter(0),
      Q => \counter_reg_n_0_[0]\,
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_12,
      CE => '1',
      D => counter(1),
      Q => \counter_reg_n_0_[1]\,
      R => '0'
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_12,
      CE => '1',
      D => counter(2),
      Q => \counter_reg_n_0_[2]\,
      R => '0'
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_12,
      CE => '1',
      D => counter(3),
      Q => \counter_reg_n_0_[3]\,
      R => '0'
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_12,
      CE => '1',
      D => counter(4),
      Q => \counter_reg_n_0_[4]\,
      R => '0'
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_12,
      CE => '1',
      D => counter(5),
      Q => \counter_reg_n_0_[5]\,
      R => '0'
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_12,
      CE => '1',
      D => counter(6),
      Q => \counter_reg_n_0_[6]\,
      R => '0'
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_12,
      CE => '1',
      D => counter(7),
      Q => \counter_reg_n_0_[7]\,
      R => '0'
    );
\inputData_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_12,
      CE => '1',
      D => inputSample(0),
      Q => \^inputfftdata\(0),
      R => p_0_in
    );
\inputData_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_12,
      CE => '1',
      D => inputSample(10),
      Q => \^inputfftdata\(10),
      R => p_0_in
    );
\inputData_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_12,
      CE => '1',
      D => inputSample(11),
      Q => \^inputfftdata\(11),
      R => p_0_in
    );
\inputData_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_12,
      CE => '1',
      D => inputSample(12),
      Q => \^inputfftdata\(12),
      R => p_0_in
    );
\inputData_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_12,
      CE => '1',
      D => inputSample(13),
      Q => \^inputfftdata\(13),
      R => p_0_in
    );
\inputData_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_12,
      CE => '1',
      D => inputSample(14),
      Q => \^inputfftdata\(14),
      R => p_0_in
    );
\inputData_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_12,
      CE => '1',
      D => inputSample(15),
      Q => \^inputfftdata\(15),
      R => p_0_in
    );
\inputData_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk_12,
      CE => '1',
      D => inputSample(16),
      Q => \^inputfftdata\(16),
      R => p_0_in
    );
\inputData_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk_12,
      CE => '1',
      D => inputSample(17),
      Q => \^inputfftdata\(17),
      R => p_0_in
    );
\inputData_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk_12,
      CE => '1',
      D => inputSample(18),
      Q => \^inputfftdata\(18),
      R => p_0_in
    );
\inputData_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk_12,
      CE => '1',
      D => inputSample(19),
      Q => \^inputfftdata\(19),
      R => p_0_in
    );
\inputData_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_12,
      CE => '1',
      D => inputSample(1),
      Q => \^inputfftdata\(1),
      R => p_0_in
    );
\inputData_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk_12,
      CE => '1',
      D => inputSample(20),
      Q => \^inputfftdata\(20),
      R => p_0_in
    );
\inputData_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk_12,
      CE => '1',
      D => inputSample(21),
      Q => \^inputfftdata\(21),
      R => p_0_in
    );
\inputData_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk_12,
      CE => '1',
      D => inputSample(22),
      Q => \^inputfftdata\(22),
      R => p_0_in
    );
\inputData_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk_12,
      CE => '1',
      D => inputSample(23),
      Q => \^inputfftdata\(23),
      R => p_0_in
    );
\inputData_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_12,
      CE => '1',
      D => inputSample(2),
      Q => \^inputfftdata\(2),
      R => p_0_in
    );
\inputData_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_12,
      CE => '1',
      D => inputSample(3),
      Q => \^inputfftdata\(3),
      R => p_0_in
    );
\inputData_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_12,
      CE => '1',
      D => inputSample(4),
      Q => \^inputfftdata\(4),
      R => p_0_in
    );
\inputData_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_12,
      CE => '1',
      D => inputSample(5),
      Q => \^inputfftdata\(5),
      R => p_0_in
    );
\inputData_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_12,
      CE => '1',
      D => inputSample(6),
      Q => \^inputfftdata\(6),
      R => p_0_in
    );
\inputData_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_12,
      CE => '1',
      D => inputSample(7),
      Q => \^inputfftdata\(7),
      R => p_0_in
    );
\inputData_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_12,
      CE => '1',
      D => inputSample(8),
      Q => \^inputfftdata\(8),
      R => p_0_in
    );
\inputData_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_12,
      CE => '1',
      D => inputSample(9),
      Q => \^inputfftdata\(9),
      R => p_0_in
    );
\outputSample[23]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn,
      O => p_0_in
    );
\outputSample_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_12,
      CE => '1',
      D => outputIFFTData(0),
      Q => outputSample(0),
      R => p_0_in
    );
\outputSample_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_12,
      CE => '1',
      D => outputIFFTData(10),
      Q => outputSample(10),
      R => p_0_in
    );
\outputSample_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_12,
      CE => '1',
      D => outputIFFTData(11),
      Q => outputSample(11),
      R => p_0_in
    );
\outputSample_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_12,
      CE => '1',
      D => outputIFFTData(12),
      Q => outputSample(12),
      R => p_0_in
    );
\outputSample_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_12,
      CE => '1',
      D => outputIFFTData(13),
      Q => outputSample(13),
      R => p_0_in
    );
\outputSample_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_12,
      CE => '1',
      D => outputIFFTData(14),
      Q => outputSample(14),
      R => p_0_in
    );
\outputSample_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_12,
      CE => '1',
      D => outputIFFTData(15),
      Q => outputSample(15),
      R => p_0_in
    );
\outputSample_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk_12,
      CE => '1',
      D => outputIFFTData(16),
      Q => outputSample(16),
      R => p_0_in
    );
\outputSample_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk_12,
      CE => '1',
      D => outputIFFTData(17),
      Q => outputSample(17),
      R => p_0_in
    );
\outputSample_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk_12,
      CE => '1',
      D => outputIFFTData(18),
      Q => outputSample(18),
      R => p_0_in
    );
\outputSample_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk_12,
      CE => '1',
      D => outputIFFTData(19),
      Q => outputSample(19),
      R => p_0_in
    );
\outputSample_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_12,
      CE => '1',
      D => outputIFFTData(1),
      Q => outputSample(1),
      R => p_0_in
    );
\outputSample_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk_12,
      CE => '1',
      D => outputIFFTData(20),
      Q => outputSample(20),
      R => p_0_in
    );
\outputSample_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk_12,
      CE => '1',
      D => outputIFFTData(21),
      Q => outputSample(21),
      R => p_0_in
    );
\outputSample_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk_12,
      CE => '1',
      D => outputIFFTData(22),
      Q => outputSample(22),
      R => p_0_in
    );
\outputSample_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk_12,
      CE => '1',
      D => outputIFFTData(23),
      Q => outputSample(23),
      R => p_0_in
    );
\outputSample_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_12,
      CE => '1',
      D => outputIFFTData(2),
      Q => outputSample(2),
      R => p_0_in
    );
\outputSample_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_12,
      CE => '1',
      D => outputIFFTData(3),
      Q => outputSample(3),
      R => p_0_in
    );
\outputSample_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_12,
      CE => '1',
      D => outputIFFTData(4),
      Q => outputSample(4),
      R => p_0_in
    );
\outputSample_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_12,
      CE => '1',
      D => outputIFFTData(5),
      Q => outputSample(5),
      R => p_0_in
    );
\outputSample_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_12,
      CE => '1',
      D => outputIFFTData(6),
      Q => outputSample(6),
      R => p_0_in
    );
\outputSample_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_12,
      CE => '1',
      D => outputIFFTData(7),
      Q => outputSample(7),
      R => p_0_in
    );
\outputSample_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_12,
      CE => '1',
      D => outputIFFTData(8),
      Q => outputSample(8),
      R => p_0_in
    );
\outputSample_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_12,
      CE => '1',
      D => outputIFFTData(9),
      Q => outputSample(9),
      R => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity audio_vocoder_processingPath_0_0 is
  port (
    clk_12 : in STD_LOGIC;
    resetn : in STD_LOGIC;
    inputSample : in STD_LOGIC_VECTOR ( 23 downto 0 );
    outputSample : out STD_LOGIC_VECTOR ( 23 downto 0 );
    axi_clk : out STD_LOGIC;
    configDataFFT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    configValidFFT : out STD_LOGIC;
    configReadyFFT : in STD_LOGIC;
    outValidFFT : out STD_LOGIC;
    outLastFFT : out STD_LOGIC;
    inReadyFFT : in STD_LOGIC;
    inputFFTData : out STD_LOGIC_VECTOR ( 47 downto 0 );
    configDataIFFT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    configValidIFFT : out STD_LOGIC;
    configReadyIFFT : in STD_LOGIC;
    inValidIFFT : in STD_LOGIC;
    inLastIFFT : in STD_LOGIC;
    outReadyIFFT : out STD_LOGIC;
    outputIFFTData : in STD_LOGIC_VECTOR ( 47 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of audio_vocoder_processingPath_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of audio_vocoder_processingPath_0_0 : entity is "design_1_processingPath_0_0,processingPath,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of audio_vocoder_processingPath_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of audio_vocoder_processingPath_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of audio_vocoder_processingPath_0_0 : entity is "processingPath,Vivado 2018.3.1";
end audio_vocoder_processingPath_0_0;

architecture STRUCTURE of audio_vocoder_processingPath_0_0 is
  attribute DATAWIDTH : integer;
  attribute DATAWIDTH of inst : label is 48;
  attribute SAMPLEWIDTH : integer;
  attribute SAMPLEWIDTH of inst : label is 24;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of axi_clk : signal is "xilinx.com:signal:clock:1.0 axi_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of axi_clk : signal is "XIL_INTERFACENAME axi_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processingPath_0_0_axi_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of resetn : signal is "xilinx.com:signal:reset:1.0 resetn RST";
  attribute X_INTERFACE_PARAMETER of resetn : signal is "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.audio_vocoder_processingPath_0_0_processingPath
     port map (
      axi_clk => axi_clk,
      clk_12 => clk_12,
      configDataFFT(7 downto 0) => configDataFFT(7 downto 0),
      configDataIFFT(7 downto 0) => configDataIFFT(7 downto 0),
      configReadyFFT => configReadyFFT,
      configReadyIFFT => configReadyIFFT,
      configValidFFT => configValidFFT,
      configValidIFFT => configValidIFFT,
      inLastIFFT => inLastIFFT,
      inReadyFFT => inReadyFFT,
      inValidIFFT => inValidIFFT,
      inputFFTData(47 downto 0) => inputFFTData(47 downto 0),
      inputSample(23 downto 0) => inputSample(23 downto 0),
      outLastFFT => outLastFFT,
      outReadyIFFT => outReadyIFFT,
      outValidFFT => outValidFFT,
      outputIFFTData(47 downto 0) => outputIFFTData(47 downto 0),
      outputSample(23 downto 0) => outputSample(23 downto 0),
      resetn => resetn
    );
end STRUCTURE;
