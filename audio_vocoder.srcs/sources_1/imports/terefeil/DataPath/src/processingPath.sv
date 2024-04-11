`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/02/2024 10:33:31 PM
// Design Name: 
// Module Name: processingPath
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


module processingPath#(
    parameter DATAWIDTH = 48,
    parameter SAMPLEWIDTH = 24
)(
    input logic clk_12, //12.288Mhz clock
    input logic resetn,
    input logic signed [SAMPLEWIDTH-1:0] inputSample, //from mic
    output logic signed [SAMPLEWIDTH-1:0] outputSample, //to speaker
         
    //axi clock 48k
    output logic axi_clk,
    //axi stream signals for FFT
    output logic [15:0] configDataFFT,
    output logic configValidFFT,
    input logic configReadyFFT,
    
    output logic outValidFFT,
    output logic outLastFFT,
    input  logic inReadyFFT,
    
    output logic signed [DATAWIDTH-1:0] inputFFTData, //to fft
    
    //axi stream signals for IFFT
    output logic [7:0] configDataIFFT,
    output logic configValidIFFT,
    input logic configReadyIFFT,
    
    input logic inValidIFFT,
    input logic inLastIFFT,
    output logic outReadyIFFT,
    input logic signed [DATAWIDTH-1:0] outputIFFTData //from ifft
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

assign axi_clk = clk_48k;

//CONFIG SIGNALS =====================================
assign configDataFFT = {5'd0, 11'b01101010111};
assign configValidFFT = 1;   

assign configDataIFFT = {5'd0, 11'b01101010110};
assign configValidIFFT = 1;   

assign outValidFFT = 1'b1;
assign outLastFFT = 1'b0;

assign outReadyIFFT = 1'b1;
    
/////////////////////////////////////////
// Data Related
////////////////////////////////////////
logic signed [DATAWIDTH-1:0] inputData;
logic signed [DATAWIDTH-1:0] outputData;

always_ff @(posedge clk_12) begin
    if (!resetn) begin
        inputData <= 0;
        outputSample <= 0;
    end else begin
        inputData <= {24'd0, inputSample};
        outputSample <= outputData[SAMPLEWIDTH-1:0];
    end
end

assign inputFFTData = inputData; //to fft
assign outputData = outputIFFTData; //direct from ifft

//assign outputData = inputIFFTData;
   
     
endmodule