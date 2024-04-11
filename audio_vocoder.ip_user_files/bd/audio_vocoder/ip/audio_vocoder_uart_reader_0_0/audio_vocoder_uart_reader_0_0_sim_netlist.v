// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
// Date        : Sat Mar 23 19:34:20 2024
// Host        : BA3135WS39 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/damounik/March23/final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ip/audio_vocoder_uart_reader_0_0/audio_vocoder_uart_reader_0_0_sim_netlist.v
// Design      : audio_vocoder_uart_reader_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "audio_vocoder_uart_reader_0_0,uart_reader,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "uart_reader,Vivado 2018.3.1" *) 
(* NotValidForBitStream *)
module audio_vocoder_uart_reader_0_0
   (RX,
    CLK100MHZ,
    value,
    number_wire);
  input RX;
  input CLK100MHZ;
  output [9:0]value;
  output [7:0]number_wire;

  wire CLK100MHZ;
  wire RX;
  wire [7:0]number_wire;
  wire [9:0]value;

  audio_vocoder_uart_reader_0_0_uart_reader inst
       (.CLK100MHZ(CLK100MHZ),
        .RX(RX),
        .number_wire(number_wire),
        .value(value));
endmodule

(* ORIG_REF_NAME = "uart_clock" *) 
module audio_vocoder_uart_reader_0_0_uart_clock
   (\counter_reg[0]_0 ,
    CLK100MHZ);
  output \counter_reg[0]_0 ;
  input CLK100MHZ;

  wire CLK100MHZ;
  wire [16:0]counter;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_1;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry__1_n_0;
  wire counter0_carry__1_n_1;
  wire counter0_carry__1_n_2;
  wire counter0_carry__1_n_3;
  wire counter0_carry__2_n_1;
  wire counter0_carry__2_n_2;
  wire counter0_carry__2_n_3;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire [0:0]counter_0;
  wire \counter_reg[0]_0 ;
  wire [16:1]data0;
  wire \value_reg[9]_i_3_n_0 ;
  wire \value_reg[9]_i_4_n_0 ;
  wire \value_reg[9]_i_5_n_0 ;
  wire \value_reg[9]_i_6_n_0 ;
  wire [3:3]NLW_counter0_carry__2_CO_UNCONNECTED;

  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3}),
        .CYINIT(counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(counter[4:1]));
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,counter0_carry__0_n_1,counter0_carry__0_n_2,counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(counter[8:5]));
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({counter0_carry__1_n_0,counter0_carry__1_n_1,counter0_carry__1_n_2,counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(counter[12:9]));
  CARRY4 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CO({NLW_counter0_carry__2_CO_UNCONNECTED[3],counter0_carry__2_n_1,counter0_carry__2_n_2,counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(counter[16:13]));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \counter[0]_i_1__0 
       (.I0(\value_reg[9]_i_3_n_0 ),
        .I1(\value_reg[9]_i_4_n_0 ),
        .I2(\value_reg[9]_i_5_n_0 ),
        .I3(\value_reg[9]_i_6_n_0 ),
        .I4(counter[0]),
        .O(counter_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(counter_0),
        .Q(counter[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(data0[10]),
        .Q(counter[10]),
        .R(\counter_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(data0[11]),
        .Q(counter[11]),
        .R(\counter_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(data0[12]),
        .Q(counter[12]),
        .R(\counter_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(data0[13]),
        .Q(counter[13]),
        .R(\counter_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(data0[14]),
        .Q(counter[14]),
        .R(\counter_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(data0[15]),
        .Q(counter[15]),
        .R(\counter_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(data0[16]),
        .Q(counter[16]),
        .R(\counter_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(data0[1]),
        .Q(counter[1]),
        .R(\counter_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(data0[2]),
        .Q(counter[2]),
        .R(\counter_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(data0[3]),
        .Q(counter[3]),
        .R(\counter_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(data0[4]),
        .Q(counter[4]),
        .R(\counter_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(data0[5]),
        .Q(counter[5]),
        .R(\counter_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(data0[6]),
        .Q(counter[6]),
        .R(\counter_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(data0[7]),
        .Q(counter[7]),
        .R(\counter_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(data0[8]),
        .Q(counter[8]),
        .R(\counter_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(data0[9]),
        .Q(counter[9]),
        .R(\counter_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \value_reg[9]_i_2 
       (.I0(\value_reg[9]_i_3_n_0 ),
        .I1(\value_reg[9]_i_4_n_0 ),
        .I2(\value_reg[9]_i_5_n_0 ),
        .I3(\value_reg[9]_i_6_n_0 ),
        .I4(counter[0]),
        .O(\counter_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \value_reg[9]_i_3 
       (.I0(counter[9]),
        .I1(counter[10]),
        .I2(counter[12]),
        .I3(counter[11]),
        .O(\value_reg[9]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \value_reg[9]_i_4 
       (.I0(counter[14]),
        .I1(counter[13]),
        .I2(counter[16]),
        .I3(counter[15]),
        .O(\value_reg[9]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \value_reg[9]_i_5 
       (.I0(counter[2]),
        .I1(counter[1]),
        .I2(counter[4]),
        .I3(counter[3]),
        .O(\value_reg[9]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \value_reg[9]_i_6 
       (.I0(counter[6]),
        .I1(counter[5]),
        .I2(counter[8]),
        .I3(counter[7]),
        .O(\value_reg[9]_i_6_n_0 ));
endmodule

(* ORIG_REF_NAME = "uart_reader" *) 
module audio_vocoder_uart_reader_0_0_uart_reader
   (value,
    number_wire,
    CLK100MHZ,
    RX);
  output [9:0]value;
  output [7:0]number_wire;
  input CLK100MHZ;
  input RX;

  wire CLK100MHZ;
  wire RX;
  wire [3:0]counter_0;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[3] ;
  wire \number[3]_i_2_n_0 ;
  wire \number_reg[3]_i_1_n_0 ;
  wire \number_reg[3]_i_1_n_1 ;
  wire \number_reg[3]_i_1_n_2 ;
  wire \number_reg[3]_i_1_n_3 ;
  wire \number_reg[3]_i_1_n_4 ;
  wire \number_reg[3]_i_1_n_5 ;
  wire \number_reg[3]_i_1_n_6 ;
  wire \number_reg[3]_i_1_n_7 ;
  wire \number_reg[7]_i_2_n_1 ;
  wire \number_reg[7]_i_2_n_2 ;
  wire \number_reg[7]_i_2_n_3 ;
  wire \number_reg[7]_i_2_n_4 ;
  wire \number_reg[7]_i_2_n_5 ;
  wire \number_reg[7]_i_2_n_6 ;
  wire \number_reg[7]_i_2_n_7 ;
  wire [7:0]number_wire;
  wire sel;
  wire uart_block_mod_n_0;
  wire [9:0]value;
  wire \value_reg[9]_i_1_n_0 ;
  wire [3:3]\NLW_number_reg[7]_i_2_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h55545557)) 
    \counter[0]_i_1 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(\counter_reg_n_0_[3] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[1] ),
        .I4(RX),
        .O(counter_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h9998)) 
    \counter[1]_i_1 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[3] ),
        .O(counter_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hE1E0)) 
    \counter[2]_i_1 
       (.I0(\counter_reg_n_0_[1] ),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[3] ),
        .O(counter_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF0F0F0A3)) 
    \counter[3]_i_1 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(RX),
        .I2(\counter_reg_n_0_[3] ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\counter_reg_n_0_[1] ),
        .O(counter_0[3]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(uart_block_mod_n_0),
        .CE(1'b1),
        .D(counter_0[0]),
        .Q(\counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(uart_block_mod_n_0),
        .CE(1'b1),
        .D(counter_0[1]),
        .Q(\counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(uart_block_mod_n_0),
        .CE(1'b1),
        .D(counter_0[2]),
        .Q(\counter_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(uart_block_mod_n_0),
        .CE(1'b1),
        .D(counter_0[3]),
        .Q(\counter_reg_n_0_[3] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \number[3]_i_2 
       (.I0(number_wire[0]),
        .O(\number[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \number[7]_i_1 
       (.I0(\counter_reg_n_0_[1] ),
        .I1(\counter_reg_n_0_[2] ),
        .I2(\counter_reg_n_0_[3] ),
        .I3(RX),
        .O(sel));
  FDRE #(
    .INIT(1'b0)) 
    \number_reg[0] 
       (.C(uart_block_mod_n_0),
        .CE(sel),
        .D(\number_reg[3]_i_1_n_7 ),
        .Q(number_wire[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \number_reg[1] 
       (.C(uart_block_mod_n_0),
        .CE(sel),
        .D(\number_reg[3]_i_1_n_6 ),
        .Q(number_wire[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \number_reg[2] 
       (.C(uart_block_mod_n_0),
        .CE(sel),
        .D(\number_reg[3]_i_1_n_5 ),
        .Q(number_wire[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \number_reg[3] 
       (.C(uart_block_mod_n_0),
        .CE(sel),
        .D(\number_reg[3]_i_1_n_4 ),
        .Q(number_wire[3]),
        .R(1'b0));
  CARRY4 \number_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\number_reg[3]_i_1_n_0 ,\number_reg[3]_i_1_n_1 ,\number_reg[3]_i_1_n_2 ,\number_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\number_reg[3]_i_1_n_4 ,\number_reg[3]_i_1_n_5 ,\number_reg[3]_i_1_n_6 ,\number_reg[3]_i_1_n_7 }),
        .S({number_wire[3:1],\number[3]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \number_reg[4] 
       (.C(uart_block_mod_n_0),
        .CE(sel),
        .D(\number_reg[7]_i_2_n_7 ),
        .Q(number_wire[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \number_reg[5] 
       (.C(uart_block_mod_n_0),
        .CE(sel),
        .D(\number_reg[7]_i_2_n_6 ),
        .Q(number_wire[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \number_reg[6] 
       (.C(uart_block_mod_n_0),
        .CE(sel),
        .D(\number_reg[7]_i_2_n_5 ),
        .Q(number_wire[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \number_reg[7] 
       (.C(uart_block_mod_n_0),
        .CE(sel),
        .D(\number_reg[7]_i_2_n_4 ),
        .Q(number_wire[7]),
        .R(1'b0));
  CARRY4 \number_reg[7]_i_2 
       (.CI(\number_reg[3]_i_1_n_0 ),
        .CO({\NLW_number_reg[7]_i_2_CO_UNCONNECTED [3],\number_reg[7]_i_2_n_1 ,\number_reg[7]_i_2_n_2 ,\number_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\number_reg[7]_i_2_n_4 ,\number_reg[7]_i_2_n_5 ,\number_reg[7]_i_2_n_6 ,\number_reg[7]_i_2_n_7 }),
        .S(number_wire[7:4]));
  audio_vocoder_uart_reader_0_0_uart_clock uart_block_mod
       (.CLK100MHZ(CLK100MHZ),
        .\counter_reg[0]_0 (uart_block_mod_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \value_reg[9]_i_1 
       (.I0(\counter_reg_n_0_[1] ),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[3] ),
        .I3(\counter_reg_n_0_[2] ),
        .O(\value_reg[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \value_reg_reg[0] 
       (.C(uart_block_mod_n_0),
        .CE(\value_reg[9]_i_1_n_0 ),
        .D(RX),
        .Q(value[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \value_reg_reg[1] 
       (.C(uart_block_mod_n_0),
        .CE(\value_reg[9]_i_1_n_0 ),
        .D(value[0]),
        .Q(value[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \value_reg_reg[2] 
       (.C(uart_block_mod_n_0),
        .CE(\value_reg[9]_i_1_n_0 ),
        .D(value[1]),
        .Q(value[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \value_reg_reg[3] 
       (.C(uart_block_mod_n_0),
        .CE(\value_reg[9]_i_1_n_0 ),
        .D(value[2]),
        .Q(value[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \value_reg_reg[4] 
       (.C(uart_block_mod_n_0),
        .CE(\value_reg[9]_i_1_n_0 ),
        .D(value[3]),
        .Q(value[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \value_reg_reg[5] 
       (.C(uart_block_mod_n_0),
        .CE(\value_reg[9]_i_1_n_0 ),
        .D(value[4]),
        .Q(value[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \value_reg_reg[6] 
       (.C(uart_block_mod_n_0),
        .CE(\value_reg[9]_i_1_n_0 ),
        .D(value[5]),
        .Q(value[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \value_reg_reg[7] 
       (.C(uart_block_mod_n_0),
        .CE(\value_reg[9]_i_1_n_0 ),
        .D(value[6]),
        .Q(value[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \value_reg_reg[8] 
       (.C(uart_block_mod_n_0),
        .CE(\value_reg[9]_i_1_n_0 ),
        .D(value[7]),
        .Q(value[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \value_reg_reg[9] 
       (.C(uart_block_mod_n_0),
        .CE(\value_reg[9]_i_1_n_0 ),
        .D(value[8]),
        .Q(value[9]),
        .R(1'b0));
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
