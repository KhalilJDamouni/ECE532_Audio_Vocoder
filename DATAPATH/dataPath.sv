`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/02/2024 10:24:11 PM
// Design Name: 
// Module Name: dataPath
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


module dataPath#(
    parameter SAMPLEWIDTH = 24,
    parameter DATAWIDTH = 48
)(
    input logic clk,
    input signed [9:0] processingVal,
    input logic signed [SAMPLEWIDTH-1:0] dataIn,
    output logic signed [SAMPLEWIDTH-1:0] dataOut
);


//****************Processing Logic*****************//

logic signed [SAMPLEWIDTH-1:0] audioImg;
logic signed [DATAWIDTH-1:0] fftIn;
logic signed [DATAWIDTH-1:0] fftOut;
logic signed [DATAWIDTH-1:0] ifftIn;
logic signed [DATAWIDTH-1:0] ifftOut;

logic signed [SAMPLEWIDTH-1:0] imgFFTOut;
logic signed [SAMPLEWIDTH-1:0] realFFTOut;
logic signed [SAMPLEWIDTH-1:0] imgIFFTIn;
logic signed [SAMPLEWIDTH-1:0] realIFFTIn;


assign audioImg = 0;
assign fftIn = {audioImg, dataIn};

fwdFFT fft1(
    .clk(clk),
    .dataIn(fftIn),
    .dataOut(fftOut)
);

assign imgFFTOut = fftOut[47:24];
assign realFFTOut = fftOut[23:0];

assign imgIFFTIn = imgFFTOut * processingVal;
assign realIFFTIn = realFFTOut;

assign ifftIn = {imgIFFTIn, realIFFTIn}; 

invFFT fft2(
    .clk(clk),
    .dataIn(ifftIn),
    .dataOut(ifftOut)
);

assign dataOut = ifftOut[SAMPLEWIDTH-1:0];

endmodule
