`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/17/2024 02:23:22 PM
// Design Name: 
// Module Name: uart_reader
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


module uart_reader(
    input RX,
    input CLK100MHZ,
    output [9:0] value,
    output [7:0] number_wire
    );
    
    
    wire trigger;
    reg [9:0] value_reg = 0;
    reg [3:0] counter = 0;
    reg [31:0] number = 0;
    
    uart_clock uart_block_mod(.CLK100MHZ(CLK100MHZ), .BAUD115200(trigger));
    
    always@(posedge trigger) begin
        if(counter != 0) begin
            value_reg <= (value_reg << 1) | RX;
            counter = counter - 1;
        end
        if(counter == 0)
            if(RX == 0) begin
                number = number + 1;
                counter = 9;
            end
    end
    
    assign number_wire = number;
    assign value = value_reg;
    
endmodule

module uart_clock 
    (
    input CLK100MHZ,
    output BAUD115200
    );
    
    reg [16:0] counter = 0;
    reg trigger = 0;
    always @(posedge CLK100MHZ) begin
        if(counter == 868) 
            counter = 0;
        else
            counter = counter + 1;
    end
    
    assign BAUD115200 = (counter == 868);
    
endmodule
