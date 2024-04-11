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


// IP VLNV: xilinx.com:module_ref:vga_driver:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_vga_driver_0_upgraded_ipi_1 (
  CLK100MHZ,
  CPU_RESETN,
  VGA_R,
  VGA_G,
  VGA_B,
  VGA_HS,
  VGA_VS,
  BRAM_PORTB_0_addr,
  BRAM_PORTB_0_clk,
  BRAM_PORTB_0_din,
  BRAM_PORTB_0_dout,
  BRAM_PORTB_0_en,
  BRAM_PORTB_0_rst,
  BRAM_PORTB_0_we
);

input wire CLK100MHZ;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CPU_RESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 CPU_RESETN RST" *)
input wire CPU_RESETN;
output wire [3 : 0] VGA_R;
output wire [3 : 0] VGA_G;
output wire [3 : 0] VGA_B;
output wire VGA_HS;
output wire VGA_VS;
output wire [31 : 0] BRAM_PORTB_0_addr;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTB_0_clk, ASSOCIATED_RESET BRAM_PORTB_0_rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_vga_driver_0_upgraded_ipi_1_BRAM_PORTB_0_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 BRAM_PORTB_0_clk CLK" *)
output wire BRAM_PORTB_0_clk;
output wire [31 : 0] BRAM_PORTB_0_din;
input wire [31 : 0] BRAM_PORTB_0_dout;
output wire BRAM_PORTB_0_en;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTB_0_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 BRAM_PORTB_0_rst RST" *)
output wire BRAM_PORTB_0_rst;
output wire [3 : 0] BRAM_PORTB_0_we;

  vga_driver inst (
    .CLK100MHZ(CLK100MHZ),
    .CPU_RESETN(CPU_RESETN),
    .VGA_R(VGA_R),
    .VGA_G(VGA_G),
    .VGA_B(VGA_B),
    .VGA_HS(VGA_HS),
    .VGA_VS(VGA_VS),
    .BRAM_PORTB_0_addr(BRAM_PORTB_0_addr),
    .BRAM_PORTB_0_clk(BRAM_PORTB_0_clk),
    .BRAM_PORTB_0_din(BRAM_PORTB_0_din),
    .BRAM_PORTB_0_dout(BRAM_PORTB_0_dout),
    .BRAM_PORTB_0_en(BRAM_PORTB_0_en),
    .BRAM_PORTB_0_rst(BRAM_PORTB_0_rst),
    .BRAM_PORTB_0_we(BRAM_PORTB_0_we)
  );
endmodule
