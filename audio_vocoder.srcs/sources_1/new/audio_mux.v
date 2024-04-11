module audio_mux(
    input [1:0]  windowEnable,
    input signed [23:0] pre_filter,
    input signed [23:0]post_filter,
    output signed [23:0]aud_out);
    
    assign aud_out = (windowEnable == 2'b0)? pre_filter: post_filter;
    

endmodule