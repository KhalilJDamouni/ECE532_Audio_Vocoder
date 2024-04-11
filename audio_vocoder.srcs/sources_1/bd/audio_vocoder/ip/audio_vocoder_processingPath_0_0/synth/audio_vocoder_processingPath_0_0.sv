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


// IP VLNV: utoronto.ca:user:processingPath:1.0
// IP Revision: 2

(* X_CORE_INFO = "processingPath,Vivado 2018.3.1" *)
(* CHECK_LICENSE_TYPE = "audio_vocoder_processingPath_0_0,processingPath,{}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module audio_vocoder_processingPath_0_0 (
  clk_12,
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
  outputIFFTData
);

input wire clk_12;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *)
input wire resetn;
input wire [23 : 0] inputSample;
output wire [23 : 0] outputSample;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN audio_vocoder_processingPath_0_0_axi_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axi_clk CLK" *)
output wire axi_clk;
output wire [15 : 0] configDataFFT;
output wire configValidFFT;
input wire configReadyFFT;
output wire outValidFFT;
output wire outLastFFT;
input wire inReadyFFT;
output wire [47 : 0] inputFFTData;
output wire [15 : 0] configDataIFFT;
output wire configValidIFFT;
input wire configReadyIFFT;
input wire inValidIFFT;
input wire inLastIFFT;
output wire outReadyIFFT;
input wire [47 : 0] outputIFFTData;

  processingPath #(
    .DATAWIDTH(48),
    .SAMPLEWIDTH(24)
  ) inst (
    .clk_12(clk_12),
    .resetn(resetn),
    .inputSample(inputSample),
    .outputSample(outputSample),
    .axi_clk(axi_clk),
    .configDataFFT(configDataFFT),
    .configValidFFT(configValidFFT),
    .configReadyFFT(configReadyFFT),
    .outValidFFT(outValidFFT),
    .outLastFFT(outLastFFT),
    .inReadyFFT(inReadyFFT),
    .inputFFTData(inputFFTData),
    .configDataIFFT(configDataIFFT),
    .configValidIFFT(configValidIFFT),
    .configReadyIFFT(configReadyIFFT),
    .inValidIFFT(inValidIFFT),
    .inLastIFFT(inLastIFFT),
    .outReadyIFFT(outReadyIFFT),
    .outputIFFTData(outputIFFTData)
  );
endmodule
