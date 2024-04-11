module i2s_rx_tx #(parameter C_DATA_WIDTH = 24 ) (
   input CLK_12,
   input resetn,
   output BCLK_O,
   output LRCLK_O,
   output MCLK_O,
   input signed SDATA_I,
   output signed SDATA_O,
   input signed [C_DATA_WIDTH-1:0] from_datapath,
   output signed [C_DATA_WIDTH-1:0] to_datapath
);
   
// Signal Declarations
    wire RxEn;
    wire TxEn;
  /*wire CLK_12;
    wire lockclk;
    wire resetn_clk; */
    
    
   // reg clk_128;
   // assign CLK_12 = clk_128;
    assign RxEn = 1'b1;
    assign TxEn = 1'b1;
 
 /*
    //instantiate clock
    
     clk_wiz_0 clk_wiz_0_Inst
     (
      // Clock out ports
      .clk_out1(CLK_12),
      // Status and control signals
      .resetn(resetn),
      .locked(lockclk),
     // Clock in ports
      .clk_in1(CLK_I)
     );
     //reset aligned with clock
     assign resetn_clk = (resetn & lockclk);*/
    
    
    // Instantiate the I2S transmitter module
    i2s_ctl Inst_I2s (
        .CLK_IN(CLK_12),
       // .resetn(resetn),
        .resetn(resetn),
        .EN_TX_I(TxEn),
        .EN_RX_I(RxEn),    
        .BCLK_O(BCLK_O),
        .LRCLK_O(LRCLK_O),
        .SDATA_O(SDATA_O),
        .SDATA_I(SDATA_I),
        .mic_to_datapath(to_datapath),
        .datapath_to_speaker(from_datapath)
    );
   
             
    // Instantiate the ODDR for the Output MCLK
    oddr_0 ODDR_inst (
        .clk_out(MCLK_O),
        .clk_in(CLK_12)
    );

endmodule
