`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/13/2024 07:29:45 PM
// Design Name: 
// Module Name: vga_driver
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

module vga_driver(
    input CLK100MHZ,
    input CPU_RESETN,
    output [3:0] VGA_R,
    output [3:0] VGA_G,
    output [3:0] VGA_B,
    output VGA_HS,
    output VGA_VS,
    
    output [31:0]BRAM_PORTB_0_addr,
    output BRAM_PORTB_0_clk,
    output [31:0]BRAM_PORTB_0_din,
    input [31:0]BRAM_PORTB_0_dout,
    output BRAM_PORTB_0_en,
    output BRAM_PORTB_0_rst,
    output [3:0]BRAM_PORTB_0_we
    );
    
    reg              test_clk = 0;
    wire                 CLK25MHZ;
    wire            test_clk_wire;
    wire [9:0] horizontal_counter;
    wire   [9:0] vertical_counter;
    wire              v_increment;
    
    reg reset = 0;
    reg [31:0] data_in = 'h12345678;
    wire [31:0] data_out;
    reg [3:0] we = 4'b0000; //Write enable = 0, we only want to read.
    reg en = 1; //Enable = 1;
    wire [31:0] address;
    
    //Generate 25 MHz Clock
    div_by_4_clk div(.in_clk(CLK100MHZ),.out_clk(CLK25MHZ));
    
//    //Horizontal Counter
//    counter #(.MAX(799), .BITS(10)) horiz_counter (.clk(CLK25MHZ), .value(horizontal_counter));
    
//    //Vertical Counter
//    assign v_increment = (horizontal_counter == 0);
//    counter #(.MAX(524), .BITS(10)) vert_counter (.clk(v_increment), .value(vertical_counter));

    double_counter #(.MAX1(799), .MAX2(525), .BITS1(10), .BITS2(10)) counter_mod (.clk(CLK25MHZ), .value1(horizontal_counter), .value2(vertical_counter));
    
    //Hsync
    range #(.LOW(0), .HIGH(96), .BITS(10)) HSync_mod(.clk(CLK25MHZ), .value(horizontal_counter), .sync(VGA_HS));
    
    //Vsync
    range #(.LOW(0), .HIGH(2),  .BITS(10)) VSync_mod(.clk(CLK25MHZ), .value(vertical_counter),   .sync(VGA_VS));
    
    //Blue
    color_driver #(.H_LOW(144), .H_HIGH(784), .V_LOW(35), .V_HIGH(515), .BITS(10)) blue_driver_mod (.Hcnt(horizontal_counter), .Vcnt(vertical_counter), .value(data_out[3:0]), .color(VGA_B));
    
    //Green
    color_driver #(.H_LOW(144), .H_HIGH(784), .V_LOW(35), .V_HIGH(515), .BITS(10)) green_driver_mod (.Hcnt(horizontal_counter), .Vcnt(vertical_counter), .value(data_out[7:4]), .color(VGA_G));

    //Red
    color_driver #(.H_LOW(144), .H_HIGH(784), .V_LOW(35), .V_HIGH(515), .BITS(10)) red_driver_mod (.Hcnt(horizontal_counter), .Vcnt(vertical_counter), .value(data_out[11:8]), .color(VGA_R));
    
    //Address Driver
    address_driver address_driver_mod(.clk(CLK25MHZ), .horizontal_counter(horizontal_counter), .vertical_counter(vertical_counter), .address(address));

    //BRAM Reading
    assign BRAM_PORTB_0_addr = address;
    assign BRAM_PORTB_0_clk = CLK100MHZ;
    assign data_out = BRAM_PORTB_0_dout;
    assign BRAM_PORTB_0_din = data_in;
    assign BRAM_PORTB_0_en = en;
    assign BRAM_PORTB_0_rst = reset;
    assign BRAM_PORTB_0_we = we;
    
endmodule

module address_driver(
    input clk,
    input  [9:0] horizontal_counter,
    input  [9:0] vertical_counter,
    output [31:0] address);
    
    reg [31:0] address_reg = 0;
    assign address = address_reg;
    
    always@(posedge clk)
    begin
//        address_reg = 'h00000000;     
        if(horizontal_counter >= 144 && horizontal_counter < 784 && vertical_counter >= 35 && vertical_counter < 515)
            address_reg = ((horizontal_counter - 144) + 640*(vertical_counter - 35)) * 1; 
        else
            address_reg = 'h00000000; //Out of bounds, should be 0.         
    end
endmodule

module color_driver #(parameter H_LOW = 144, parameter H_HIGH = 784, parameter V_LOW = 35, parameter V_HIGH = 515, parameter BITS = 10)
    (
    input  [BITS - 1: 0] Hcnt,
    input  [BITS - 1: 0] Vcnt,
    input  [3:0] value,
    output [3:0] color
    
    );
    
    reg [3:0] color_reg = 0;
    
    always @(*)
    begin
        if(Hcnt >= H_LOW && Hcnt < H_HIGH && Vcnt >= V_LOW && Vcnt < V_HIGH)
            color_reg = value;
        else
            color_reg = 0;
    end
    
    assign color = color_reg;
    
endmodule 

module range #(parameter LOW = 0, parameter HIGH = 4, parameter BITS = 10)
    (
        input clk,
        input [BITS - 1: 0] value,
        output sync
    );
    
    reg sync_reg = 1;
    
    always @(*)
    begin
        if(value >= LOW && value < HIGH)
            sync_reg <= 1;
        else
            sync_reg <= 0;
    end
    
    assign sync = sync_reg;
    
endmodule 

module double_counter #(parameter MAX1 = 100, parameter MAX2 = 100, parameter BITS1 = 4, parameter BITS2 = 4)
    (
       input clk,
       output [BITS1 - 1:0] value1, 
       output [BITS2 - 1:0] value2 
    );
    
    reg [BITS1 - 1:0] counter_variable1 = 0;
    reg [BITS2 - 1:0] counter_variable2 = 0;
    
    always @(posedge clk)
    begin
        if(counter_variable1 == MAX1)
        begin
            counter_variable1 = 0;
            counter_variable2 = counter_variable2 + 1;
        end 
        else if(counter_variable2 == MAX2)
            counter_variable2 = 0;
        else
            counter_variable1 = counter_variable1 + 1;
    end  
    
    assign value1 = counter_variable1;
    assign value2 = counter_variable2;
    
endmodule

module div_by_4_clk(
    input in_clk,
    output out_clk
    );
    
    reg [1:0]counter = 0;
    reg out_clk_reg = 0;
    
    always @(posedge in_clk)
    begin
        if(counter == 1) 
        begin
            out_clk_reg = ~out_clk_reg;
            counter = 0; 
        end 
        else
            counter = counter + 1;
    end
    
    assign out_clk = out_clk_reg;
    
endmodule 
