`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/02/2024 10:24:11 PM
// Design Name: 
// Module Name: invFFT
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module invFFT#(
    parameter DATAWIDTH = 48
)(
    input clk,
    input logic [DATAWIDTH-1:0] dataIn,
    output logic [DATAWIDTH-1:0] dataOut
);

logic [DATAWIDTH-1:0] mFFTSData;
logic mFFTSValid;
logic mFFTSReady;
logic mFFTSLast;

logic [DATAWIDTH-1:0] sFFTMData;
logic sFFTMValid;
logic sFFTMReady;
logic sFFTMLast;

//logic [10:0] configData;
logic configData;
logic configValid;
logic configReady;

//assign configData = 11'b01101010110;
assign configValid = 1'b0;


assign mFFTSValid = 1;
assign mFFTSLast = 0;
assign mFFTSData = dataIn;


assign sFFTMReady = 1;
assign dataOut = sFFTMData;



xfft_0 fwdInvIP (
  .aclk(clk),                                                // input wire aclk
  .s_axis_config_tdata({configData}),                  // input wire [15 : 0] s_axis_config_tdata
  .s_axis_config_tvalid(configValid),                // input wire s_axis_config_tvalid
  .s_axis_config_tready(configReady),                // output wire s_axis_config_tready
  .s_axis_data_tdata(mFFTSData),                      // input wire [31 : 0] s_axis_data_tdata
  .s_axis_data_tvalid(mFFTSValid),                    // input wire s_axis_data_tvalid
  .s_axis_data_tready(mFFTSReady),                    // output wire s_axis_data_tready
  .s_axis_data_tlast(mFFTSLast),                      // input wire s_axis_data_tlast
  .m_axis_data_tdata(sFFTMData),                      // output wire [31 : 0] m_axis_data_tdata
  .m_axis_data_tvalid(sFFTMValid),                    // output wire m_axis_data_tvalid
  .m_axis_data_tready(sFFTMReady),                    // input wire m_axis_data_tready
  .m_axis_data_tlast(sFFTMLast),                      // output wire m_axis_data_tlast
  .event_frame_started(event_frame_started),                  // output wire event_frame_started 
  .event_tlast_unexpected(event_tlast_unexpected),            // output wire event_tlast_unexpected
  .event_tlast_missing(event_tlast_missing),                  // output wire event_tlast_missing
  .event_status_channel_halt(event_status_channel_halt),      // output wire event_status_channel_halt
  .event_data_in_channel_halt(event_data_in_channel_halt),    // output wire event_data_in_channel_halt
  .event_data_out_channel_halt(event_data_out_channel_halt)  // output wire event_data_out_channel_halt
);

 endmodule
