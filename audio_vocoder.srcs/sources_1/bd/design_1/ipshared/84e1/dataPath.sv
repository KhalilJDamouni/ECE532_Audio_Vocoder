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
    input logic clk_12,
    output logic aclk_48k,
    input signed [9:0] processingVal,
    input  [9:0] windowVal,
    input  [1:0] windowFreqEn,
    
    input logic signed [SAMPLEWIDTH-1:0] audiodataIn,
    output logic signed [SAMPLEWIDTH-1:0] audiodataOut,
    
    output logic signed [DATAWIDTH-1:0] fftIn,
    input logic signed [DATAWIDTH-1:0] fftOut,
    
    output logic signed [DATAWIDTH-1:0] ifftIn, 
    input logic signed [DATAWIDTH-1:0] ifftOut
    
    
);
//generate axi clock
logic clk_48k = 0;
logic [7:0] counter = 0; 
always @(posedge clk_12) begin
    if(counter == 8'b11111111) begin //256
         clk_48k <= ~clk_48k;
         counter <=  0;
    end
    else
        counter <= counter + 1;   
end
assign aclk_48k = clk_48k;
//****************Processing Logic*****************//

logic signed [SAMPLEWIDTH-1:0] audioImg;

logic signed [SAMPLEWIDTH-1:0] imgFFTOut;
logic signed [SAMPLEWIDTH-1:0] realFFTOut;
logic signed [SAMPLEWIDTH-1:0] imgIFFTIn;
logic signed [SAMPLEWIDTH-1:0] realIFFTIn;

logic [9:0] counterSamples = 0; // added this part


assign audioImg = 0;
assign fftIn = {audioImg, audiodataIn};

//fwdFFT fft1(
//    .clk(clk),
//    .dataIn(fftIn),
//    .dataOut(fftOut)
//);

assign imgFFTOut = fftOut[47:24];
assign realFFTOut = fftOut[23:0];

//commented this out
//assign imgIFFTIn = imgFFTOut * processingVal;
//assign realIFFTIn = realFFTOut;
assign ifftIn = {imgIFFTIn, realIFFTIn}; 

//invFFT fft2(
//    .clk(clk),
//    .dataIn(ifftIn),
//    .dataOut(ifftOut)
//);

//added the always block;
always_ff @(posedge clk_48k) begin
   
    if (windowFreqEn == 0) begin
//        imgIFFTIn  <= imgFFTOut;
//        realIFFTIn <= realFFTOut;
        audiodataOut <= audiodataIn;
    end else if (windowFreqEn == 1) begin //og robot
        imgIFFTIn  <= imgFFTOut * processingVal;
        realIFFTIn <= realFFTOut;
        audiodataOut <= ifftOut[SAMPLEWIDTH-1:0];
    end else if (windowFreqEn == 2) begin
        if (counterSamples < windowVal) begin //deep
            imgIFFTIn <= 0;
            realIFFTIn <= 0;
        end else begin
            imgIFFTIn <= imgFFTOut * processingVal;
            realIFFTIn <= realFFTOut;
        end
        audiodataOut <= ifftOut[SAMPLEWIDTH-1:0];
    end else if (windowFreqEn == 3) begin //high
        if (counterSamples < windowVal) begin
            imgIFFTIn <= imgFFTOut * processingVal;
            realIFFTIn <= realFFTOut;
        end else begin
            imgIFFTIn  <= 0;
            realIFFTIn <= 0;
        end        
        audiodataOut <= ifftOut[SAMPLEWIDTH-1:0];
    end
     
    counterSamples <= counterSamples + 1;
   
end

//assign audiodataOut = ifftOut[SAMPLEWIDTH-1:0];


endmodule
