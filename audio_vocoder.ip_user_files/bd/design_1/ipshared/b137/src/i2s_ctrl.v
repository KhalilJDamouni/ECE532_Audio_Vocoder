`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/12/2024 03:29:01 PM
// Design Name: 
// Module Name: i2s_ctrl
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


module i2s_ctl #(parameter C_DATA_WIDTH = 24 ) (
    input wire CLK_IN,       // codec clock (12.288Mhz)
    input wire resetn,       // System reset
    input wire EN_TX_I,     // Transmit enable
    input wire EN_RX_I,     // Receive enable
    //input wire [C_DATA_WIDTH-1:0] D_L_I, //left channel data
    //input wire [C_DATA_WIDTH-1:0] D_R_I //right channel data
    //output wire [C_DATA_WIDTH-1:0] D_L_O, 
    //output wire [C_DATA_WIDTH-1:0] D_R_O,
    output wire BCLK_O,     // Serial CLK
    output wire LRCLK_O,    // Channel CLK
    output wire signed SDATA_O,    // Output serial data
    input wire signed SDATA_I,      // Input serial data
    
    output wire signed [C_DATA_WIDTH-1:0] mic_to_datapath,
    input wire signed [C_DATA_WIDTH-1:0] datapath_to_speaker
);

    //parameter C_DATA_WIDTH = 24; // Default data width
    
    // Signal Declarations
    // Counter for the clock divider
    reg [4:0] Cnt_Bclk = 0;
    // Counter for the L/R clock divider
    reg [4:0] Cnt_Lrclk = 0;
    // Rising and Falling edge impulses of the serial clock
    wire  BCLK_Fall, BCLK_Rise;
    // Synchronization signals for Rising and Falling edge
   // reg Q1R, Q2R, Q3R;
   // reg Q1F, Q2F, Q3F;
    // Internal synchronous BCLK signal
    reg BCLK_int = 0;
    // Internal synchronous LRCLK signal
    wire LRCLK_int;
    reg LRCLK = 0;
    // Division rate for the BCLK and LRCLK
  //  reg [2:0] DIV_RATE = 4;
    
    reg signed [C_DATA_WIDTH-1:0] Data_Out_int;
    reg signed [C_DATA_WIDTH-1:0] Data_In_int;
    
    reg signed [C_DATA_WIDTH-1:0] D_L_O_int; 
    reg signed [C_DATA_WIDTH-1:0] D_R_O_int;
    wire signed [C_DATA_WIDTH-1:0] D_L_Out; 
    wire signed [C_DATA_WIDTH-1:0] D_R_Out; 

    
    parameter DIV_RATE = 4; //48KhZ SAMPLING RATE

    
    // Serial clock generator (BCLK_O, BCLK_Fall, BCLK_Rise)
    always @(posedge CLK_IN) begin
        if (~resetn) begin
            Cnt_Bclk <= 0;
            BCLK_int <= 0;
        end else if (Cnt_Bclk == (DIV_RATE >> 1) - 1) begin
            Cnt_Bclk <= 0;
            BCLK_int <= ~BCLK_int;
        end else begin
            Cnt_Bclk <= Cnt_Bclk + 1;
        end
    end
    //falling and rising edge
    assign BCLK_Fall = ((Cnt_Bclk == ((DIV_RATE/2)-1)) && (BCLK_int == 1'b1) && (EN_RX_I || EN_TX_I)) ? 1'b1 : 1'b0;
    assign BCLK_Rise = ((Cnt_Bclk == ((DIV_RATE/2)-1)) && (BCLK_int == 1'b0) && (EN_RX_I || EN_TX_I)) ? 1'b1 : 1'b0;
    
    //serial clock output
    assign BCLK_O = (EN_RX_I || EN_TX_I)? BCLK_int : 1'b1;
    
    
    // Left/Right clock generator (LRCLK_O, LRCLK_Pls)
    always @(posedge CLK_IN) begin
        if (~resetn) begin
            Cnt_Lrclk <= 0;
            LRCLK <= 0; //left channel active by default
        end else if (BCLK_Fall) begin
            if (Cnt_Lrclk == 31) begin //half of frame (64 bits)
                Cnt_Lrclk <= 0;
                LRCLK <= ~LRCLK;
            end else begin
                Cnt_Lrclk <= Cnt_Lrclk + 1;
            end
        end
    end
    
    assign LRCLK_O = (EN_TX_I || EN_RX_I) ? LRCLK : 1'b0;
    assign LRCLK_int = LRCLK;
    
    // Shift in serial data, load out parallel data (SDATA_I)
    always @(posedge CLK_IN) begin
        if (~resetn) begin
            Data_In_int <= 0;
            D_L_O_int <= 0;//C_DATA_WIDTH'd0;
            D_R_O_int <= 0;//C_DATA_WIDTH'd0;
        end else if (Cnt_Lrclk == 0 && BCLK_Fall) begin
            if (LRCLK_int) begin
             // D_L_O_int <= Data_In_int; //STORE LEFT CHANNEL
                D_L_O_int <= datapath_to_speaker;
            end else begin
            //  D_R_O_int <= Data_In_int; //STORE RIGHT CHANNEL
                D_R_O_int <= datapath_to_speaker;
            end
        end else if (BCLK_Rise) begin //SHIFT IN SERIAL DATA
            Data_In_int <= {Data_In_int[(C_DATA_WIDTH-2):0], SDATA_I};
        end
    end
    
    assign D_L_Out = D_L_O_int;
    assign D_R_Out = D_R_O_int;
    assign mic_to_datapath = Data_In_int;
    
    
  /*assign D_R_I = D_R_I_int;
    assign D_R_O = D_R_O_int;*/

    // Load in parallel data, shift out serial data (SDATA_O)
    always @(posedge CLK_IN) begin
        if (~resetn) begin
            Data_Out_int <= 0;
         //   Data_Out_int[30 +: C_DATA_WIDTH] <= D_L_Out;
        end else if (Cnt_Lrclk == 0 && BCLK_Rise) begin //load parallel data
            if (LRCLK_int) begin
                Data_Out_int <= D_R_Out; //RIGHT CHANNEL DATA
            end else begin
                Data_Out_int <= D_L_Out; ///LEFT CHANNEL DATA
            end
        end else if (BCLK_Fall) begin //shift out serial data
            Data_Out_int <= {Data_Out_int[(C_DATA_WIDTH-2):0], 1'b0};
        end
    end
    
    assign SDATA_O = (EN_TX_I) ? Data_Out_int[23] : 1'b0;
    
endmodule