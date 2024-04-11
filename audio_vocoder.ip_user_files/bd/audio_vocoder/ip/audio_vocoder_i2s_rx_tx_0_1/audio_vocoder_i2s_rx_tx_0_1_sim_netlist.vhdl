-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
-- Date        : Sat Mar 23 19:34:20 2024
-- Host        : BA3135WS39 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/damounik/March23/final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ip/audio_vocoder_i2s_rx_tx_0_1/audio_vocoder_i2s_rx_tx_0_1_sim_netlist.vhdl
-- Design      : audio_vocoder_i2s_rx_tx_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tsbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity audio_vocoder_i2s_rx_tx_0_1_i2s_ctl is
  port (
    LRCLK_reg_0 : out STD_LOGIC;
    SDATA_O : out STD_LOGIC;
    to_datapath : out STD_LOGIC_VECTOR ( 23 downto 0 );
    BCLK_int_reg_0 : out STD_LOGIC;
    CLK_12 : in STD_LOGIC;
    from_datapath : in STD_LOGIC_VECTOR ( 23 downto 0 );
    SDATA_I : in STD_LOGIC;
    resetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of audio_vocoder_i2s_rx_tx_0_1_i2s_ctl : entity is "i2s_ctl";
end audio_vocoder_i2s_rx_tx_0_1_i2s_ctl;

architecture STRUCTURE of audio_vocoder_i2s_rx_tx_0_1_i2s_ctl is
  signal BCLK_Fall : STD_LOGIC;
  signal \BCLK_Rise__0\ : STD_LOGIC;
  signal BCLK_int_i_1_n_0 : STD_LOGIC;
  signal BCLK_int_i_2_n_0 : STD_LOGIC;
  signal \^bclk_int_reg_0\ : STD_LOGIC;
  signal Cnt_Bclk : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \Cnt_Bclk[0]_i_1_n_0\ : STD_LOGIC;
  signal \Cnt_Bclk[1]_i_1_n_0\ : STD_LOGIC;
  signal \Cnt_Bclk[2]_i_1_n_0\ : STD_LOGIC;
  signal \Cnt_Bclk[3]_i_1_n_0\ : STD_LOGIC;
  signal \Cnt_Bclk[4]_i_1_n_0\ : STD_LOGIC;
  signal Cnt_Lrclk : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \Cnt_Lrclk[0]_i_1_n_0\ : STD_LOGIC;
  signal \Cnt_Lrclk[1]_i_1_n_0\ : STD_LOGIC;
  signal \Cnt_Lrclk[2]_i_1_n_0\ : STD_LOGIC;
  signal \Cnt_Lrclk[3]_i_1_n_0\ : STD_LOGIC;
  signal \Cnt_Lrclk[4]_i_2_n_0\ : STD_LOGIC;
  signal D_L_O_int : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal D_L_O_int_0 : STD_LOGIC;
  signal D_R_O_int : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \D_R_O_int[23]_i_1_n_0\ : STD_LOGIC;
  signal Data_In_int : STD_LOGIC;
  signal \Data_In_int2__3\ : STD_LOGIC;
  signal Data_Out_int : STD_LOGIC_VECTOR ( 23 to 23 );
  signal \Data_Out_int[0]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[0]_i_2_n_0\ : STD_LOGIC;
  signal \Data_Out_int[10]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[11]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[12]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[13]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[14]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[15]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[16]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[17]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[18]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[19]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[1]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[20]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[21]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[22]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[23]_i_2_n_0\ : STD_LOGIC;
  signal \Data_Out_int[23]_i_4_n_0\ : STD_LOGIC;
  signal \Data_Out_int[2]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[3]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[4]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[5]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[6]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[7]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[8]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[9]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[0]\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[10]\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[11]\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[12]\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[13]\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[14]\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[15]\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[16]\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[17]\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[18]\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[19]\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[1]\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[20]\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[21]\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[22]\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[2]\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[3]\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[4]\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[5]\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[6]\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[7]\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[8]\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[9]\ : STD_LOGIC;
  signal LRCLK_i_1_n_0 : STD_LOGIC;
  signal LRCLK_i_2_n_0 : STD_LOGIC;
  signal \^lrclk_reg_0\ : STD_LOGIC;
  signal \^to_datapath\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Cnt_Bclk[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Cnt_Bclk[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Cnt_Bclk[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Cnt_Bclk[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Cnt_Bclk[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Cnt_Lrclk[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \Cnt_Lrclk[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \Cnt_Lrclk[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Cnt_Lrclk[4]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Data_Out_int[23]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Data_Out_int[23]_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of LRCLK_i_2 : label is "soft_lutpair3";
begin
  BCLK_int_reg_0 <= \^bclk_int_reg_0\;
  LRCLK_reg_0 <= \^lrclk_reg_0\;
  to_datapath(23 downto 0) <= \^to_datapath\(23 downto 0);
BCLK_int_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn,
      O => BCLK_int_i_1_n_0
    );
BCLK_int_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000010"
    )
        port map (
      I0 => Cnt_Bclk(2),
      I1 => Cnt_Bclk(1),
      I2 => Cnt_Bclk(0),
      I3 => Cnt_Bclk(4),
      I4 => Cnt_Bclk(3),
      I5 => \^bclk_int_reg_0\,
      O => BCLK_int_i_2_n_0
    );
BCLK_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_12,
      CE => '1',
      D => BCLK_int_i_2_n_0,
      Q => \^bclk_int_reg_0\,
      R => BCLK_int_i_1_n_0
    );
\Cnt_Bclk[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Cnt_Bclk(0),
      O => \Cnt_Bclk[0]_i_1_n_0\
    );
\Cnt_Bclk[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FEFF00"
    )
        port map (
      I0 => Cnt_Bclk(2),
      I1 => Cnt_Bclk(3),
      I2 => Cnt_Bclk(4),
      I3 => Cnt_Bclk(1),
      I4 => Cnt_Bclk(0),
      O => \Cnt_Bclk[1]_i_1_n_0\
    );
\Cnt_Bclk[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => Cnt_Bclk(2),
      I1 => Cnt_Bclk(1),
      I2 => Cnt_Bclk(0),
      O => \Cnt_Bclk[2]_i_1_n_0\
    );
\Cnt_Bclk[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6CCC"
    )
        port map (
      I0 => Cnt_Bclk(2),
      I1 => Cnt_Bclk(3),
      I2 => Cnt_Bclk(1),
      I3 => Cnt_Bclk(0),
      O => \Cnt_Bclk[3]_i_1_n_0\
    );
\Cnt_Bclk[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78F0F0F0"
    )
        port map (
      I0 => Cnt_Bclk(2),
      I1 => Cnt_Bclk(3),
      I2 => Cnt_Bclk(4),
      I3 => Cnt_Bclk(1),
      I4 => Cnt_Bclk(0),
      O => \Cnt_Bclk[4]_i_1_n_0\
    );
\Cnt_Bclk_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_12,
      CE => '1',
      D => \Cnt_Bclk[0]_i_1_n_0\,
      Q => Cnt_Bclk(0),
      R => BCLK_int_i_1_n_0
    );
\Cnt_Bclk_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_12,
      CE => '1',
      D => \Cnt_Bclk[1]_i_1_n_0\,
      Q => Cnt_Bclk(1),
      R => BCLK_int_i_1_n_0
    );
\Cnt_Bclk_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_12,
      CE => '1',
      D => \Cnt_Bclk[2]_i_1_n_0\,
      Q => Cnt_Bclk(2),
      R => BCLK_int_i_1_n_0
    );
\Cnt_Bclk_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_12,
      CE => '1',
      D => \Cnt_Bclk[3]_i_1_n_0\,
      Q => Cnt_Bclk(3),
      R => BCLK_int_i_1_n_0
    );
\Cnt_Bclk_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_12,
      CE => '1',
      D => \Cnt_Bclk[4]_i_1_n_0\,
      Q => Cnt_Bclk(4),
      R => BCLK_int_i_1_n_0
    );
\Cnt_Lrclk[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Cnt_Lrclk(0),
      O => \Cnt_Lrclk[0]_i_1_n_0\
    );
\Cnt_Lrclk[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Cnt_Lrclk(0),
      I1 => Cnt_Lrclk(1),
      O => \Cnt_Lrclk[1]_i_1_n_0\
    );
\Cnt_Lrclk[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => Cnt_Lrclk(2),
      I1 => Cnt_Lrclk(0),
      I2 => Cnt_Lrclk(1),
      O => \Cnt_Lrclk[2]_i_1_n_0\
    );
\Cnt_Lrclk[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => Cnt_Lrclk(2),
      I1 => Cnt_Lrclk(0),
      I2 => Cnt_Lrclk(1),
      I3 => Cnt_Lrclk(3),
      O => \Cnt_Lrclk[3]_i_1_n_0\
    );
\Cnt_Lrclk[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => Cnt_Bclk(3),
      I1 => Cnt_Bclk(4),
      I2 => Cnt_Bclk(1),
      I3 => Cnt_Bclk(2),
      I4 => Cnt_Bclk(0),
      I5 => \^bclk_int_reg_0\,
      O => BCLK_Fall
    );
\Cnt_Lrclk[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6CCCCCCC"
    )
        port map (
      I0 => Cnt_Lrclk(2),
      I1 => Cnt_Lrclk(4),
      I2 => Cnt_Lrclk(0),
      I3 => Cnt_Lrclk(1),
      I4 => Cnt_Lrclk(3),
      O => \Cnt_Lrclk[4]_i_2_n_0\
    );
\Cnt_Lrclk_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_12,
      CE => BCLK_Fall,
      D => \Cnt_Lrclk[0]_i_1_n_0\,
      Q => Cnt_Lrclk(0),
      R => BCLK_int_i_1_n_0
    );
\Cnt_Lrclk_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_12,
      CE => BCLK_Fall,
      D => \Cnt_Lrclk[1]_i_1_n_0\,
      Q => Cnt_Lrclk(1),
      R => BCLK_int_i_1_n_0
    );
\Cnt_Lrclk_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_12,
      CE => BCLK_Fall,
      D => \Cnt_Lrclk[2]_i_1_n_0\,
      Q => Cnt_Lrclk(2),
      R => BCLK_int_i_1_n_0
    );
\Cnt_Lrclk_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_12,
      CE => BCLK_Fall,
      D => \Cnt_Lrclk[3]_i_1_n_0\,
      Q => Cnt_Lrclk(3),
      R => BCLK_int_i_1_n_0
    );
\Cnt_Lrclk_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_12,
      CE => BCLK_Fall,
      D => \Cnt_Lrclk[4]_i_2_n_0\,
      Q => Cnt_Lrclk(4),
      R => BCLK_int_i_1_n_0
    );
\D_L_O_int[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \Data_In_int2__3\,
      I1 => BCLK_Fall,
      I2 => \^lrclk_reg_0\,
      O => D_L_O_int_0
    );
\D_L_O_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => D_L_O_int_0,
      D => from_datapath(0),
      Q => D_L_O_int(0),
      R => BCLK_int_i_1_n_0
    );
\D_L_O_int_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => D_L_O_int_0,
      D => from_datapath(10),
      Q => D_L_O_int(10),
      R => BCLK_int_i_1_n_0
    );
\D_L_O_int_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => D_L_O_int_0,
      D => from_datapath(11),
      Q => D_L_O_int(11),
      R => BCLK_int_i_1_n_0
    );
\D_L_O_int_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => D_L_O_int_0,
      D => from_datapath(12),
      Q => D_L_O_int(12),
      R => BCLK_int_i_1_n_0
    );
\D_L_O_int_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => D_L_O_int_0,
      D => from_datapath(13),
      Q => D_L_O_int(13),
      R => BCLK_int_i_1_n_0
    );
\D_L_O_int_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => D_L_O_int_0,
      D => from_datapath(14),
      Q => D_L_O_int(14),
      R => BCLK_int_i_1_n_0
    );
\D_L_O_int_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => D_L_O_int_0,
      D => from_datapath(15),
      Q => D_L_O_int(15),
      R => BCLK_int_i_1_n_0
    );
\D_L_O_int_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => D_L_O_int_0,
      D => from_datapath(16),
      Q => D_L_O_int(16),
      R => BCLK_int_i_1_n_0
    );
\D_L_O_int_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => D_L_O_int_0,
      D => from_datapath(17),
      Q => D_L_O_int(17),
      R => BCLK_int_i_1_n_0
    );
\D_L_O_int_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => D_L_O_int_0,
      D => from_datapath(18),
      Q => D_L_O_int(18),
      R => BCLK_int_i_1_n_0
    );
\D_L_O_int_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => D_L_O_int_0,
      D => from_datapath(19),
      Q => D_L_O_int(19),
      R => BCLK_int_i_1_n_0
    );
\D_L_O_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => D_L_O_int_0,
      D => from_datapath(1),
      Q => D_L_O_int(1),
      R => BCLK_int_i_1_n_0
    );
\D_L_O_int_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => D_L_O_int_0,
      D => from_datapath(20),
      Q => D_L_O_int(20),
      R => BCLK_int_i_1_n_0
    );
\D_L_O_int_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => D_L_O_int_0,
      D => from_datapath(21),
      Q => D_L_O_int(21),
      R => BCLK_int_i_1_n_0
    );
\D_L_O_int_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => D_L_O_int_0,
      D => from_datapath(22),
      Q => D_L_O_int(22),
      R => BCLK_int_i_1_n_0
    );
\D_L_O_int_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => D_L_O_int_0,
      D => from_datapath(23),
      Q => D_L_O_int(23),
      R => BCLK_int_i_1_n_0
    );
\D_L_O_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => D_L_O_int_0,
      D => from_datapath(2),
      Q => D_L_O_int(2),
      R => BCLK_int_i_1_n_0
    );
\D_L_O_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => D_L_O_int_0,
      D => from_datapath(3),
      Q => D_L_O_int(3),
      R => BCLK_int_i_1_n_0
    );
\D_L_O_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => D_L_O_int_0,
      D => from_datapath(4),
      Q => D_L_O_int(4),
      R => BCLK_int_i_1_n_0
    );
\D_L_O_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => D_L_O_int_0,
      D => from_datapath(5),
      Q => D_L_O_int(5),
      R => BCLK_int_i_1_n_0
    );
\D_L_O_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => D_L_O_int_0,
      D => from_datapath(6),
      Q => D_L_O_int(6),
      R => BCLK_int_i_1_n_0
    );
\D_L_O_int_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => D_L_O_int_0,
      D => from_datapath(7),
      Q => D_L_O_int(7),
      R => BCLK_int_i_1_n_0
    );
\D_L_O_int_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => D_L_O_int_0,
      D => from_datapath(8),
      Q => D_L_O_int(8),
      R => BCLK_int_i_1_n_0
    );
\D_L_O_int_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => D_L_O_int_0,
      D => from_datapath(9),
      Q => D_L_O_int(9),
      R => BCLK_int_i_1_n_0
    );
\D_R_O_int[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \Data_In_int2__3\,
      I1 => BCLK_Fall,
      I2 => \^lrclk_reg_0\,
      O => \D_R_O_int[23]_i_1_n_0\
    );
\D_R_O_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => \D_R_O_int[23]_i_1_n_0\,
      D => from_datapath(0),
      Q => D_R_O_int(0),
      R => BCLK_int_i_1_n_0
    );
\D_R_O_int_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => \D_R_O_int[23]_i_1_n_0\,
      D => from_datapath(10),
      Q => D_R_O_int(10),
      R => BCLK_int_i_1_n_0
    );
\D_R_O_int_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => \D_R_O_int[23]_i_1_n_0\,
      D => from_datapath(11),
      Q => D_R_O_int(11),
      R => BCLK_int_i_1_n_0
    );
\D_R_O_int_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => \D_R_O_int[23]_i_1_n_0\,
      D => from_datapath(12),
      Q => D_R_O_int(12),
      R => BCLK_int_i_1_n_0
    );
\D_R_O_int_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => \D_R_O_int[23]_i_1_n_0\,
      D => from_datapath(13),
      Q => D_R_O_int(13),
      R => BCLK_int_i_1_n_0
    );
\D_R_O_int_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => \D_R_O_int[23]_i_1_n_0\,
      D => from_datapath(14),
      Q => D_R_O_int(14),
      R => BCLK_int_i_1_n_0
    );
\D_R_O_int_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => \D_R_O_int[23]_i_1_n_0\,
      D => from_datapath(15),
      Q => D_R_O_int(15),
      R => BCLK_int_i_1_n_0
    );
\D_R_O_int_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => \D_R_O_int[23]_i_1_n_0\,
      D => from_datapath(16),
      Q => D_R_O_int(16),
      R => BCLK_int_i_1_n_0
    );
\D_R_O_int_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => \D_R_O_int[23]_i_1_n_0\,
      D => from_datapath(17),
      Q => D_R_O_int(17),
      R => BCLK_int_i_1_n_0
    );
\D_R_O_int_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => \D_R_O_int[23]_i_1_n_0\,
      D => from_datapath(18),
      Q => D_R_O_int(18),
      R => BCLK_int_i_1_n_0
    );
\D_R_O_int_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => \D_R_O_int[23]_i_1_n_0\,
      D => from_datapath(19),
      Q => D_R_O_int(19),
      R => BCLK_int_i_1_n_0
    );
\D_R_O_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => \D_R_O_int[23]_i_1_n_0\,
      D => from_datapath(1),
      Q => D_R_O_int(1),
      R => BCLK_int_i_1_n_0
    );
\D_R_O_int_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => \D_R_O_int[23]_i_1_n_0\,
      D => from_datapath(20),
      Q => D_R_O_int(20),
      R => BCLK_int_i_1_n_0
    );
\D_R_O_int_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => \D_R_O_int[23]_i_1_n_0\,
      D => from_datapath(21),
      Q => D_R_O_int(21),
      R => BCLK_int_i_1_n_0
    );
\D_R_O_int_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => \D_R_O_int[23]_i_1_n_0\,
      D => from_datapath(22),
      Q => D_R_O_int(22),
      R => BCLK_int_i_1_n_0
    );
\D_R_O_int_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => \D_R_O_int[23]_i_1_n_0\,
      D => from_datapath(23),
      Q => D_R_O_int(23),
      R => BCLK_int_i_1_n_0
    );
\D_R_O_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => \D_R_O_int[23]_i_1_n_0\,
      D => from_datapath(2),
      Q => D_R_O_int(2),
      R => BCLK_int_i_1_n_0
    );
\D_R_O_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => \D_R_O_int[23]_i_1_n_0\,
      D => from_datapath(3),
      Q => D_R_O_int(3),
      R => BCLK_int_i_1_n_0
    );
\D_R_O_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => \D_R_O_int[23]_i_1_n_0\,
      D => from_datapath(4),
      Q => D_R_O_int(4),
      R => BCLK_int_i_1_n_0
    );
\D_R_O_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => \D_R_O_int[23]_i_1_n_0\,
      D => from_datapath(5),
      Q => D_R_O_int(5),
      R => BCLK_int_i_1_n_0
    );
\D_R_O_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => \D_R_O_int[23]_i_1_n_0\,
      D => from_datapath(6),
      Q => D_R_O_int(6),
      R => BCLK_int_i_1_n_0
    );
\D_R_O_int_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => \D_R_O_int[23]_i_1_n_0\,
      D => from_datapath(7),
      Q => D_R_O_int(7),
      R => BCLK_int_i_1_n_0
    );
\D_R_O_int_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => \D_R_O_int[23]_i_1_n_0\,
      D => from_datapath(8),
      Q => D_R_O_int(8),
      R => BCLK_int_i_1_n_0
    );
\D_R_O_int_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => \D_R_O_int[23]_i_1_n_0\,
      D => from_datapath(9),
      Q => D_R_O_int(9),
      R => BCLK_int_i_1_n_0
    );
\Data_In_int[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Data_Out_int[23]_i_4_n_0\,
      I1 => \^bclk_int_reg_0\,
      O => Data_In_int
    );
\Data_In_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => Data_In_int,
      D => SDATA_I,
      Q => \^to_datapath\(0),
      R => BCLK_int_i_1_n_0
    );
\Data_In_int_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => Data_In_int,
      D => \^to_datapath\(9),
      Q => \^to_datapath\(10),
      R => BCLK_int_i_1_n_0
    );
\Data_In_int_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => Data_In_int,
      D => \^to_datapath\(10),
      Q => \^to_datapath\(11),
      R => BCLK_int_i_1_n_0
    );
\Data_In_int_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => Data_In_int,
      D => \^to_datapath\(11),
      Q => \^to_datapath\(12),
      R => BCLK_int_i_1_n_0
    );
\Data_In_int_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => Data_In_int,
      D => \^to_datapath\(12),
      Q => \^to_datapath\(13),
      R => BCLK_int_i_1_n_0
    );
\Data_In_int_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => Data_In_int,
      D => \^to_datapath\(13),
      Q => \^to_datapath\(14),
      R => BCLK_int_i_1_n_0
    );
\Data_In_int_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => Data_In_int,
      D => \^to_datapath\(14),
      Q => \^to_datapath\(15),
      R => BCLK_int_i_1_n_0
    );
\Data_In_int_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => Data_In_int,
      D => \^to_datapath\(15),
      Q => \^to_datapath\(16),
      R => BCLK_int_i_1_n_0
    );
\Data_In_int_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => Data_In_int,
      D => \^to_datapath\(16),
      Q => \^to_datapath\(17),
      R => BCLK_int_i_1_n_0
    );
\Data_In_int_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => Data_In_int,
      D => \^to_datapath\(17),
      Q => \^to_datapath\(18),
      R => BCLK_int_i_1_n_0
    );
\Data_In_int_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => Data_In_int,
      D => \^to_datapath\(18),
      Q => \^to_datapath\(19),
      R => BCLK_int_i_1_n_0
    );
\Data_In_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => Data_In_int,
      D => \^to_datapath\(0),
      Q => \^to_datapath\(1),
      R => BCLK_int_i_1_n_0
    );
\Data_In_int_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => Data_In_int,
      D => \^to_datapath\(19),
      Q => \^to_datapath\(20),
      R => BCLK_int_i_1_n_0
    );
\Data_In_int_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => Data_In_int,
      D => \^to_datapath\(20),
      Q => \^to_datapath\(21),
      R => BCLK_int_i_1_n_0
    );
\Data_In_int_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => Data_In_int,
      D => \^to_datapath\(21),
      Q => \^to_datapath\(22),
      R => BCLK_int_i_1_n_0
    );
\Data_In_int_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => Data_In_int,
      D => \^to_datapath\(22),
      Q => \^to_datapath\(23),
      R => BCLK_int_i_1_n_0
    );
\Data_In_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => Data_In_int,
      D => \^to_datapath\(1),
      Q => \^to_datapath\(2),
      R => BCLK_int_i_1_n_0
    );
\Data_In_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => Data_In_int,
      D => \^to_datapath\(2),
      Q => \^to_datapath\(3),
      R => BCLK_int_i_1_n_0
    );
\Data_In_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => Data_In_int,
      D => \^to_datapath\(3),
      Q => \^to_datapath\(4),
      R => BCLK_int_i_1_n_0
    );
\Data_In_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => Data_In_int,
      D => \^to_datapath\(4),
      Q => \^to_datapath\(5),
      R => BCLK_int_i_1_n_0
    );
\Data_In_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => Data_In_int,
      D => \^to_datapath\(5),
      Q => \^to_datapath\(6),
      R => BCLK_int_i_1_n_0
    );
\Data_In_int_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => Data_In_int,
      D => \^to_datapath\(6),
      Q => \^to_datapath\(7),
      R => BCLK_int_i_1_n_0
    );
\Data_In_int_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => Data_In_int,
      D => \^to_datapath\(7),
      Q => \^to_datapath\(8),
      R => BCLK_int_i_1_n_0
    );
\Data_In_int_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => Data_In_int,
      D => \^to_datapath\(8),
      Q => \^to_datapath\(9),
      R => BCLK_int_i_1_n_0
    );
\Data_Out_int[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A0A0C0A0A0A0"
    )
        port map (
      I0 => \Data_Out_int_reg_n_0_[0]\,
      I1 => \Data_Out_int[0]_i_2_n_0\,
      I2 => resetn,
      I3 => \Data_In_int2__3\,
      I4 => \Data_Out_int[23]_i_4_n_0\,
      I5 => \^bclk_int_reg_0\,
      O => \Data_Out_int[0]_i_1_n_0\
    );
\Data_Out_int[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D_R_O_int(0),
      I1 => \^lrclk_reg_0\,
      I2 => D_L_O_int(0),
      O => \Data_Out_int[0]_i_2_n_0\
    );
\Data_Out_int[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => D_R_O_int(10),
      I1 => \^lrclk_reg_0\,
      I2 => D_L_O_int(10),
      I3 => \BCLK_Rise__0\,
      I4 => \Data_In_int2__3\,
      I5 => \Data_Out_int_reg_n_0_[9]\,
      O => \Data_Out_int[10]_i_1_n_0\
    );
\Data_Out_int[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => D_R_O_int(11),
      I1 => \^lrclk_reg_0\,
      I2 => D_L_O_int(11),
      I3 => \BCLK_Rise__0\,
      I4 => \Data_In_int2__3\,
      I5 => \Data_Out_int_reg_n_0_[10]\,
      O => \Data_Out_int[11]_i_1_n_0\
    );
\Data_Out_int[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => D_R_O_int(12),
      I1 => \^lrclk_reg_0\,
      I2 => D_L_O_int(12),
      I3 => \BCLK_Rise__0\,
      I4 => \Data_In_int2__3\,
      I5 => \Data_Out_int_reg_n_0_[11]\,
      O => \Data_Out_int[12]_i_1_n_0\
    );
\Data_Out_int[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => D_R_O_int(13),
      I1 => \^lrclk_reg_0\,
      I2 => D_L_O_int(13),
      I3 => \BCLK_Rise__0\,
      I4 => \Data_In_int2__3\,
      I5 => \Data_Out_int_reg_n_0_[12]\,
      O => \Data_Out_int[13]_i_1_n_0\
    );
\Data_Out_int[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => D_R_O_int(14),
      I1 => \^lrclk_reg_0\,
      I2 => D_L_O_int(14),
      I3 => \BCLK_Rise__0\,
      I4 => \Data_In_int2__3\,
      I5 => \Data_Out_int_reg_n_0_[13]\,
      O => \Data_Out_int[14]_i_1_n_0\
    );
\Data_Out_int[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => D_R_O_int(15),
      I1 => \^lrclk_reg_0\,
      I2 => D_L_O_int(15),
      I3 => \BCLK_Rise__0\,
      I4 => \Data_In_int2__3\,
      I5 => \Data_Out_int_reg_n_0_[14]\,
      O => \Data_Out_int[15]_i_1_n_0\
    );
\Data_Out_int[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => D_R_O_int(16),
      I1 => \^lrclk_reg_0\,
      I2 => D_L_O_int(16),
      I3 => \BCLK_Rise__0\,
      I4 => \Data_In_int2__3\,
      I5 => \Data_Out_int_reg_n_0_[15]\,
      O => \Data_Out_int[16]_i_1_n_0\
    );
\Data_Out_int[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => D_R_O_int(17),
      I1 => \^lrclk_reg_0\,
      I2 => D_L_O_int(17),
      I3 => \BCLK_Rise__0\,
      I4 => \Data_In_int2__3\,
      I5 => \Data_Out_int_reg_n_0_[16]\,
      O => \Data_Out_int[17]_i_1_n_0\
    );
\Data_Out_int[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => D_R_O_int(18),
      I1 => \^lrclk_reg_0\,
      I2 => D_L_O_int(18),
      I3 => \BCLK_Rise__0\,
      I4 => \Data_In_int2__3\,
      I5 => \Data_Out_int_reg_n_0_[17]\,
      O => \Data_Out_int[18]_i_1_n_0\
    );
\Data_Out_int[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => D_R_O_int(19),
      I1 => \^lrclk_reg_0\,
      I2 => D_L_O_int(19),
      I3 => \BCLK_Rise__0\,
      I4 => \Data_In_int2__3\,
      I5 => \Data_Out_int_reg_n_0_[18]\,
      O => \Data_Out_int[19]_i_1_n_0\
    );
\Data_Out_int[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => D_R_O_int(1),
      I1 => \^lrclk_reg_0\,
      I2 => D_L_O_int(1),
      I3 => \BCLK_Rise__0\,
      I4 => \Data_In_int2__3\,
      I5 => \Data_Out_int_reg_n_0_[0]\,
      O => \Data_Out_int[1]_i_1_n_0\
    );
\Data_Out_int[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => D_R_O_int(20),
      I1 => \^lrclk_reg_0\,
      I2 => D_L_O_int(20),
      I3 => \BCLK_Rise__0\,
      I4 => \Data_In_int2__3\,
      I5 => \Data_Out_int_reg_n_0_[19]\,
      O => \Data_Out_int[20]_i_1_n_0\
    );
\Data_Out_int[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => D_R_O_int(21),
      I1 => \^lrclk_reg_0\,
      I2 => D_L_O_int(21),
      I3 => \BCLK_Rise__0\,
      I4 => \Data_In_int2__3\,
      I5 => \Data_Out_int_reg_n_0_[20]\,
      O => \Data_Out_int[21]_i_1_n_0\
    );
\Data_Out_int[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => D_R_O_int(22),
      I1 => \^lrclk_reg_0\,
      I2 => D_L_O_int(22),
      I3 => \BCLK_Rise__0\,
      I4 => \Data_In_int2__3\,
      I5 => \Data_Out_int_reg_n_0_[21]\,
      O => \Data_Out_int[22]_i_1_n_0\
    );
\Data_Out_int[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \Data_In_int2__3\,
      I1 => \^bclk_int_reg_0\,
      I2 => \Data_Out_int[23]_i_4_n_0\,
      O => Data_Out_int(23)
    );
\Data_Out_int[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => D_R_O_int(23),
      I1 => \^lrclk_reg_0\,
      I2 => D_L_O_int(23),
      I3 => \BCLK_Rise__0\,
      I4 => \Data_In_int2__3\,
      I5 => \Data_Out_int_reg_n_0_[22]\,
      O => \Data_Out_int[23]_i_2_n_0\
    );
\Data_Out_int[23]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => Cnt_Lrclk(3),
      I1 => Cnt_Lrclk(4),
      I2 => Cnt_Lrclk(0),
      I3 => Cnt_Lrclk(1),
      I4 => Cnt_Lrclk(2),
      O => \Data_In_int2__3\
    );
\Data_Out_int[23]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => Cnt_Bclk(0),
      I1 => Cnt_Bclk(2),
      I2 => Cnt_Bclk(1),
      I3 => Cnt_Bclk(4),
      I4 => Cnt_Bclk(3),
      O => \Data_Out_int[23]_i_4_n_0\
    );
\Data_Out_int[23]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => Cnt_Bclk(3),
      I1 => Cnt_Bclk(4),
      I2 => Cnt_Bclk(1),
      I3 => Cnt_Bclk(2),
      I4 => Cnt_Bclk(0),
      I5 => \^bclk_int_reg_0\,
      O => \BCLK_Rise__0\
    );
\Data_Out_int[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => D_R_O_int(2),
      I1 => \^lrclk_reg_0\,
      I2 => D_L_O_int(2),
      I3 => \BCLK_Rise__0\,
      I4 => \Data_In_int2__3\,
      I5 => \Data_Out_int_reg_n_0_[1]\,
      O => \Data_Out_int[2]_i_1_n_0\
    );
\Data_Out_int[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => D_R_O_int(3),
      I1 => \^lrclk_reg_0\,
      I2 => D_L_O_int(3),
      I3 => \BCLK_Rise__0\,
      I4 => \Data_In_int2__3\,
      I5 => \Data_Out_int_reg_n_0_[2]\,
      O => \Data_Out_int[3]_i_1_n_0\
    );
\Data_Out_int[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => D_R_O_int(4),
      I1 => \^lrclk_reg_0\,
      I2 => D_L_O_int(4),
      I3 => \BCLK_Rise__0\,
      I4 => \Data_In_int2__3\,
      I5 => \Data_Out_int_reg_n_0_[3]\,
      O => \Data_Out_int[4]_i_1_n_0\
    );
\Data_Out_int[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => D_R_O_int(5),
      I1 => \^lrclk_reg_0\,
      I2 => D_L_O_int(5),
      I3 => \BCLK_Rise__0\,
      I4 => \Data_In_int2__3\,
      I5 => \Data_Out_int_reg_n_0_[4]\,
      O => \Data_Out_int[5]_i_1_n_0\
    );
\Data_Out_int[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => D_R_O_int(6),
      I1 => \^lrclk_reg_0\,
      I2 => D_L_O_int(6),
      I3 => \BCLK_Rise__0\,
      I4 => \Data_In_int2__3\,
      I5 => \Data_Out_int_reg_n_0_[5]\,
      O => \Data_Out_int[6]_i_1_n_0\
    );
\Data_Out_int[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => D_R_O_int(7),
      I1 => \^lrclk_reg_0\,
      I2 => D_L_O_int(7),
      I3 => \BCLK_Rise__0\,
      I4 => \Data_In_int2__3\,
      I5 => \Data_Out_int_reg_n_0_[6]\,
      O => \Data_Out_int[7]_i_1_n_0\
    );
\Data_Out_int[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => D_R_O_int(8),
      I1 => \^lrclk_reg_0\,
      I2 => D_L_O_int(8),
      I3 => \BCLK_Rise__0\,
      I4 => \Data_In_int2__3\,
      I5 => \Data_Out_int_reg_n_0_[7]\,
      O => \Data_Out_int[8]_i_1_n_0\
    );
\Data_Out_int[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => D_R_O_int(9),
      I1 => \^lrclk_reg_0\,
      I2 => D_L_O_int(9),
      I3 => \BCLK_Rise__0\,
      I4 => \Data_In_int2__3\,
      I5 => \Data_Out_int_reg_n_0_[8]\,
      O => \Data_Out_int[9]_i_1_n_0\
    );
\Data_Out_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => '1',
      D => \Data_Out_int[0]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[0]\,
      R => '0'
    );
\Data_Out_int_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => Data_Out_int(23),
      D => \Data_Out_int[10]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[10]\,
      R => BCLK_int_i_1_n_0
    );
\Data_Out_int_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => Data_Out_int(23),
      D => \Data_Out_int[11]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[11]\,
      R => BCLK_int_i_1_n_0
    );
\Data_Out_int_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => Data_Out_int(23),
      D => \Data_Out_int[12]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[12]\,
      R => BCLK_int_i_1_n_0
    );
\Data_Out_int_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => Data_Out_int(23),
      D => \Data_Out_int[13]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[13]\,
      R => BCLK_int_i_1_n_0
    );
\Data_Out_int_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => Data_Out_int(23),
      D => \Data_Out_int[14]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[14]\,
      R => BCLK_int_i_1_n_0
    );
\Data_Out_int_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => Data_Out_int(23),
      D => \Data_Out_int[15]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[15]\,
      R => BCLK_int_i_1_n_0
    );
\Data_Out_int_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => Data_Out_int(23),
      D => \Data_Out_int[16]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[16]\,
      R => BCLK_int_i_1_n_0
    );
\Data_Out_int_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => Data_Out_int(23),
      D => \Data_Out_int[17]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[17]\,
      R => BCLK_int_i_1_n_0
    );
\Data_Out_int_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => Data_Out_int(23),
      D => \Data_Out_int[18]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[18]\,
      R => BCLK_int_i_1_n_0
    );
\Data_Out_int_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => Data_Out_int(23),
      D => \Data_Out_int[19]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[19]\,
      R => BCLK_int_i_1_n_0
    );
\Data_Out_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => Data_Out_int(23),
      D => \Data_Out_int[1]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[1]\,
      R => BCLK_int_i_1_n_0
    );
\Data_Out_int_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => Data_Out_int(23),
      D => \Data_Out_int[20]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[20]\,
      R => BCLK_int_i_1_n_0
    );
\Data_Out_int_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => Data_Out_int(23),
      D => \Data_Out_int[21]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[21]\,
      R => BCLK_int_i_1_n_0
    );
\Data_Out_int_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => Data_Out_int(23),
      D => \Data_Out_int[22]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[22]\,
      R => BCLK_int_i_1_n_0
    );
\Data_Out_int_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => Data_Out_int(23),
      D => \Data_Out_int[23]_i_2_n_0\,
      Q => SDATA_O,
      R => BCLK_int_i_1_n_0
    );
\Data_Out_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => Data_Out_int(23),
      D => \Data_Out_int[2]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[2]\,
      R => BCLK_int_i_1_n_0
    );
\Data_Out_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => Data_Out_int(23),
      D => \Data_Out_int[3]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[3]\,
      R => BCLK_int_i_1_n_0
    );
\Data_Out_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => Data_Out_int(23),
      D => \Data_Out_int[4]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[4]\,
      R => BCLK_int_i_1_n_0
    );
\Data_Out_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => Data_Out_int(23),
      D => \Data_Out_int[5]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[5]\,
      R => BCLK_int_i_1_n_0
    );
\Data_Out_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => Data_Out_int(23),
      D => \Data_Out_int[6]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[6]\,
      R => BCLK_int_i_1_n_0
    );
\Data_Out_int_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => Data_Out_int(23),
      D => \Data_Out_int[7]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[7]\,
      R => BCLK_int_i_1_n_0
    );
\Data_Out_int_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => Data_Out_int(23),
      D => \Data_Out_int[8]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[8]\,
      R => BCLK_int_i_1_n_0
    );
\Data_Out_int_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK_12,
      CE => Data_Out_int(23),
      D => \Data_Out_int[9]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[9]\,
      R => BCLK_int_i_1_n_0
    );
LRCLK_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => LRCLK_i_2_n_0,
      I1 => Cnt_Lrclk(3),
      I2 => Cnt_Lrclk(4),
      I3 => BCLK_Fall,
      I4 => \^lrclk_reg_0\,
      O => LRCLK_i_1_n_0
    );
LRCLK_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Cnt_Lrclk(2),
      I1 => Cnt_Lrclk(1),
      I2 => Cnt_Lrclk(0),
      O => LRCLK_i_2_n_0
    );
LRCLK_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_12,
      CE => '1',
      D => LRCLK_i_1_n_0,
      Q => \^lrclk_reg_0\,
      R => BCLK_int_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity audio_vocoder_i2s_rx_tx_0_1_oddr_v1_0_0_oddr is
  port (
    clk_out : out STD_LOGIC;
    clk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of audio_vocoder_i2s_rx_tx_0_1_oddr_v1_0_0_oddr : entity is "oddr_v1_0_0_oddr";
end audio_vocoder_i2s_rx_tx_0_1_oddr_v1_0_0_oddr;

architecture STRUCTURE of audio_vocoder_i2s_rx_tx_0_1_oddr_v1_0_0_oddr is
  signal NLW_ODDR_inst_R_UNCONNECTED : STD_LOGIC;
  signal NLW_ODDR_inst_S_UNCONNECTED : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of ODDR_inst : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of ODDR_inst : label is "MLO ";
  attribute \__SRVAL\ : string;
  attribute \__SRVAL\ of ODDR_inst : label is "TRUE";
begin
ODDR_inst: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => clk_in,
      CE => '1',
      D1 => '1',
      D2 => '0',
      Q => clk_out,
      R => NLW_ODDR_inst_R_UNCONNECTED,
      S => NLW_ODDR_inst_S_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity audio_vocoder_i2s_rx_tx_0_1_oddr_0 is
  port (
    clk_in : in STD_LOGIC;
    clk_out : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of audio_vocoder_i2s_rx_tx_0_1_oddr_0 : entity is "oddr_0,oddr_v1_0_0_oddr,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of audio_vocoder_i2s_rx_tx_0_1_oddr_0 : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of audio_vocoder_i2s_rx_tx_0_1_oddr_0 : entity is "oddr_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of audio_vocoder_i2s_rx_tx_0_1_oddr_0 : entity is "oddr_v1_0_0_oddr,Vivado 2018.3.1";
end audio_vocoder_i2s_rx_tx_0_1_oddr_0;

architecture STRUCTURE of audio_vocoder_i2s_rx_tx_0_1_oddr_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_in : signal is "xilinx.com:signal:clock:1.0 clk_in CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_in : signal is "XIL_INTERFACENAME clk_in, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of clk_out : signal is "xilinx.com:signal:clock:1.0 clk_out CLK";
  attribute X_INTERFACE_PARAMETER of clk_out : signal is "XIL_INTERFACENAME clk_out, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
begin
inst: entity work.audio_vocoder_i2s_rx_tx_0_1_oddr_v1_0_0_oddr
     port map (
      clk_in => clk_in,
      clk_out => clk_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity audio_vocoder_i2s_rx_tx_0_1_i2s_rx_tx is
  port (
    LRCLK_reg : out STD_LOGIC;
    SDATA_O : out STD_LOGIC;
    to_datapath : out STD_LOGIC_VECTOR ( 23 downto 0 );
    BCLK_int_reg : out STD_LOGIC;
    MCLK_O : out STD_LOGIC;
    CLK_12 : in STD_LOGIC;
    from_datapath : in STD_LOGIC_VECTOR ( 23 downto 0 );
    SDATA_I : in STD_LOGIC;
    resetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of audio_vocoder_i2s_rx_tx_0_1_i2s_rx_tx : entity is "i2s_rx_tx";
end audio_vocoder_i2s_rx_tx_0_1_i2s_rx_tx;

architecture STRUCTURE of audio_vocoder_i2s_rx_tx_0_1_i2s_rx_tx is
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ODDR_inst : label is "oddr_0,oddr_v1_0_0_oddr,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ODDR_inst : label is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ODDR_inst : label is "oddr_v1_0_0_oddr,Vivado 2018.3.1";
begin
Inst_I2s: entity work.audio_vocoder_i2s_rx_tx_0_1_i2s_ctl
     port map (
      BCLK_int_reg_0 => BCLK_int_reg,
      CLK_12 => CLK_12,
      LRCLK_reg_0 => LRCLK_reg,
      SDATA_I => SDATA_I,
      SDATA_O => SDATA_O,
      from_datapath(23 downto 0) => from_datapath(23 downto 0),
      resetn => resetn,
      to_datapath(23 downto 0) => to_datapath(23 downto 0)
    );
ODDR_inst: entity work.audio_vocoder_i2s_rx_tx_0_1_oddr_0
     port map (
      clk_in => CLK_12,
      clk_out => MCLK_O
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity audio_vocoder_i2s_rx_tx_0_1 is
  port (
    CLK_12 : in STD_LOGIC;
    resetn : in STD_LOGIC;
    BCLK_O : out STD_LOGIC;
    LRCLK_O : out STD_LOGIC;
    MCLK_O : out STD_LOGIC;
    SDATA_I : in STD_LOGIC;
    SDATA_O : out STD_LOGIC;
    from_datapath : in STD_LOGIC_VECTOR ( 23 downto 0 );
    to_datapath : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of audio_vocoder_i2s_rx_tx_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of audio_vocoder_i2s_rx_tx_0_1 : entity is "audio_vocoder_i2s_rx_tx_0_1,i2s_rx_tx,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of audio_vocoder_i2s_rx_tx_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of audio_vocoder_i2s_rx_tx_0_1 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of audio_vocoder_i2s_rx_tx_0_1 : entity is "i2s_rx_tx,Vivado 2018.3.1";
end audio_vocoder_i2s_rx_tx_0_1;

architecture STRUCTURE of audio_vocoder_i2s_rx_tx_0_1 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of resetn : signal is "xilinx.com:signal:reset:1.0 resetn RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of resetn : signal is "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.audio_vocoder_i2s_rx_tx_0_1_i2s_rx_tx
     port map (
      BCLK_int_reg => BCLK_O,
      CLK_12 => CLK_12,
      LRCLK_reg => LRCLK_O,
      MCLK_O => MCLK_O,
      SDATA_I => SDATA_I,
      SDATA_O => SDATA_O,
      from_datapath(23 downto 0) => from_datapath(23 downto 0),
      resetn => resetn,
      to_datapath(23 downto 0) => to_datapath(23 downto 0)
    );
end STRUCTURE;
