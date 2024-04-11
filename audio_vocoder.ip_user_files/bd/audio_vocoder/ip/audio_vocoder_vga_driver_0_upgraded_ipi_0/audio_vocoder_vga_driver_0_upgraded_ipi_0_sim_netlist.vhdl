-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
-- Date        : Sat Mar 23 19:34:20 2024
-- Host        : BA3135WS39 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/damounik/March23/final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ip/audio_vocoder_vga_driver_0_upgraded_ipi_0/audio_vocoder_vga_driver_0_upgraded_ipi_0_sim_netlist.vhdl
-- Design      : audio_vocoder_vga_driver_0_upgraded_ipi_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tsbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity audio_vocoder_vga_driver_0_upgraded_ipi_0_address_driver is
  port (
    BRAM_PORTB_0_addr : out STD_LOGIC_VECTOR ( 21 downto 0 );
    horizontal_counter : in STD_LOGIC_VECTOR ( 6 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    address_reg1 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \address_reg_reg[12]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \address_reg_reg[12]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \address_reg_reg[20]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of audio_vocoder_vga_driver_0_upgraded_ipi_0_address_driver : entity is "address_driver";
end audio_vocoder_vga_driver_0_upgraded_ipi_0_address_driver;

architecture STRUCTURE of audio_vocoder_vga_driver_0_upgraded_ipi_0_address_driver is
  signal \address_reg0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \address_reg0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \address_reg0_carry__0_n_0\ : STD_LOGIC;
  signal \address_reg0_carry__0_n_1\ : STD_LOGIC;
  signal \address_reg0_carry__0_n_2\ : STD_LOGIC;
  signal \address_reg0_carry__0_n_3\ : STD_LOGIC;
  signal \address_reg0_carry__0_n_4\ : STD_LOGIC;
  signal \address_reg0_carry__0_n_5\ : STD_LOGIC;
  signal \address_reg0_carry__0_n_6\ : STD_LOGIC;
  signal \address_reg0_carry__0_n_7\ : STD_LOGIC;
  signal \address_reg0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \address_reg0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \address_reg0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \address_reg0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \address_reg0_carry__1_n_0\ : STD_LOGIC;
  signal \address_reg0_carry__1_n_1\ : STD_LOGIC;
  signal \address_reg0_carry__1_n_2\ : STD_LOGIC;
  signal \address_reg0_carry__1_n_3\ : STD_LOGIC;
  signal \address_reg0_carry__1_n_4\ : STD_LOGIC;
  signal \address_reg0_carry__1_n_5\ : STD_LOGIC;
  signal \address_reg0_carry__1_n_6\ : STD_LOGIC;
  signal \address_reg0_carry__1_n_7\ : STD_LOGIC;
  signal \address_reg0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \address_reg0_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \address_reg0_carry__2_n_0\ : STD_LOGIC;
  signal \address_reg0_carry__2_n_1\ : STD_LOGIC;
  signal \address_reg0_carry__2_n_2\ : STD_LOGIC;
  signal \address_reg0_carry__2_n_3\ : STD_LOGIC;
  signal \address_reg0_carry__2_n_4\ : STD_LOGIC;
  signal \address_reg0_carry__2_n_5\ : STD_LOGIC;
  signal \address_reg0_carry__2_n_6\ : STD_LOGIC;
  signal \address_reg0_carry__2_n_7\ : STD_LOGIC;
  signal \address_reg0_carry__3_n_7\ : STD_LOGIC;
  signal address_reg0_carry_n_0 : STD_LOGIC;
  signal address_reg0_carry_n_1 : STD_LOGIC;
  signal address_reg0_carry_n_2 : STD_LOGIC;
  signal address_reg0_carry_n_3 : STD_LOGIC;
  signal address_reg0_carry_n_4 : STD_LOGIC;
  signal address_reg0_carry_n_5 : STD_LOGIC;
  signal address_reg0_carry_n_6 : STD_LOGIC;
  signal address_reg0_carry_n_7 : STD_LOGIC;
  signal \NLW_address_reg0_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_address_reg0_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
begin
address_reg0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => address_reg0_carry_n_0,
      CO(2) => address_reg0_carry_n_1,
      CO(1) => address_reg0_carry_n_2,
      CO(0) => address_reg0_carry_n_3,
      CYINIT => horizontal_counter(4),
      DI(3) => DI(1),
      DI(2 downto 1) => horizontal_counter(6 downto 5),
      DI(0) => DI(0),
      O(3) => address_reg0_carry_n_4,
      O(2) => address_reg0_carry_n_5,
      O(1) => address_reg0_carry_n_6,
      O(0) => address_reg0_carry_n_7,
      S(3 downto 0) => S(3 downto 0)
    );
\address_reg0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => address_reg0_carry_n_0,
      CO(3) => \address_reg0_carry__0_n_0\,
      CO(2) => \address_reg0_carry__0_n_1\,
      CO(1) => \address_reg0_carry__0_n_2\,
      CO(0) => \address_reg0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => address_reg1(1 downto 0),
      DI(1 downto 0) => \address_reg_reg[12]_0\(1 downto 0),
      O(3) => \address_reg0_carry__0_n_4\,
      O(2) => \address_reg0_carry__0_n_5\,
      O(1) => \address_reg0_carry__0_n_6\,
      O(0) => \address_reg0_carry__0_n_7\,
      S(3) => \address_reg0_carry__0_i_4_n_0\,
      S(2) => \address_reg0_carry__0_i_5_n_0\,
      S(1 downto 0) => \address_reg_reg[12]_1\(1 downto 0)
    );
\address_reg0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => address_reg1(1),
      I1 => address_reg1(2),
      O => \address_reg0_carry__0_i_4_n_0\
    );
\address_reg0_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => address_reg1(0),
      I1 => address_reg1(1),
      O => \address_reg0_carry__0_i_5_n_0\
    );
\address_reg0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \address_reg0_carry__0_n_0\,
      CO(3) => \address_reg0_carry__1_n_0\,
      CO(2) => \address_reg0_carry__1_n_1\,
      CO(1) => \address_reg0_carry__1_n_2\,
      CO(0) => \address_reg0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => address_reg1(5 downto 2),
      O(3) => \address_reg0_carry__1_n_4\,
      O(2) => \address_reg0_carry__1_n_5\,
      O(1) => \address_reg0_carry__1_n_6\,
      O(0) => \address_reg0_carry__1_n_7\,
      S(3) => \address_reg0_carry__1_i_2_n_0\,
      S(2) => \address_reg0_carry__1_i_3_n_0\,
      S(1) => \address_reg0_carry__1_i_4_n_0\,
      S(0) => \address_reg0_carry__1_i_5_n_0\
    );
\address_reg0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => address_reg1(5),
      I1 => address_reg1(6),
      O => \address_reg0_carry__1_i_2_n_0\
    );
\address_reg0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => address_reg1(4),
      I1 => address_reg1(5),
      O => \address_reg0_carry__1_i_3_n_0\
    );
\address_reg0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => address_reg1(3),
      I1 => address_reg1(4),
      O => \address_reg0_carry__1_i_4_n_0\
    );
\address_reg0_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => address_reg1(2),
      I1 => address_reg1(3),
      O => \address_reg0_carry__1_i_5_n_0\
    );
\address_reg0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \address_reg0_carry__1_n_0\,
      CO(3) => \address_reg0_carry__2_n_0\,
      CO(2) => \address_reg0_carry__2_n_1\,
      CO(1) => \address_reg0_carry__2_n_2\,
      CO(0) => \address_reg0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => address_reg1(9 downto 6),
      O(3) => \address_reg0_carry__2_n_4\,
      O(2) => \address_reg0_carry__2_n_5\,
      O(1) => \address_reg0_carry__2_n_6\,
      O(0) => \address_reg0_carry__2_n_7\,
      S(3 downto 2) => \address_reg_reg[20]_0\(1 downto 0),
      S(1) => \address_reg0_carry__2_i_4_n_0\,
      S(0) => \address_reg0_carry__2_i_5_n_0\
    );
\address_reg0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => address_reg1(7),
      I1 => address_reg1(8),
      O => \address_reg0_carry__2_i_4_n_0\
    );
\address_reg0_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => address_reg1(6),
      I1 => address_reg1(7),
      O => \address_reg0_carry__2_i_5_n_0\
    );
\address_reg0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \address_reg0_carry__2_n_0\,
      CO(3 downto 0) => \NLW_address_reg0_carry__3_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_address_reg0_carry__3_O_UNCONNECTED\(3 downto 1),
      O(0) => \address_reg0_carry__3_n_7\,
      S(3 downto 0) => B"0001"
    );
\address_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => horizontal_counter(0),
      Q => BRAM_PORTB_0_addr(0),
      R => SR(0)
    );
\address_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \address_reg0_carry__0_n_6\,
      Q => BRAM_PORTB_0_addr(10),
      R => SR(0)
    );
\address_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \address_reg0_carry__0_n_5\,
      Q => BRAM_PORTB_0_addr(11),
      R => SR(0)
    );
\address_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \address_reg0_carry__0_n_4\,
      Q => BRAM_PORTB_0_addr(12),
      R => SR(0)
    );
\address_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \address_reg0_carry__1_n_7\,
      Q => BRAM_PORTB_0_addr(13),
      R => SR(0)
    );
\address_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \address_reg0_carry__1_n_6\,
      Q => BRAM_PORTB_0_addr(14),
      R => SR(0)
    );
\address_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \address_reg0_carry__1_n_5\,
      Q => BRAM_PORTB_0_addr(15),
      R => SR(0)
    );
\address_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \address_reg0_carry__1_n_4\,
      Q => BRAM_PORTB_0_addr(16),
      R => SR(0)
    );
\address_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \address_reg0_carry__2_n_7\,
      Q => BRAM_PORTB_0_addr(17),
      R => SR(0)
    );
\address_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \address_reg0_carry__2_n_6\,
      Q => BRAM_PORTB_0_addr(18),
      R => SR(0)
    );
\address_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \address_reg0_carry__2_n_5\,
      Q => BRAM_PORTB_0_addr(19),
      R => SR(0)
    );
\address_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => horizontal_counter(1),
      Q => BRAM_PORTB_0_addr(1),
      R => SR(0)
    );
\address_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \address_reg0_carry__2_n_4\,
      Q => BRAM_PORTB_0_addr(20),
      R => SR(0)
    );
\address_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => horizontal_counter(2),
      Q => BRAM_PORTB_0_addr(2),
      R => SR(0)
    );
\address_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \address_reg0_carry__3_n_7\,
      Q => BRAM_PORTB_0_addr(21),
      R => SR(0)
    );
\address_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => horizontal_counter(3),
      Q => BRAM_PORTB_0_addr(3),
      R => SR(0)
    );
\address_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => D(0),
      Q => BRAM_PORTB_0_addr(4),
      R => SR(0)
    );
\address_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => address_reg0_carry_n_7,
      Q => BRAM_PORTB_0_addr(5),
      R => SR(0)
    );
\address_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => address_reg0_carry_n_6,
      Q => BRAM_PORTB_0_addr(6),
      R => SR(0)
    );
\address_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => address_reg0_carry_n_5,
      Q => BRAM_PORTB_0_addr(7),
      R => SR(0)
    );
\address_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => address_reg0_carry_n_4,
      Q => BRAM_PORTB_0_addr(8),
      R => SR(0)
    );
\address_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \address_reg0_carry__0_n_7\,
      Q => BRAM_PORTB_0_addr(9),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity audio_vocoder_vga_driver_0_upgraded_ipi_0_div_by_4_clk is
  port (
    clk : out STD_LOGIC;
    CLK100MHZ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of audio_vocoder_vga_driver_0_upgraded_ipi_0_div_by_4_clk : entity is "div_by_4_clk";
end audio_vocoder_vga_driver_0_upgraded_ipi_0_div_by_4_clk;

architecture STRUCTURE of audio_vocoder_vga_driver_0_upgraded_ipi_0_div_by_4_clk is
  signal \^clk\ : STD_LOGIC;
  signal counter : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1_n_0\ : STD_LOGIC;
  signal out_clk_reg_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of out_clk_reg_i_1 : label is "soft_lutpair9";
begin
  clk <= \^clk\;
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(0),
      O => \counter[0]_i_1_n_0\
    );
\counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => counter(0),
      I1 => counter(1),
      O => \counter[1]_i_1_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ,
      CE => '1',
      D => \counter[0]_i_1_n_0\,
      Q => counter(0),
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ,
      CE => '1',
      D => \counter[1]_i_1_n_0\,
      Q => counter(1),
      R => '0'
    );
out_clk_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => counter(1),
      I1 => counter(0),
      I2 => \^clk\,
      O => out_clk_reg_i_1_n_0
    );
out_clk_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ,
      CE => '1',
      D => out_clk_reg_i_1_n_0,
      Q => \^clk\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity audio_vocoder_vga_driver_0_upgraded_ipi_0_double_counter is
  port (
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \counter_variable2_reg[9]_0\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \counter_variable1_reg[6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \counter_variable1_reg[9]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \counter_variable2_reg[9]_1\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    VGA_B : out STD_LOGIC_VECTOR ( 3 downto 0 );
    VGA_G : out STD_LOGIC_VECTOR ( 3 downto 0 );
    VGA_R : out STD_LOGIC_VECTOR ( 3 downto 0 );
    VGA_VS : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    DI : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \counter_variable1_reg[9]_1\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    VGA_HS : out STD_LOGIC;
    BRAM_PORTB_0_dout : in STD_LOGIC_VECTOR ( 11 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of audio_vocoder_vga_driver_0_upgraded_ipi_0_double_counter : entity is "double_counter";
end audio_vocoder_vga_driver_0_upgraded_ipi_0_double_counter;

architecture STRUCTURE of audio_vocoder_vga_driver_0_upgraded_ipi_0_double_counter is
  signal \VGA_R[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \VGA_R[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \VGA_R[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal VGA_VS_INST_0_i_1_n_0 : STD_LOGIC;
  signal \address_reg0_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \address_reg0_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \address_reg0_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \address_reg0_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \address_reg0_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \address_reg0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \address_reg0_carry__0_i_1_n_1\ : STD_LOGIC;
  signal \address_reg0_carry__0_i_1_n_2\ : STD_LOGIC;
  signal \address_reg0_carry__0_i_1_n_3\ : STD_LOGIC;
  signal \address_reg0_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \address_reg0_carry__1_i_10_n_0\ : STD_LOGIC;
  signal \address_reg0_carry__1_i_11_n_0\ : STD_LOGIC;
  signal \address_reg0_carry__1_i_12_n_0\ : STD_LOGIC;
  signal \address_reg0_carry__1_i_13_n_0\ : STD_LOGIC;
  signal \address_reg0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \address_reg0_carry__1_i_1_n_1\ : STD_LOGIC;
  signal \address_reg0_carry__1_i_1_n_2\ : STD_LOGIC;
  signal \address_reg0_carry__1_i_1_n_3\ : STD_LOGIC;
  signal \address_reg0_carry__2_i_10_n_0\ : STD_LOGIC;
  signal \address_reg0_carry__2_i_11_n_0\ : STD_LOGIC;
  signal \address_reg0_carry__2_i_12_n_0\ : STD_LOGIC;
  signal \address_reg0_carry__2_i_1_n_2\ : STD_LOGIC;
  signal \address_reg0_carry__2_i_1_n_3\ : STD_LOGIC;
  signal \address_reg0_carry__2_i_9_n_0\ : STD_LOGIC;
  signal address_reg1 : STD_LOGIC_VECTOR ( 9 downto 8 );
  signal address_reg2 : STD_LOGIC_VECTOR ( 9 downto 2 );
  signal \address_reg[31]_i_2_n_0\ : STD_LOGIC;
  signal \address_reg[31]_i_3_n_0\ : STD_LOGIC;
  signal \counter_variable1[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter_variable1[0]_i_2_n_0\ : STD_LOGIC;
  signal \counter_variable1[1]_i_1_n_0\ : STD_LOGIC;
  signal \counter_variable1[2]_i_1_n_0\ : STD_LOGIC;
  signal \counter_variable1[3]_i_1_n_0\ : STD_LOGIC;
  signal \counter_variable1[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_variable1[5]_i_1_n_0\ : STD_LOGIC;
  signal \counter_variable1[6]_i_1_n_0\ : STD_LOGIC;
  signal \counter_variable1[7]_i_1_n_0\ : STD_LOGIC;
  signal \counter_variable1[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter_variable1[9]_i_1_n_0\ : STD_LOGIC;
  signal \counter_variable1[9]_i_2_n_0\ : STD_LOGIC;
  signal \counter_variable1[9]_i_3_n_0\ : STD_LOGIC;
  signal \counter_variable1[9]_i_4_n_0\ : STD_LOGIC;
  signal \^counter_variable1_reg[6]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \counter_variable2[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter_variable2[2]_i_1_n_0\ : STD_LOGIC;
  signal \counter_variable2[6]_i_2_n_0\ : STD_LOGIC;
  signal \counter_variable2[9]_i_1_n_0\ : STD_LOGIC;
  signal \counter_variable2[9]_i_2_n_0\ : STD_LOGIC;
  signal \counter_variable2[9]_i_4_n_0\ : STD_LOGIC;
  signal \counter_variable2[9]_i_5_n_0\ : STD_LOGIC;
  signal \counter_variable2[9]_i_6_n_0\ : STD_LOGIC;
  signal \counter_variable2[9]_i_7_n_0\ : STD_LOGIC;
  signal \^counter_variable2_reg[9]_0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal data0 : STD_LOGIC_VECTOR ( 9 downto 3 );
  signal \data0__0\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal horizontal_counter : STD_LOGIC_VECTOR ( 9 downto 7 );
  signal vertical_counter : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \NLW_address_reg0_carry__2_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_address_reg0_carry__2_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \VGA_R[3]_INST_0_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \VGA_R[3]_INST_0_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of VGA_VS_INST_0_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \counter_variable1[0]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter_variable1[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \counter_variable1[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \counter_variable1[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter_variable1[7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \counter_variable1[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \counter_variable1[9]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter_variable2[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \counter_variable2[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \counter_variable2[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \counter_variable2[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counter_variable2[6]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \counter_variable2[8]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter_variable2[9]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter_variable2[9]_i_6\ : label is "soft_lutpair2";
begin
  \counter_variable1_reg[6]_0\(6 downto 0) <= \^counter_variable1_reg[6]_0\(6 downto 0);
  \counter_variable2_reg[9]_0\(9 downto 0) <= \^counter_variable2_reg[9]_0\(9 downto 0);
\VGA_B[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01EA000000000000"
    )
        port map (
      I0 => \VGA_R[3]_INST_0_i_1_n_0\,
      I1 => \VGA_R[3]_INST_0_i_2_n_0\,
      I2 => vertical_counter(5),
      I3 => vertical_counter(9),
      I4 => \VGA_R[3]_INST_0_i_3_n_0\,
      I5 => BRAM_PORTB_0_dout(0),
      O => VGA_B(0)
    );
\VGA_B[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01EA000000000000"
    )
        port map (
      I0 => \VGA_R[3]_INST_0_i_1_n_0\,
      I1 => \VGA_R[3]_INST_0_i_2_n_0\,
      I2 => vertical_counter(5),
      I3 => vertical_counter(9),
      I4 => \VGA_R[3]_INST_0_i_3_n_0\,
      I5 => BRAM_PORTB_0_dout(1),
      O => VGA_B(1)
    );
\VGA_B[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01EA000000000000"
    )
        port map (
      I0 => \VGA_R[3]_INST_0_i_1_n_0\,
      I1 => \VGA_R[3]_INST_0_i_2_n_0\,
      I2 => vertical_counter(5),
      I3 => vertical_counter(9),
      I4 => \VGA_R[3]_INST_0_i_3_n_0\,
      I5 => BRAM_PORTB_0_dout(2),
      O => VGA_B(2)
    );
\VGA_B[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01EA000000000000"
    )
        port map (
      I0 => \VGA_R[3]_INST_0_i_1_n_0\,
      I1 => \VGA_R[3]_INST_0_i_2_n_0\,
      I2 => vertical_counter(5),
      I3 => vertical_counter(9),
      I4 => \VGA_R[3]_INST_0_i_3_n_0\,
      I5 => BRAM_PORTB_0_dout(3),
      O => VGA_B(3)
    );
\VGA_G[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01EA000000000000"
    )
        port map (
      I0 => \VGA_R[3]_INST_0_i_1_n_0\,
      I1 => \VGA_R[3]_INST_0_i_2_n_0\,
      I2 => vertical_counter(5),
      I3 => vertical_counter(9),
      I4 => \VGA_R[3]_INST_0_i_3_n_0\,
      I5 => BRAM_PORTB_0_dout(4),
      O => VGA_G(0)
    );
\VGA_G[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01EA000000000000"
    )
        port map (
      I0 => \VGA_R[3]_INST_0_i_1_n_0\,
      I1 => \VGA_R[3]_INST_0_i_2_n_0\,
      I2 => vertical_counter(5),
      I3 => vertical_counter(9),
      I4 => \VGA_R[3]_INST_0_i_3_n_0\,
      I5 => BRAM_PORTB_0_dout(5),
      O => VGA_G(1)
    );
\VGA_G[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01EA000000000000"
    )
        port map (
      I0 => \VGA_R[3]_INST_0_i_1_n_0\,
      I1 => \VGA_R[3]_INST_0_i_2_n_0\,
      I2 => vertical_counter(5),
      I3 => vertical_counter(9),
      I4 => \VGA_R[3]_INST_0_i_3_n_0\,
      I5 => BRAM_PORTB_0_dout(6),
      O => VGA_G(2)
    );
\VGA_G[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01EA000000000000"
    )
        port map (
      I0 => \VGA_R[3]_INST_0_i_1_n_0\,
      I1 => \VGA_R[3]_INST_0_i_2_n_0\,
      I2 => vertical_counter(5),
      I3 => vertical_counter(9),
      I4 => \VGA_R[3]_INST_0_i_3_n_0\,
      I5 => BRAM_PORTB_0_dout(7),
      O => VGA_G(3)
    );
VGA_HS_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010101"
    )
        port map (
      I0 => horizontal_counter(7),
      I1 => horizontal_counter(8),
      I2 => horizontal_counter(9),
      I3 => \^counter_variable1_reg[6]_0\(6),
      I4 => \^counter_variable1_reg[6]_0\(5),
      O => VGA_HS
    );
\VGA_R[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01EA000000000000"
    )
        port map (
      I0 => \VGA_R[3]_INST_0_i_1_n_0\,
      I1 => \VGA_R[3]_INST_0_i_2_n_0\,
      I2 => vertical_counter(5),
      I3 => vertical_counter(9),
      I4 => \VGA_R[3]_INST_0_i_3_n_0\,
      I5 => BRAM_PORTB_0_dout(8),
      O => VGA_R(0)
    );
\VGA_R[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01EA000000000000"
    )
        port map (
      I0 => \VGA_R[3]_INST_0_i_1_n_0\,
      I1 => \VGA_R[3]_INST_0_i_2_n_0\,
      I2 => vertical_counter(5),
      I3 => vertical_counter(9),
      I4 => \VGA_R[3]_INST_0_i_3_n_0\,
      I5 => BRAM_PORTB_0_dout(9),
      O => VGA_R(1)
    );
\VGA_R[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01EA000000000000"
    )
        port map (
      I0 => \VGA_R[3]_INST_0_i_1_n_0\,
      I1 => \VGA_R[3]_INST_0_i_2_n_0\,
      I2 => vertical_counter(5),
      I3 => vertical_counter(9),
      I4 => \VGA_R[3]_INST_0_i_3_n_0\,
      I5 => BRAM_PORTB_0_dout(10),
      O => VGA_R(2)
    );
\VGA_R[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01EA000000000000"
    )
        port map (
      I0 => \VGA_R[3]_INST_0_i_1_n_0\,
      I1 => \VGA_R[3]_INST_0_i_2_n_0\,
      I2 => vertical_counter(5),
      I3 => vertical_counter(9),
      I4 => \VGA_R[3]_INST_0_i_3_n_0\,
      I5 => BRAM_PORTB_0_dout(11),
      O => VGA_R(3)
    );
\VGA_R[3]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => vertical_counter(7),
      I1 => vertical_counter(6),
      I2 => vertical_counter(8),
      O => \VGA_R[3]_INST_0_i_1_n_0\
    );
\VGA_R[3]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFEFE"
    )
        port map (
      I0 => vertical_counter(4),
      I1 => vertical_counter(2),
      I2 => vertical_counter(3),
      I3 => vertical_counter(1),
      I4 => vertical_counter(0),
      O => \VGA_R[3]_INST_0_i_2_n_0\
    );
\VGA_R[3]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555557EEEEEEEA"
    )
        port map (
      I0 => horizontal_counter(8),
      I1 => horizontal_counter(7),
      I2 => \^counter_variable1_reg[6]_0\(6),
      I3 => \^counter_variable1_reg[6]_0\(5),
      I4 => \^counter_variable1_reg[6]_0\(4),
      I5 => horizontal_counter(9),
      O => \VGA_R[3]_INST_0_i_3_n_0\
    );
VGA_VS_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => vertical_counter(3),
      I1 => vertical_counter(2),
      I2 => vertical_counter(4),
      I3 => vertical_counter(5),
      I4 => vertical_counter(9),
      I5 => VGA_VS_INST_0_i_1_n_0,
      O => VGA_VS
    );
VGA_VS_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => vertical_counter(8),
      I1 => vertical_counter(6),
      I2 => vertical_counter(7),
      I3 => vertical_counter(1),
      O => VGA_VS_INST_0_i_1_n_0
    );
\address_reg0_carry__0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \address_reg0_carry__0_i_1_n_0\,
      CO(2) => \address_reg0_carry__0_i_1_n_1\,
      CO(1) => \address_reg0_carry__0_i_1_n_2\,
      CO(0) => \address_reg0_carry__0_i_1_n_3\,
      CYINIT => '0',
      DI(3) => address_reg2(2),
      DI(2) => \address_reg0_carry__0_i_9_n_0\,
      DI(1) => \address_reg0_carry__0_i_10_n_0\,
      DI(0) => '0',
      O(3 downto 2) => \^counter_variable2_reg[9]_0\(1 downto 0),
      O(1 downto 0) => address_reg1(9 downto 8),
      S(3) => \address_reg0_carry__0_i_11_n_0\,
      S(2) => \address_reg0_carry__0_i_12_n_0\,
      S(1) => \address_reg0_carry__0_i_13_n_0\,
      S(0) => \address_reg0_carry__0_i_14_n_0\
    );
\address_reg0_carry__0_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vertical_counter(0),
      O => \address_reg0_carry__0_i_10_n_0\
    );
\address_reg0_carry__0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5AA6A6A6"
    )
        port map (
      I0 => vertical_counter(4),
      I1 => vertical_counter(3),
      I2 => vertical_counter(2),
      I3 => vertical_counter(1),
      I4 => vertical_counter(0),
      O => \address_reg0_carry__0_i_11_n_0\
    );
\address_reg0_carry__0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A669"
    )
        port map (
      I0 => vertical_counter(3),
      I1 => vertical_counter(2),
      I2 => vertical_counter(1),
      I3 => vertical_counter(0),
      O => \address_reg0_carry__0_i_12_n_0\
    );
\address_reg0_carry__0_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A6"
    )
        port map (
      I0 => vertical_counter(2),
      I1 => vertical_counter(0),
      I2 => vertical_counter(1),
      O => \address_reg0_carry__0_i_13_n_0\
    );
\address_reg0_carry__0_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => vertical_counter(0),
      I1 => vertical_counter(1),
      O => \address_reg0_carry__0_i_14_n_0\
    );
\address_reg0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => horizontal_counter(9),
      I1 => address_reg1(9),
      O => \counter_variable1_reg[9]_1\(1)
    );
\address_reg0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => address_reg1(8),
      I1 => horizontal_counter(8),
      O => \counter_variable1_reg[9]_1\(0)
    );
\address_reg0_carry__0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => address_reg1(9),
      I1 => horizontal_counter(9),
      I2 => \^counter_variable2_reg[9]_0\(0),
      O => \counter_variable1_reg[9]_0\(1)
    );
\address_reg0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => horizontal_counter(8),
      I1 => address_reg1(8),
      I2 => address_reg1(9),
      I3 => horizontal_counter(9),
      O => \counter_variable1_reg[9]_0\(0)
    );
\address_reg0_carry__0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"95"
    )
        port map (
      I0 => vertical_counter(2),
      I1 => vertical_counter(0),
      I2 => vertical_counter(1),
      O => address_reg2(2)
    );
\address_reg0_carry__0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => vertical_counter(0),
      I1 => vertical_counter(1),
      O => \address_reg0_carry__0_i_9_n_0\
    );
\address_reg0_carry__1_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \address_reg0_carry__0_i_1_n_0\,
      CO(3) => \address_reg0_carry__1_i_1_n_0\,
      CO(2) => \address_reg0_carry__1_i_1_n_1\,
      CO(1) => \address_reg0_carry__1_i_1_n_2\,
      CO(0) => \address_reg0_carry__1_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => address_reg2(6 downto 3),
      O(3 downto 0) => \^counter_variable2_reg[9]_0\(5 downto 2),
      S(3) => \address_reg0_carry__1_i_10_n_0\,
      S(2) => \address_reg0_carry__1_i_11_n_0\,
      S(1) => \address_reg0_carry__1_i_12_n_0\,
      S(0) => \address_reg0_carry__1_i_13_n_0\
    );
\address_reg0_carry__1_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"669A"
    )
        port map (
      I0 => vertical_counter(8),
      I1 => \address_reg0_carry__2_i_12_n_0\,
      I2 => vertical_counter(7),
      I3 => vertical_counter(6),
      O => \address_reg0_carry__1_i_10_n_0\
    );
\address_reg0_carry__1_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"96A9"
    )
        port map (
      I0 => vertical_counter(7),
      I1 => vertical_counter(5),
      I2 => \VGA_R[3]_INST_0_i_2_n_0\,
      I3 => vertical_counter(6),
      O => \address_reg0_carry__1_i_11_n_0\
    );
\address_reg0_carry__1_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5559AAAAAAA65559"
    )
        port map (
      I0 => vertical_counter(6),
      I1 => \counter_variable2[6]_i_2_n_0\,
      I2 => vertical_counter(3),
      I3 => vertical_counter(2),
      I4 => vertical_counter(4),
      I5 => vertical_counter(5),
      O => \address_reg0_carry__1_i_12_n_0\
    );
\address_reg0_carry__1_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA55A559A559A559"
    )
        port map (
      I0 => vertical_counter(5),
      I1 => vertical_counter(4),
      I2 => vertical_counter(2),
      I3 => vertical_counter(3),
      I4 => vertical_counter(1),
      I5 => vertical_counter(0),
      O => \address_reg0_carry__1_i_13_n_0\
    );
\address_reg0_carry__1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA655555555"
    )
        port map (
      I0 => vertical_counter(6),
      I1 => \counter_variable2[6]_i_2_n_0\,
      I2 => vertical_counter(3),
      I3 => vertical_counter(2),
      I4 => vertical_counter(4),
      I5 => vertical_counter(5),
      O => address_reg2(6)
    );
\address_reg0_carry__1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000007FFFFFFF8"
    )
        port map (
      I0 => vertical_counter(0),
      I1 => vertical_counter(1),
      I2 => vertical_counter(3),
      I3 => vertical_counter(2),
      I4 => vertical_counter(4),
      I5 => vertical_counter(5),
      O => address_reg2(5)
    );
\address_reg0_carry__1_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA9A9A9"
    )
        port map (
      I0 => vertical_counter(4),
      I1 => vertical_counter(3),
      I2 => vertical_counter(2),
      I3 => vertical_counter(1),
      I4 => vertical_counter(0),
      O => address_reg2(4)
    );
\address_reg0_carry__1_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A999"
    )
        port map (
      I0 => vertical_counter(3),
      I1 => vertical_counter(2),
      I2 => vertical_counter(1),
      I3 => vertical_counter(0),
      O => address_reg2(3)
    );
\address_reg0_carry__2_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \address_reg0_carry__1_i_1_n_0\,
      CO(3) => \^counter_variable2_reg[9]_0\(9),
      CO(2) => \NLW_address_reg0_carry__2_i_1_CO_UNCONNECTED\(2),
      CO(1) => \address_reg0_carry__2_i_1_n_2\,
      CO(0) => \address_reg0_carry__2_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => address_reg2(9 downto 7),
      O(3) => \NLW_address_reg0_carry__2_i_1_O_UNCONNECTED\(3),
      O(2 downto 0) => \^counter_variable2_reg[9]_0\(8 downto 6),
      S(3) => '1',
      S(2) => \address_reg0_carry__2_i_9_n_0\,
      S(1) => \address_reg0_carry__2_i_10_n_0\,
      S(0) => \address_reg0_carry__2_i_11_n_0\
    );
\address_reg0_carry__2_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0A4F0F0F00C"
    )
        port map (
      I0 => vertical_counter(5),
      I1 => vertical_counter(9),
      I2 => vertical_counter(8),
      I3 => vertical_counter(6),
      I4 => vertical_counter(7),
      I5 => \VGA_R[3]_INST_0_i_2_n_0\,
      O => \address_reg0_carry__2_i_10_n_0\
    );
\address_reg0_carry__2_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5566AA9A"
    )
        port map (
      I0 => vertical_counter(9),
      I1 => \address_reg0_carry__2_i_12_n_0\,
      I2 => vertical_counter(8),
      I3 => vertical_counter(6),
      I4 => vertical_counter(7),
      O => \address_reg0_carry__2_i_11_n_0\
    );
\address_reg0_carry__2_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF800000000"
    )
        port map (
      I0 => vertical_counter(0),
      I1 => vertical_counter(1),
      I2 => vertical_counter(3),
      I3 => vertical_counter(2),
      I4 => vertical_counter(4),
      I5 => vertical_counter(5),
      O => \address_reg0_carry__2_i_12_n_0\
    );
\address_reg0_carry__2_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555556"
    )
        port map (
      I0 => \^counter_variable2_reg[9]_0\(9),
      I1 => vertical_counter(9),
      I2 => \address_reg0_carry__2_i_12_n_0\,
      I3 => vertical_counter(8),
      I4 => vertical_counter(6),
      I5 => vertical_counter(7),
      O => \counter_variable2_reg[9]_1\(1)
    );
\address_reg0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^counter_variable2_reg[9]_0\(8),
      I1 => \^counter_variable2_reg[9]_0\(9),
      O => \counter_variable2_reg[9]_1\(0)
    );
\address_reg0_carry__2_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => vertical_counter(9),
      I1 => \address_reg0_carry__2_i_12_n_0\,
      I2 => vertical_counter(8),
      I3 => vertical_counter(6),
      I4 => vertical_counter(7),
      O => address_reg2(9)
    );
\address_reg0_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => vertical_counter(8),
      I1 => \address_reg0_carry__2_i_12_n_0\,
      I2 => vertical_counter(7),
      I3 => vertical_counter(6),
      O => address_reg2(8)
    );
\address_reg0_carry__2_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => vertical_counter(7),
      I1 => \address_reg0_carry__2_i_12_n_0\,
      I2 => vertical_counter(6),
      O => address_reg2(7)
    );
\address_reg0_carry__2_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCC8CCCCCCC0"
    )
        port map (
      I0 => vertical_counter(5),
      I1 => vertical_counter(9),
      I2 => vertical_counter(8),
      I3 => vertical_counter(6),
      I4 => vertical_counter(7),
      I5 => \VGA_R[3]_INST_0_i_2_n_0\,
      O => \address_reg0_carry__2_i_9_n_0\
    );
address_reg0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => address_reg1(8),
      I1 => horizontal_counter(8),
      O => DI(1)
    );
address_reg0_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_variable1_reg[6]_0\(5),
      O => DI(0)
    );
address_reg0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9699"
    )
        port map (
      I0 => address_reg1(8),
      I1 => horizontal_counter(8),
      I2 => vertical_counter(0),
      I3 => horizontal_counter(7),
      O => S(3)
    );
address_reg0_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^counter_variable1_reg[6]_0\(6),
      I1 => vertical_counter(0),
      I2 => horizontal_counter(7),
      O => S(2)
    );
address_reg0_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^counter_variable1_reg[6]_0\(5),
      I1 => \^counter_variable1_reg[6]_0\(6),
      O => S(1)
    );
address_reg0_carry_i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_variable1_reg[6]_0\(5),
      O => S(0)
    );
\address_reg[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEEFEEFD"
    )
        port map (
      I0 => vertical_counter(9),
      I1 => \address_reg[31]_i_2_n_0\,
      I2 => vertical_counter(5),
      I3 => \VGA_R[3]_INST_0_i_1_n_0\,
      I4 => \VGA_R[3]_INST_0_i_2_n_0\,
      I5 => \address_reg[31]_i_3_n_0\,
      O => SR(0)
    );
\address_reg[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF000000FE000000"
    )
        port map (
      I0 => \^counter_variable1_reg[6]_0\(6),
      I1 => \^counter_variable1_reg[6]_0\(5),
      I2 => \^counter_variable1_reg[6]_0\(4),
      I3 => horizontal_counter(8),
      I4 => horizontal_counter(9),
      I5 => horizontal_counter(7),
      O => \address_reg[31]_i_2_n_0\
    );
\address_reg[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101010101010111"
    )
        port map (
      I0 => horizontal_counter(9),
      I1 => horizontal_counter(8),
      I2 => horizontal_counter(7),
      I3 => \^counter_variable1_reg[6]_0\(6),
      I4 => \^counter_variable1_reg[6]_0\(5),
      I5 => \^counter_variable1_reg[6]_0\(4),
      O => \address_reg[31]_i_3_n_0\
    );
\address_reg[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_variable1_reg[6]_0\(4),
      O => D(0)
    );
\counter_variable1[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40000000BFFFFFFF"
    )
        port map (
      I0 => \counter_variable1[0]_i_2_n_0\,
      I1 => vertical_counter(0),
      I2 => vertical_counter(2),
      I3 => vertical_counter(3),
      I4 => \counter_variable2[9]_i_4_n_0\,
      I5 => \^counter_variable1_reg[6]_0\(0),
      O => \counter_variable1[0]_i_1_n_0\
    );
\counter_variable1[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
        port map (
      I0 => vertical_counter(5),
      I1 => vertical_counter(9),
      I2 => vertical_counter(4),
      I3 => vertical_counter(1),
      I4 => \VGA_R[3]_INST_0_i_1_n_0\,
      O => \counter_variable1[0]_i_2_n_0\
    );
\counter_variable1[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^counter_variable1_reg[6]_0\(0),
      I1 => \^counter_variable1_reg[6]_0\(1),
      O => \counter_variable1[1]_i_1_n_0\
    );
\counter_variable1[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^counter_variable1_reg[6]_0\(1),
      I1 => \^counter_variable1_reg[6]_0\(0),
      I2 => \^counter_variable1_reg[6]_0\(2),
      O => \counter_variable1[2]_i_1_n_0\
    );
\counter_variable1[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^counter_variable1_reg[6]_0\(2),
      I1 => \^counter_variable1_reg[6]_0\(0),
      I2 => \^counter_variable1_reg[6]_0\(1),
      I3 => \^counter_variable1_reg[6]_0\(3),
      O => \counter_variable1[3]_i_1_n_0\
    );
\counter_variable1[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^counter_variable1_reg[6]_0\(3),
      I1 => \^counter_variable1_reg[6]_0\(1),
      I2 => \^counter_variable1_reg[6]_0\(0),
      I3 => \^counter_variable1_reg[6]_0\(2),
      I4 => \^counter_variable1_reg[6]_0\(4),
      O => \counter_variable1[4]_i_1_n_0\
    );
\counter_variable1[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^counter_variable1_reg[6]_0\(4),
      I1 => \^counter_variable1_reg[6]_0\(2),
      I2 => \^counter_variable1_reg[6]_0\(0),
      I3 => \^counter_variable1_reg[6]_0\(1),
      I4 => \^counter_variable1_reg[6]_0\(3),
      I5 => \^counter_variable1_reg[6]_0\(5),
      O => \counter_variable1[5]_i_1_n_0\
    );
\counter_variable1[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \counter_variable1[9]_i_4_n_0\,
      I1 => \^counter_variable1_reg[6]_0\(5),
      I2 => \^counter_variable1_reg[6]_0\(6),
      O => \counter_variable1[6]_i_1_n_0\
    );
\counter_variable1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
        port map (
      I0 => \counter_variable1[9]_i_4_n_0\,
      I1 => \^counter_variable1_reg[6]_0\(5),
      I2 => \^counter_variable1_reg[6]_0\(6),
      I3 => horizontal_counter(7),
      O => \counter_variable1[7]_i_1_n_0\
    );
\counter_variable1[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF4000"
    )
        port map (
      I0 => \counter_variable1[9]_i_4_n_0\,
      I1 => horizontal_counter(7),
      I2 => \^counter_variable1_reg[6]_0\(6),
      I3 => \^counter_variable1_reg[6]_0\(5),
      I4 => horizontal_counter(8),
      O => \counter_variable1[8]_i_1_n_0\
    );
\counter_variable1[9]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_variable2[9]_i_4_n_0\,
      O => \counter_variable1[9]_i_1_n_0\
    );
\counter_variable1[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
        port map (
      I0 => \counter_variable2[9]_i_5_n_0\,
      I1 => vertical_counter(0),
      I2 => VGA_VS_INST_0_i_1_n_0,
      I3 => vertical_counter(4),
      I4 => \counter_variable2[9]_i_6_n_0\,
      O => \counter_variable1[9]_i_2_n_0\
    );
\counter_variable1[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF40000000"
    )
        port map (
      I0 => \counter_variable1[9]_i_4_n_0\,
      I1 => horizontal_counter(8),
      I2 => horizontal_counter(7),
      I3 => \^counter_variable1_reg[6]_0\(6),
      I4 => \^counter_variable1_reg[6]_0\(5),
      I5 => horizontal_counter(9),
      O => \counter_variable1[9]_i_3_n_0\
    );
\counter_variable1[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \^counter_variable1_reg[6]_0\(3),
      I1 => \^counter_variable1_reg[6]_0\(1),
      I2 => \^counter_variable1_reg[6]_0\(0),
      I3 => \^counter_variable1_reg[6]_0\(2),
      I4 => \^counter_variable1_reg[6]_0\(4),
      O => \counter_variable1[9]_i_4_n_0\
    );
\counter_variable1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_variable1[0]_i_1_n_0\,
      Q => \^counter_variable1_reg[6]_0\(0),
      R => '0'
    );
\counter_variable1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter_variable1[9]_i_2_n_0\,
      D => \counter_variable1[1]_i_1_n_0\,
      Q => \^counter_variable1_reg[6]_0\(1),
      R => \counter_variable1[9]_i_1_n_0\
    );
\counter_variable1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter_variable1[9]_i_2_n_0\,
      D => \counter_variable1[2]_i_1_n_0\,
      Q => \^counter_variable1_reg[6]_0\(2),
      R => \counter_variable1[9]_i_1_n_0\
    );
\counter_variable1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter_variable1[9]_i_2_n_0\,
      D => \counter_variable1[3]_i_1_n_0\,
      Q => \^counter_variable1_reg[6]_0\(3),
      R => \counter_variable1[9]_i_1_n_0\
    );
\counter_variable1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter_variable1[9]_i_2_n_0\,
      D => \counter_variable1[4]_i_1_n_0\,
      Q => \^counter_variable1_reg[6]_0\(4),
      R => \counter_variable1[9]_i_1_n_0\
    );
\counter_variable1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter_variable1[9]_i_2_n_0\,
      D => \counter_variable1[5]_i_1_n_0\,
      Q => \^counter_variable1_reg[6]_0\(5),
      R => \counter_variable1[9]_i_1_n_0\
    );
\counter_variable1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter_variable1[9]_i_2_n_0\,
      D => \counter_variable1[6]_i_1_n_0\,
      Q => \^counter_variable1_reg[6]_0\(6),
      R => \counter_variable1[9]_i_1_n_0\
    );
\counter_variable1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter_variable1[9]_i_2_n_0\,
      D => \counter_variable1[7]_i_1_n_0\,
      Q => horizontal_counter(7),
      R => \counter_variable1[9]_i_1_n_0\
    );
\counter_variable1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter_variable1[9]_i_2_n_0\,
      D => \counter_variable1[8]_i_1_n_0\,
      Q => horizontal_counter(8),
      R => \counter_variable1[9]_i_1_n_0\
    );
\counter_variable1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter_variable1[9]_i_2_n_0\,
      D => \counter_variable1[9]_i_3_n_0\,
      Q => horizontal_counter(9),
      R => \counter_variable1[9]_i_1_n_0\
    );
\counter_variable2[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vertical_counter(0),
      O => \counter_variable2[0]_i_1_n_0\
    );
\counter_variable2[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => vertical_counter(0),
      I1 => vertical_counter(1),
      O => \data0__0\(1)
    );
\counter_variable2[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => vertical_counter(1),
      I1 => vertical_counter(0),
      I2 => vertical_counter(2),
      O => \counter_variable2[2]_i_1_n_0\
    );
\counter_variable2[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => vertical_counter(0),
      I1 => vertical_counter(1),
      I2 => vertical_counter(2),
      I3 => vertical_counter(3),
      O => data0(3)
    );
\counter_variable2[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => vertical_counter(0),
      I1 => vertical_counter(1),
      I2 => vertical_counter(2),
      I3 => vertical_counter(3),
      I4 => vertical_counter(4),
      O => data0(4)
    );
\counter_variable2[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => vertical_counter(4),
      I1 => vertical_counter(3),
      I2 => vertical_counter(2),
      I3 => vertical_counter(1),
      I4 => vertical_counter(0),
      I5 => vertical_counter(5),
      O => data0(5)
    );
\counter_variable2[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFF20000000"
    )
        port map (
      I0 => vertical_counter(5),
      I1 => \counter_variable2[6]_i_2_n_0\,
      I2 => vertical_counter(2),
      I3 => vertical_counter(3),
      I4 => vertical_counter(4),
      I5 => vertical_counter(6),
      O => data0(6)
    );
\counter_variable2[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => vertical_counter(0),
      I1 => vertical_counter(1),
      O => \counter_variable2[6]_i_2_n_0\
    );
\counter_variable2[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => vertical_counter(6),
      I1 => \counter_variable2[9]_i_7_n_0\,
      I2 => vertical_counter(7),
      O => data0(7)
    );
\counter_variable2[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \counter_variable2[9]_i_7_n_0\,
      I1 => vertical_counter(6),
      I2 => vertical_counter(7),
      I3 => vertical_counter(8),
      O => data0(8)
    );
\counter_variable2[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => \counter_variable2[9]_i_4_n_0\,
      I1 => \counter_variable2[9]_i_5_n_0\,
      I2 => vertical_counter(4),
      I3 => vertical_counter(0),
      I4 => \counter_variable2[9]_i_6_n_0\,
      I5 => VGA_VS_INST_0_i_1_n_0,
      O => \counter_variable2[9]_i_1_n_0\
    );
\counter_variable2[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000010FFFFFFFF"
    )
        port map (
      I0 => VGA_VS_INST_0_i_1_n_0,
      I1 => \counter_variable2[9]_i_6_n_0\,
      I2 => vertical_counter(0),
      I3 => vertical_counter(4),
      I4 => \counter_variable2[9]_i_5_n_0\,
      I5 => \counter_variable2[9]_i_4_n_0\,
      O => \counter_variable2[9]_i_2_n_0\
    );
\counter_variable2[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \counter_variable2[9]_i_7_n_0\,
      I1 => vertical_counter(8),
      I2 => vertical_counter(7),
      I3 => vertical_counter(6),
      I4 => vertical_counter(9),
      O => data0(9)
    );
\counter_variable2[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF7"
    )
        port map (
      I0 => horizontal_counter(8),
      I1 => horizontal_counter(9),
      I2 => \^counter_variable1_reg[6]_0\(6),
      I3 => \^counter_variable1_reg[6]_0\(5),
      I4 => horizontal_counter(7),
      I5 => \counter_variable1[9]_i_4_n_0\,
      O => \counter_variable2[9]_i_4_n_0\
    );
\counter_variable2[9]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => vertical_counter(2),
      I1 => vertical_counter(3),
      O => \counter_variable2[9]_i_5_n_0\
    );
\counter_variable2[9]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => vertical_counter(5),
      I1 => vertical_counter(9),
      O => \counter_variable2[9]_i_6_n_0\
    );
\counter_variable2[9]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => vertical_counter(4),
      I1 => vertical_counter(3),
      I2 => vertical_counter(2),
      I3 => vertical_counter(1),
      I4 => vertical_counter(0),
      I5 => vertical_counter(5),
      O => \counter_variable2[9]_i_7_n_0\
    );
\counter_variable2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter_variable2[9]_i_2_n_0\,
      D => \counter_variable2[0]_i_1_n_0\,
      Q => vertical_counter(0),
      R => \counter_variable2[9]_i_1_n_0\
    );
\counter_variable2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter_variable2[9]_i_2_n_0\,
      D => \data0__0\(1),
      Q => vertical_counter(1),
      R => \counter_variable2[9]_i_1_n_0\
    );
\counter_variable2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter_variable2[9]_i_2_n_0\,
      D => \counter_variable2[2]_i_1_n_0\,
      Q => vertical_counter(2),
      R => \counter_variable2[9]_i_1_n_0\
    );
\counter_variable2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter_variable2[9]_i_2_n_0\,
      D => data0(3),
      Q => vertical_counter(3),
      R => \counter_variable2[9]_i_1_n_0\
    );
\counter_variable2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter_variable2[9]_i_2_n_0\,
      D => data0(4),
      Q => vertical_counter(4),
      R => \counter_variable2[9]_i_1_n_0\
    );
\counter_variable2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter_variable2[9]_i_2_n_0\,
      D => data0(5),
      Q => vertical_counter(5),
      R => \counter_variable2[9]_i_1_n_0\
    );
\counter_variable2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter_variable2[9]_i_2_n_0\,
      D => data0(6),
      Q => vertical_counter(6),
      R => \counter_variable2[9]_i_1_n_0\
    );
\counter_variable2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter_variable2[9]_i_2_n_0\,
      D => data0(7),
      Q => vertical_counter(7),
      R => \counter_variable2[9]_i_1_n_0\
    );
\counter_variable2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter_variable2[9]_i_2_n_0\,
      D => data0(8),
      Q => vertical_counter(8),
      R => \counter_variable2[9]_i_1_n_0\
    );
\counter_variable2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter_variable2[9]_i_2_n_0\,
      D => data0(9),
      Q => vertical_counter(9),
      R => \counter_variable2[9]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity audio_vocoder_vga_driver_0_upgraded_ipi_0_vga_driver is
  port (
    VGA_B : out STD_LOGIC_VECTOR ( 3 downto 0 );
    VGA_G : out STD_LOGIC_VECTOR ( 3 downto 0 );
    VGA_R : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_PORTB_0_addr : out STD_LOGIC_VECTOR ( 21 downto 0 );
    VGA_VS : out STD_LOGIC;
    VGA_HS : out STD_LOGIC;
    BRAM_PORTB_0_dout : in STD_LOGIC_VECTOR ( 11 downto 0 );
    CLK100MHZ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of audio_vocoder_vga_driver_0_upgraded_ipi_0_vga_driver : entity is "vga_driver";
end audio_vocoder_vga_driver_0_upgraded_ipi_0_vga_driver;

architecture STRUCTURE of audio_vocoder_vga_driver_0_upgraded_ipi_0_vga_driver is
  signal address_reg1 : STD_LOGIC_VECTOR ( 19 downto 10 );
  signal clk : STD_LOGIC;
  signal counter_mod_n_0 : STD_LOGIC;
  signal counter_mod_n_1 : STD_LOGIC;
  signal counter_mod_n_2 : STD_LOGIC;
  signal counter_mod_n_21 : STD_LOGIC;
  signal counter_mod_n_22 : STD_LOGIC;
  signal counter_mod_n_23 : STD_LOGIC;
  signal counter_mod_n_24 : STD_LOGIC;
  signal counter_mod_n_3 : STD_LOGIC;
  signal counter_mod_n_38 : STD_LOGIC;
  signal counter_mod_n_39 : STD_LOGIC;
  signal counter_mod_n_40 : STD_LOGIC;
  signal counter_mod_n_41 : STD_LOGIC;
  signal counter_mod_n_42 : STD_LOGIC;
  signal counter_mod_n_43 : STD_LOGIC;
  signal horizontal_counter : STD_LOGIC_VECTOR ( 6 downto 0 );
begin
address_driver_mod: entity work.audio_vocoder_vga_driver_0_upgraded_ipi_0_address_driver
     port map (
      BRAM_PORTB_0_addr(21 downto 0) => BRAM_PORTB_0_addr(21 downto 0),
      D(0) => counter_mod_n_43,
      DI(1) => counter_mod_n_39,
      DI(0) => counter_mod_n_40,
      S(3) => counter_mod_n_0,
      S(2) => counter_mod_n_1,
      S(1) => counter_mod_n_2,
      S(0) => counter_mod_n_3,
      SR(0) => counter_mod_n_38,
      address_reg1(9 downto 0) => address_reg1(19 downto 10),
      \address_reg_reg[12]_0\(1) => counter_mod_n_41,
      \address_reg_reg[12]_0\(0) => counter_mod_n_42,
      \address_reg_reg[12]_1\(1) => counter_mod_n_21,
      \address_reg_reg[12]_1\(0) => counter_mod_n_22,
      \address_reg_reg[20]_0\(1) => counter_mod_n_23,
      \address_reg_reg[20]_0\(0) => counter_mod_n_24,
      clk => clk,
      horizontal_counter(6 downto 0) => horizontal_counter(6 downto 0)
    );
counter_mod: entity work.audio_vocoder_vga_driver_0_upgraded_ipi_0_double_counter
     port map (
      BRAM_PORTB_0_dout(11 downto 0) => BRAM_PORTB_0_dout(11 downto 0),
      D(0) => counter_mod_n_43,
      DI(1) => counter_mod_n_39,
      DI(0) => counter_mod_n_40,
      S(3) => counter_mod_n_0,
      S(2) => counter_mod_n_1,
      S(1) => counter_mod_n_2,
      S(0) => counter_mod_n_3,
      SR(0) => counter_mod_n_38,
      VGA_B(3 downto 0) => VGA_B(3 downto 0),
      VGA_G(3 downto 0) => VGA_G(3 downto 0),
      VGA_HS => VGA_HS,
      VGA_R(3 downto 0) => VGA_R(3 downto 0),
      VGA_VS => VGA_VS,
      clk => clk,
      \counter_variable1_reg[6]_0\(6 downto 0) => horizontal_counter(6 downto 0),
      \counter_variable1_reg[9]_0\(1) => counter_mod_n_21,
      \counter_variable1_reg[9]_0\(0) => counter_mod_n_22,
      \counter_variable1_reg[9]_1\(1) => counter_mod_n_41,
      \counter_variable1_reg[9]_1\(0) => counter_mod_n_42,
      \counter_variable2_reg[9]_0\(9 downto 0) => address_reg1(19 downto 10),
      \counter_variable2_reg[9]_1\(1) => counter_mod_n_23,
      \counter_variable2_reg[9]_1\(0) => counter_mod_n_24
    );
div: entity work.audio_vocoder_vga_driver_0_upgraded_ipi_0_div_by_4_clk
     port map (
      CLK100MHZ => CLK100MHZ,
      clk => clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity audio_vocoder_vga_driver_0_upgraded_ipi_0 is
  port (
    CLK100MHZ : in STD_LOGIC;
    CPU_RESETN : in STD_LOGIC;
    VGA_R : out STD_LOGIC_VECTOR ( 3 downto 0 );
    VGA_G : out STD_LOGIC_VECTOR ( 3 downto 0 );
    VGA_B : out STD_LOGIC_VECTOR ( 3 downto 0 );
    VGA_HS : out STD_LOGIC;
    VGA_VS : out STD_LOGIC;
    BRAM_PORTB_0_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTB_0_clk : out STD_LOGIC;
    BRAM_PORTB_0_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTB_0_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTB_0_en : out STD_LOGIC;
    BRAM_PORTB_0_rst : out STD_LOGIC;
    BRAM_PORTB_0_we : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of audio_vocoder_vga_driver_0_upgraded_ipi_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of audio_vocoder_vga_driver_0_upgraded_ipi_0 : entity is "audio_vocoder_vga_driver_0_upgraded_ipi_0,vga_driver,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of audio_vocoder_vga_driver_0_upgraded_ipi_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of audio_vocoder_vga_driver_0_upgraded_ipi_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of audio_vocoder_vga_driver_0_upgraded_ipi_0 : entity is "vga_driver,Vivado 2018.3.1";
end audio_vocoder_vga_driver_0_upgraded_ipi_0;

architecture STRUCTURE of audio_vocoder_vga_driver_0_upgraded_ipi_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^bram_portb_0_addr\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \^clk100mhz\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of BRAM_PORTB_0_clk : signal is "xilinx.com:signal:clock:1.0 BRAM_PORTB_0_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of BRAM_PORTB_0_clk : signal is "XIL_INTERFACENAME BRAM_PORTB_0_clk, ASSOCIATED_RESET BRAM_PORTB_0_rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN audio_vocoder_vga_driver_0_upgraded_ipi_0_BRAM_PORTB_0_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of BRAM_PORTB_0_rst : signal is "xilinx.com:signal:reset:1.0 BRAM_PORTB_0_rst RST";
  attribute X_INTERFACE_PARAMETER of BRAM_PORTB_0_rst : signal is "XIL_INTERFACENAME BRAM_PORTB_0_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of CPU_RESETN : signal is "xilinx.com:signal:reset:1.0 CPU_RESETN RST";
  attribute X_INTERFACE_PARAMETER of CPU_RESETN : signal is "XIL_INTERFACENAME CPU_RESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  BRAM_PORTB_0_addr(31) <= \^bram_portb_0_addr\(30);
  BRAM_PORTB_0_addr(30) <= \^bram_portb_0_addr\(30);
  BRAM_PORTB_0_addr(29) <= \^bram_portb_0_addr\(30);
  BRAM_PORTB_0_addr(28) <= \^bram_portb_0_addr\(30);
  BRAM_PORTB_0_addr(27) <= \^bram_portb_0_addr\(30);
  BRAM_PORTB_0_addr(26) <= \^bram_portb_0_addr\(30);
  BRAM_PORTB_0_addr(25) <= \^bram_portb_0_addr\(30);
  BRAM_PORTB_0_addr(24) <= \^bram_portb_0_addr\(30);
  BRAM_PORTB_0_addr(23) <= \^bram_portb_0_addr\(30);
  BRAM_PORTB_0_addr(22) <= \^bram_portb_0_addr\(30);
  BRAM_PORTB_0_addr(21) <= \^bram_portb_0_addr\(30);
  BRAM_PORTB_0_addr(20 downto 0) <= \^bram_portb_0_addr\(20 downto 0);
  BRAM_PORTB_0_clk <= \^clk100mhz\;
  BRAM_PORTB_0_din(31) <= \<const0>\;
  BRAM_PORTB_0_din(30) <= \<const0>\;
  BRAM_PORTB_0_din(29) <= \<const0>\;
  BRAM_PORTB_0_din(28) <= \<const1>\;
  BRAM_PORTB_0_din(27) <= \<const0>\;
  BRAM_PORTB_0_din(26) <= \<const0>\;
  BRAM_PORTB_0_din(25) <= \<const1>\;
  BRAM_PORTB_0_din(24) <= \<const0>\;
  BRAM_PORTB_0_din(23) <= \<const0>\;
  BRAM_PORTB_0_din(22) <= \<const0>\;
  BRAM_PORTB_0_din(21) <= \<const1>\;
  BRAM_PORTB_0_din(20) <= \<const1>\;
  BRAM_PORTB_0_din(19) <= \<const0>\;
  BRAM_PORTB_0_din(18) <= \<const1>\;
  BRAM_PORTB_0_din(17) <= \<const0>\;
  BRAM_PORTB_0_din(16) <= \<const0>\;
  BRAM_PORTB_0_din(15) <= \<const0>\;
  BRAM_PORTB_0_din(14) <= \<const1>\;
  BRAM_PORTB_0_din(13) <= \<const0>\;
  BRAM_PORTB_0_din(12) <= \<const1>\;
  BRAM_PORTB_0_din(11) <= \<const0>\;
  BRAM_PORTB_0_din(10) <= \<const1>\;
  BRAM_PORTB_0_din(9) <= \<const1>\;
  BRAM_PORTB_0_din(8) <= \<const0>\;
  BRAM_PORTB_0_din(7) <= \<const0>\;
  BRAM_PORTB_0_din(6) <= \<const1>\;
  BRAM_PORTB_0_din(5) <= \<const1>\;
  BRAM_PORTB_0_din(4) <= \<const1>\;
  BRAM_PORTB_0_din(3) <= \<const1>\;
  BRAM_PORTB_0_din(2) <= \<const0>\;
  BRAM_PORTB_0_din(1) <= \<const0>\;
  BRAM_PORTB_0_din(0) <= \<const0>\;
  BRAM_PORTB_0_en <= \<const1>\;
  BRAM_PORTB_0_rst <= \<const0>\;
  BRAM_PORTB_0_we(3) <= \<const0>\;
  BRAM_PORTB_0_we(2) <= \<const0>\;
  BRAM_PORTB_0_we(1) <= \<const0>\;
  BRAM_PORTB_0_we(0) <= \<const0>\;
  \^clk100mhz\ <= CLK100MHZ;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.audio_vocoder_vga_driver_0_upgraded_ipi_0_vga_driver
     port map (
      BRAM_PORTB_0_addr(21) => \^bram_portb_0_addr\(30),
      BRAM_PORTB_0_addr(20 downto 0) => \^bram_portb_0_addr\(20 downto 0),
      BRAM_PORTB_0_dout(11 downto 0) => BRAM_PORTB_0_dout(11 downto 0),
      CLK100MHZ => \^clk100mhz\,
      VGA_B(3 downto 0) => VGA_B(3 downto 0),
      VGA_G(3 downto 0) => VGA_G(3 downto 0),
      VGA_HS => VGA_HS,
      VGA_R(3 downto 0) => VGA_R(3 downto 0),
      VGA_VS => VGA_VS
    );
end STRUCTURE;
