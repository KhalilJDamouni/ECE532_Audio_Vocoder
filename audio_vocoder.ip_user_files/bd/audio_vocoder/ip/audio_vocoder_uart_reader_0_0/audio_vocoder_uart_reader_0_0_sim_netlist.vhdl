-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
-- Date        : Sat Mar 23 19:34:20 2024
-- Host        : BA3135WS39 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/damounik/March23/final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ip/audio_vocoder_uart_reader_0_0/audio_vocoder_uart_reader_0_0_sim_netlist.vhdl
-- Design      : audio_vocoder_uart_reader_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tsbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity audio_vocoder_uart_reader_0_0_uart_clock is
  port (
    \counter_reg[0]_0\ : out STD_LOGIC;
    CLK100MHZ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of audio_vocoder_uart_reader_0_0_uart_clock : entity is "uart_clock";
end audio_vocoder_uart_reader_0_0_uart_clock;

architecture STRUCTURE of audio_vocoder_uart_reader_0_0_uart_clock is
  signal counter : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \counter0_carry__0_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_n_1\ : STD_LOGIC;
  signal \counter0_carry__0_n_2\ : STD_LOGIC;
  signal \counter0_carry__0_n_3\ : STD_LOGIC;
  signal \counter0_carry__1_n_0\ : STD_LOGIC;
  signal \counter0_carry__1_n_1\ : STD_LOGIC;
  signal \counter0_carry__1_n_2\ : STD_LOGIC;
  signal \counter0_carry__1_n_3\ : STD_LOGIC;
  signal \counter0_carry__2_n_1\ : STD_LOGIC;
  signal \counter0_carry__2_n_2\ : STD_LOGIC;
  signal \counter0_carry__2_n_3\ : STD_LOGIC;
  signal counter0_carry_n_0 : STD_LOGIC;
  signal counter0_carry_n_1 : STD_LOGIC;
  signal counter0_carry_n_2 : STD_LOGIC;
  signal counter0_carry_n_3 : STD_LOGIC;
  signal counter_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^counter_reg[0]_0\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 16 downto 1 );
  signal \value_reg[9]_i_3_n_0\ : STD_LOGIC;
  signal \value_reg[9]_i_4_n_0\ : STD_LOGIC;
  signal \value_reg[9]_i_5_n_0\ : STD_LOGIC;
  signal \value_reg[9]_i_6_n_0\ : STD_LOGIC;
  signal \NLW_counter0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  \counter_reg[0]_0\ <= \^counter_reg[0]_0\;
counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => counter0_carry_n_0,
      CO(2) => counter0_carry_n_1,
      CO(1) => counter0_carry_n_2,
      CO(0) => counter0_carry_n_3,
      CYINIT => counter(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => counter(4 downto 1)
    );
\counter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => counter0_carry_n_0,
      CO(3) => \counter0_carry__0_n_0\,
      CO(2) => \counter0_carry__0_n_1\,
      CO(1) => \counter0_carry__0_n_2\,
      CO(0) => \counter0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => counter(8 downto 5)
    );
\counter0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__0_n_0\,
      CO(3) => \counter0_carry__1_n_0\,
      CO(2) => \counter0_carry__1_n_1\,
      CO(1) => \counter0_carry__1_n_2\,
      CO(0) => \counter0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => counter(12 downto 9)
    );
\counter0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__1_n_0\,
      CO(3) => \NLW_counter0_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \counter0_carry__2_n_1\,
      CO(1) => \counter0_carry__2_n_2\,
      CO(0) => \counter0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => counter(16 downto 13)
    );
\counter[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
        port map (
      I0 => \value_reg[9]_i_3_n_0\,
      I1 => \value_reg[9]_i_4_n_0\,
      I2 => \value_reg[9]_i_5_n_0\,
      I3 => \value_reg[9]_i_6_n_0\,
      I4 => counter(0),
      O => counter_0(0)
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ,
      CE => '1',
      D => counter_0(0),
      Q => counter(0),
      R => '0'
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ,
      CE => '1',
      D => data0(10),
      Q => counter(10),
      R => \^counter_reg[0]_0\
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ,
      CE => '1',
      D => data0(11),
      Q => counter(11),
      R => \^counter_reg[0]_0\
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ,
      CE => '1',
      D => data0(12),
      Q => counter(12),
      R => \^counter_reg[0]_0\
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ,
      CE => '1',
      D => data0(13),
      Q => counter(13),
      R => \^counter_reg[0]_0\
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ,
      CE => '1',
      D => data0(14),
      Q => counter(14),
      R => \^counter_reg[0]_0\
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ,
      CE => '1',
      D => data0(15),
      Q => counter(15),
      R => \^counter_reg[0]_0\
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ,
      CE => '1',
      D => data0(16),
      Q => counter(16),
      R => \^counter_reg[0]_0\
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ,
      CE => '1',
      D => data0(1),
      Q => counter(1),
      R => \^counter_reg[0]_0\
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ,
      CE => '1',
      D => data0(2),
      Q => counter(2),
      R => \^counter_reg[0]_0\
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ,
      CE => '1',
      D => data0(3),
      Q => counter(3),
      R => \^counter_reg[0]_0\
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ,
      CE => '1',
      D => data0(4),
      Q => counter(4),
      R => \^counter_reg[0]_0\
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ,
      CE => '1',
      D => data0(5),
      Q => counter(5),
      R => \^counter_reg[0]_0\
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ,
      CE => '1',
      D => data0(6),
      Q => counter(6),
      R => \^counter_reg[0]_0\
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ,
      CE => '1',
      D => data0(7),
      Q => counter(7),
      R => \^counter_reg[0]_0\
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ,
      CE => '1',
      D => data0(8),
      Q => counter(8),
      R => \^counter_reg[0]_0\
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ,
      CE => '1',
      D => data0(9),
      Q => counter(9),
      R => \^counter_reg[0]_0\
    );
\value_reg[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \value_reg[9]_i_3_n_0\,
      I1 => \value_reg[9]_i_4_n_0\,
      I2 => \value_reg[9]_i_5_n_0\,
      I3 => \value_reg[9]_i_6_n_0\,
      I4 => counter(0),
      O => \^counter_reg[0]_0\
    );
\value_reg[9]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => counter(9),
      I1 => counter(10),
      I2 => counter(12),
      I3 => counter(11),
      O => \value_reg[9]_i_3_n_0\
    );
\value_reg[9]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter(14),
      I1 => counter(13),
      I2 => counter(16),
      I3 => counter(15),
      O => \value_reg[9]_i_4_n_0\
    );
\value_reg[9]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => counter(2),
      I1 => counter(1),
      I2 => counter(4),
      I3 => counter(3),
      O => \value_reg[9]_i_5_n_0\
    );
\value_reg[9]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => counter(6),
      I1 => counter(5),
      I2 => counter(8),
      I3 => counter(7),
      O => \value_reg[9]_i_6_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity audio_vocoder_uart_reader_0_0_uart_reader is
  port (
    value : out STD_LOGIC_VECTOR ( 9 downto 0 );
    number_wire : out STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK100MHZ : in STD_LOGIC;
    RX : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of audio_vocoder_uart_reader_0_0_uart_reader : entity is "uart_reader";
end audio_vocoder_uart_reader_0_0_uart_reader;

architecture STRUCTURE of audio_vocoder_uart_reader_0_0_uart_reader is
  signal counter_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \number[3]_i_2_n_0\ : STD_LOGIC;
  signal \number_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \number_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \number_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \number_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \number_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \number_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \number_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \number_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \number_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \number_reg[7]_i_2_n_2\ : STD_LOGIC;
  signal \number_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal \number_reg[7]_i_2_n_4\ : STD_LOGIC;
  signal \number_reg[7]_i_2_n_5\ : STD_LOGIC;
  signal \number_reg[7]_i_2_n_6\ : STD_LOGIC;
  signal \number_reg[7]_i_2_n_7\ : STD_LOGIC;
  signal \^number_wire\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sel : STD_LOGIC;
  signal uart_block_mod_n_0 : STD_LOGIC;
  signal \^value\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \value_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \NLW_number_reg[7]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter[3]_i_1\ : label is "soft_lutpair0";
begin
  number_wire(7 downto 0) <= \^number_wire\(7 downto 0);
  value(9 downto 0) <= \^value\(9 downto 0);
\counter[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55545557"
    )
        port map (
      I0 => \counter_reg_n_0_[0]\,
      I1 => \counter_reg_n_0_[3]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[1]\,
      I4 => RX,
      O => counter_0(0)
    );
\counter[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9998"
    )
        port map (
      I0 => \counter_reg_n_0_[0]\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[3]\,
      O => counter_0(1)
    );
\counter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E1E0"
    )
        port map (
      I0 => \counter_reg_n_0_[1]\,
      I1 => \counter_reg_n_0_[0]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[3]\,
      O => counter_0(2)
    );
\counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F0A3"
    )
        port map (
      I0 => \counter_reg_n_0_[0]\,
      I1 => RX,
      I2 => \counter_reg_n_0_[3]\,
      I3 => \counter_reg_n_0_[2]\,
      I4 => \counter_reg_n_0_[1]\,
      O => counter_0(3)
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => uart_block_mod_n_0,
      CE => '1',
      D => counter_0(0),
      Q => \counter_reg_n_0_[0]\,
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => uart_block_mod_n_0,
      CE => '1',
      D => counter_0(1),
      Q => \counter_reg_n_0_[1]\,
      R => '0'
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => uart_block_mod_n_0,
      CE => '1',
      D => counter_0(2),
      Q => \counter_reg_n_0_[2]\,
      R => '0'
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => uart_block_mod_n_0,
      CE => '1',
      D => counter_0(3),
      Q => \counter_reg_n_0_[3]\,
      R => '0'
    );
\number[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^number_wire\(0),
      O => \number[3]_i_2_n_0\
    );
\number[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \counter_reg_n_0_[1]\,
      I1 => \counter_reg_n_0_[2]\,
      I2 => \counter_reg_n_0_[3]\,
      I3 => RX,
      O => sel
    );
\number_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => uart_block_mod_n_0,
      CE => sel,
      D => \number_reg[3]_i_1_n_7\,
      Q => \^number_wire\(0),
      R => '0'
    );
\number_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => uart_block_mod_n_0,
      CE => sel,
      D => \number_reg[3]_i_1_n_6\,
      Q => \^number_wire\(1),
      R => '0'
    );
\number_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => uart_block_mod_n_0,
      CE => sel,
      D => \number_reg[3]_i_1_n_5\,
      Q => \^number_wire\(2),
      R => '0'
    );
\number_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => uart_block_mod_n_0,
      CE => sel,
      D => \number_reg[3]_i_1_n_4\,
      Q => \^number_wire\(3),
      R => '0'
    );
\number_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \number_reg[3]_i_1_n_0\,
      CO(2) => \number_reg[3]_i_1_n_1\,
      CO(1) => \number_reg[3]_i_1_n_2\,
      CO(0) => \number_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \number_reg[3]_i_1_n_4\,
      O(2) => \number_reg[3]_i_1_n_5\,
      O(1) => \number_reg[3]_i_1_n_6\,
      O(0) => \number_reg[3]_i_1_n_7\,
      S(3 downto 1) => \^number_wire\(3 downto 1),
      S(0) => \number[3]_i_2_n_0\
    );
\number_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => uart_block_mod_n_0,
      CE => sel,
      D => \number_reg[7]_i_2_n_7\,
      Q => \^number_wire\(4),
      R => '0'
    );
\number_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => uart_block_mod_n_0,
      CE => sel,
      D => \number_reg[7]_i_2_n_6\,
      Q => \^number_wire\(5),
      R => '0'
    );
\number_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => uart_block_mod_n_0,
      CE => sel,
      D => \number_reg[7]_i_2_n_5\,
      Q => \^number_wire\(6),
      R => '0'
    );
\number_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => uart_block_mod_n_0,
      CE => sel,
      D => \number_reg[7]_i_2_n_4\,
      Q => \^number_wire\(7),
      R => '0'
    );
\number_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \number_reg[3]_i_1_n_0\,
      CO(3) => \NLW_number_reg[7]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \number_reg[7]_i_2_n_1\,
      CO(1) => \number_reg[7]_i_2_n_2\,
      CO(0) => \number_reg[7]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \number_reg[7]_i_2_n_4\,
      O(2) => \number_reg[7]_i_2_n_5\,
      O(1) => \number_reg[7]_i_2_n_6\,
      O(0) => \number_reg[7]_i_2_n_7\,
      S(3 downto 0) => \^number_wire\(7 downto 4)
    );
uart_block_mod: entity work.audio_vocoder_uart_reader_0_0_uart_clock
     port map (
      CLK100MHZ => CLK100MHZ,
      \counter_reg[0]_0\ => uart_block_mod_n_0
    );
\value_reg[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \counter_reg_n_0_[1]\,
      I1 => \counter_reg_n_0_[0]\,
      I2 => \counter_reg_n_0_[3]\,
      I3 => \counter_reg_n_0_[2]\,
      O => \value_reg[9]_i_1_n_0\
    );
\value_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => uart_block_mod_n_0,
      CE => \value_reg[9]_i_1_n_0\,
      D => RX,
      Q => \^value\(0),
      R => '0'
    );
\value_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => uart_block_mod_n_0,
      CE => \value_reg[9]_i_1_n_0\,
      D => \^value\(0),
      Q => \^value\(1),
      R => '0'
    );
\value_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => uart_block_mod_n_0,
      CE => \value_reg[9]_i_1_n_0\,
      D => \^value\(1),
      Q => \^value\(2),
      R => '0'
    );
\value_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => uart_block_mod_n_0,
      CE => \value_reg[9]_i_1_n_0\,
      D => \^value\(2),
      Q => \^value\(3),
      R => '0'
    );
\value_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => uart_block_mod_n_0,
      CE => \value_reg[9]_i_1_n_0\,
      D => \^value\(3),
      Q => \^value\(4),
      R => '0'
    );
\value_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => uart_block_mod_n_0,
      CE => \value_reg[9]_i_1_n_0\,
      D => \^value\(4),
      Q => \^value\(5),
      R => '0'
    );
\value_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => uart_block_mod_n_0,
      CE => \value_reg[9]_i_1_n_0\,
      D => \^value\(5),
      Q => \^value\(6),
      R => '0'
    );
\value_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => uart_block_mod_n_0,
      CE => \value_reg[9]_i_1_n_0\,
      D => \^value\(6),
      Q => \^value\(7),
      R => '0'
    );
\value_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => uart_block_mod_n_0,
      CE => \value_reg[9]_i_1_n_0\,
      D => \^value\(7),
      Q => \^value\(8),
      R => '0'
    );
\value_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => uart_block_mod_n_0,
      CE => \value_reg[9]_i_1_n_0\,
      D => \^value\(8),
      Q => \^value\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity audio_vocoder_uart_reader_0_0 is
  port (
    RX : in STD_LOGIC;
    CLK100MHZ : in STD_LOGIC;
    value : out STD_LOGIC_VECTOR ( 9 downto 0 );
    number_wire : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of audio_vocoder_uart_reader_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of audio_vocoder_uart_reader_0_0 : entity is "audio_vocoder_uart_reader_0_0,uart_reader,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of audio_vocoder_uart_reader_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of audio_vocoder_uart_reader_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of audio_vocoder_uart_reader_0_0 : entity is "uart_reader,Vivado 2018.3.1";
end audio_vocoder_uart_reader_0_0;

architecture STRUCTURE of audio_vocoder_uart_reader_0_0 is
begin
inst: entity work.audio_vocoder_uart_reader_0_0_uart_reader
     port map (
      CLK100MHZ => CLK100MHZ,
      RX => RX,
      number_wire(7 downto 0) => number_wire(7 downto 0),
      value(9 downto 0) => value(9 downto 0)
    );
end STRUCTURE;
