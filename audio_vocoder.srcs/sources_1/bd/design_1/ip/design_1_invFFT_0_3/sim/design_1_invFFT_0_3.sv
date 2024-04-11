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


// IP VLNV: utoronto.ca:user:invFFT:1.0
// IP Revision: 2

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_invFFT_0_3 (
  dataIn,
  dataOut,
  configData_IFFT,
  configValid_IFFT,
  configReady_IFFT,
  mIFFTSData,
  mIFFTSValid,
  mIFFTSReady,
  mIFFTSLast,
  sIFFTMData,
  sIFFTMValid,
  sIFFTMReady,
  sIFFTMLast
);

input wire [47 : 0] dataIn;
output wire [47 : 0] dataOut;
output wire [7 : 0] configData_IFFT;
output wire configValid_IFFT;
input wire configReady_IFFT;
output wire [47 : 0] mIFFTSData;
output wire mIFFTSValid;
input wire mIFFTSReady;
output wire mIFFTSLast;
input wire [47 : 0] sIFFTMData;
input wire sIFFTMValid;
output wire sIFFTMReady;
input wire sIFFTMLast;

  invFFT #(
    .DATAWIDTH(48)
  ) inst (
    .dataIn(dataIn),
    .dataOut(dataOut),
    .configData_IFFT(configData_IFFT),
    .configValid_IFFT(configValid_IFFT),
    .configReady_IFFT(configReady_IFFT),
    .mIFFTSData(mIFFTSData),
    .mIFFTSValid(mIFFTSValid),
    .mIFFTSReady(mIFFTSReady),
    .mIFFTSLast(mIFFTSLast),
    .sIFFTMData(sIFFTMData),
    .sIFFTMValid(sIFFTMValid),
    .sIFFTMReady(sIFFTMReady),
    .sIFFTMLast(sIFFTMLast)
  );
endmodule
