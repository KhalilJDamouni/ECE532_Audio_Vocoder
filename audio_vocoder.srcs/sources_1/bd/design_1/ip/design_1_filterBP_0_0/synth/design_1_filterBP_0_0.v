// (c) Copyright 1995-2024 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: utoronto.ca:user:filterBP:1.0
// IP Revision: 1

(* X_CORE_INFO = "filterBP13,Vivado 2018.3.1" *)
(* CHECK_LICENSE_TYPE = "design_1_filterBP_0_0,filterBP13,{}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_filterBP_0_0 (
  clk,
  clk_enable,
  resetn,
  filter_in,
  filter_out
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
input wire clk_enable;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *)
input wire resetn;
input wire [23 : 0] filter_in;
output wire [23 : 0] filter_out;

  filterBP13 #(
    .coeff1(16'H016B),
    .coeff2(16'HFEBA),
    .coeff3(16'HFFBF),
    .coeff4(16'H00E6),
    .coeff5(16'HFD9C),
    .coeff6(16'H0262),
    .coeff7(16'HFD47),
    .coeff8(16'H0147),
    .coeff9(16'HFFBD),
    .coeff10(16'HFDE8),
    .coeff11(16'H033C),
    .coeff12(16'HFB3C),
    .coeff13(16'H0421),
    .coeff14(16'HFCD4),
    .coeff15(16'HFFBC),
    .coeff16(16'H03D1),
    .coeff17(16'HF6E0),
    .coeff18(16'H0D62),
    .coeff19(16'HEDFD),
    .coeff20(16'H143B),
    .coeff21(16'H6B15),
    .coeff22(16'H143B),
    .coeff23(16'HEDFD),
    .coeff24(16'H0D62),
    .coeff25(16'HF6E0),
    .coeff26(16'H03D1),
    .coeff27(16'HFFBC),
    .coeff28(16'HFCD4),
    .coeff29(16'H0421),
    .coeff30(16'HFB3C),
    .coeff31(16'H033C),
    .coeff32(16'HFDE8),
    .coeff33(16'HFFBD),
    .coeff34(16'H0147),
    .coeff35(16'HFD47),
    .coeff36(16'H0262),
    .coeff37(16'HFD9C),
    .coeff38(16'H00E6),
    .coeff39(16'HFFBF),
    .coeff40(16'HFEBA),
    .coeff41(16'H016B)
  ) inst (
    .clk(clk),
    .clk_enable(clk_enable),
    .resetn(resetn),
    .filter_in(filter_in),
    .filter_out(filter_out)
  );
endmodule
