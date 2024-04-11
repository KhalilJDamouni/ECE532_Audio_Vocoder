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
    //input clk,
    input logic [DATAWIDTH-1:0] dataIn,
    output logic [DATAWIDTH-1:0] dataOut,
    
        //slave interface signals for FFT
    output logic [7:0] configData_IFFT,
    output logic configValid_IFFT,
    input logic configReady_IFFT,
     
    output logic signed [DATAWIDTH-1:0] mIFFTSData, //to fft    
    output logic mIFFTSValid,
    input logic mIFFTSReady,
    output logic mIFFTSLast,    
    // master interface signals for FFT
    input logic signed [DATAWIDTH-1:0] sIFFTMData,
    input logic sIFFTMValid,
    output logic sIFFTMReady,
    input logic sIFFTMLast    
    
);

logic [3:0] configData;
logic configValid;
logic configReady;

assign configData = 4'b0000;
assign configData_IFFT = {4'd0, configData};
assign configValid_IFFT = 1;


assign mIFFTSValid = 1;
assign mIFFTSLast = 0;
assign mIFFTSData = dataIn;


assign sIFFTMReady = 1;
assign dataOut = sIFFTMData;


/*
xfft_0 fwdInvIP (
  .aclk(clk),                                                // input wire aclk
  .s_axis_config_tdata({4'd0, configData}),                  // input wire [15 : 0] s_axis_config_tdata
  .s_axis_config_tvalid(configValid),                // input wire s_axis_config_tvalid
  .s_axis_config_tready(configReady),                // output wire s_axis_config_tready
  .s_axis_data_tdata(mIFFTSData),                      // input wire [31 : 0] s_axis_data_tdata
  .s_axis_data_tvalid(mIFFTSValid),                    // input wire s_axis_data_tvalid
  .s_axis_data_tready(mIFFTSReady),                    // output wire s_axis_data_tready
  .s_axis_data_tlast(mIFFTSLast),                      // input wire s_axis_data_tlast
  .m_axis_data_tdata(sIFFTMData),                      // output wire [31 : 0] m_axis_data_tdata
  .m_axis_data_tvalid(sIFFTMValid),                    // output wire m_axis_data_tvalid
  .m_axis_data_tready(sIFFTMReady),                    // input wire m_axis_data_tready
  .m_axis_data_tlast(sIFFTMLast),                      // output wire m_axis_data_tlast
  .event_frame_started(event_frame_started),                  // output wire event_frame_started 
  .event_tlast_unexpected(event_tlast_unexpected),            // output wire event_tlast_unexpected
  .event_tlast_missing(event_tlast_missing),                  // output wire event_tlast_missing
  .event_status_channel_halt(event_status_channel_halt),      // output wire event_status_channel_halt
  .event_data_in_channel_halt(event_data_in_channel_halt),    // output wire event_data_in_channel_halt
  .event_data_out_channel_halt(event_data_out_channel_halt)  // output wire event_data_out_channel_halt
);
*/

 endmodule
