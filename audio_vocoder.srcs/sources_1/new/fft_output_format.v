`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/26/2024 09:28:09 PM
// Design Name: 
// Module Name: fft_output_format
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


module fft_output_format(
    input clk,
    input wire [47:0] fft_data,
    input wire [23:0] fft_index,
    
    output wire [31:0] bin0,
    output wire [31:0] bin1,
    output wire [31:0] bin2,
    output wire [31:0] bin3,
    output wire [31:0] bin4,
    output wire [31:0] bin5,
    output wire [31:0] bin6,
    output wire [31:0] bin7,
    output wire [31:0] bin8,
    output wire [31:0] bin9
    );
    
    reg [31:0] bin0_reg;
    reg [31:0] bin1_reg;
    reg [31:0] bin2_reg;
    reg [31:0] bin3_reg;
    reg [31:0] bin4_reg;
    reg [31:0] bin5_reg;
    reg [31:0] bin6_reg;
    reg [31:0] bin7_reg;
    reg [31:0] bin8_reg;
    reg [31:0] bin9_reg;

    
    always @(posedge clk) begin
        if(fft_index == 0)
            bin0_reg = (fft_data[23:12]**2 + fft_data[11:0]**2);
        if(fft_index == 100)
            bin1_reg = (fft_data[23:12]**2 + fft_data[11:0]**2);
        if(fft_index == 200)
            bin2_reg = (fft_data[23:12]**2 + fft_data[11:0]**2);
        if(fft_index == 300)
            bin3_reg = (fft_data[23:12]**2 + fft_data[11:0]**2);
        if(fft_index == 400)
            bin4_reg = (fft_data[23:12]**2 + fft_data[11:0]**2);
        if(fft_index == 500)
            bin5_reg = (fft_data[23:12]**2 + fft_data[11:0]**2);
        if(fft_index == 600)
            bin6_reg = (fft_data[23:12]**2 + fft_data[11:0]**2);
        if(fft_index == 700)
            bin7_reg = (fft_data[23:12]**2 + fft_data[11:0]**2);
        if(fft_index == 800)
            bin8_reg = (fft_data[23:12]**2 + fft_data[11:0]**2);
        if(fft_index == 900)
            bin9_reg = (fft_data[23:12]**2 + fft_data[11:0]**2);
        
    end
    
    assign bin0 = bin0_reg;
    assign bin1 = bin1_reg;
    assign bin2 = bin2_reg;
    assign bin3 = bin3_reg;
    assign bin4 = bin4_reg;
    assign bin5 = bin5_reg;
    assign bin6 = bin6_reg;
    assign bin7 = bin7_reg;
    assign bin8 = bin8_reg;
    assign bin9 = bin9_reg;
    
    
endmodule
