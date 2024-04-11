
# 108 MHz is the pixel clock for 1280x1024
#create_clock -period 9.259 -waveform {0.000 5.000} [get_ports hdmi_rx_clk_p]


set_property -dict { PACKAGE_PIN R4    IOSTANDARD LVCMOS33 } [get_ports { CLK_I }]; #IO_L13P_T2_MRCC_34 Sch=sysclk
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports CLK_I]

set_property PACKAGE_PIN G4 [get_ports reset_rtl_0]
set_property IOSTANDARD LVCMOS15 [get_ports reset_rtl_0]

set_property PACKAGE_PIN T4 [get_ports SDATA_I]
set_property IOSTANDARD LVCMOS33 [get_ports SDATA_I]
set_property PACKAGE_PIN T5 [get_ports BCLK_O]
set_property IOSTANDARD LVCMOS33 [get_ports BCLK_O]
set_property PACKAGE_PIN W6 [get_ports SDATA_O]
set_property IOSTANDARD LVCMOS33 [get_ports SDATA_O]
set_property PACKAGE_PIN U5 [get_ports LRCLK_O]
set_property IOSTANDARD LVCMOS33 [get_ports LRCLK_O]
set_property PACKAGE_PIN U6 [get_ports MCLK_O]
set_property IOSTANDARD LVCMOS33 [get_ports MCLK_O]

#set_property PACKAGE_PIN AA19 [get_ports UART_0_txd]
#set_property IOSTANDARD LVCMOS33 [get_ports UART_0_txd]
#set_property PACKAGE_PIN V18 [get_ports UART_0_rxd]
#set_property IOSTANDARD LVCMOS33 [get_ports UART_0_rxd]

#set_property PACKAGE_PIN W5 [get_ports iic_rtl_scl_io]
#set_property IOSTANDARD LVCMOS33 [get_ports iic_rtl_scl_io]
#set_property PACKAGE_PIN V5 [get_ports iic_rtl_sda_io]
#set_property IOSTANDARD LVCMOS33 [get_ports iic_rtl_sda_io]

#set_property PACKAGE_PIN E22 [get_ports {sw[0]}]
#set_property IOSTANDARD LVCMOS12 [get_ports {sw[0]}]
#set_property PACKAGE_PIN F21 [get_ports {sw[1]}]
#set_property IOSTANDARD LVCMOS12 [get_ports {sw[1]}]
#set_property PACKAGE_PIN G21 [get_ports {sw[2]}]
#set_property IOSTANDARD LVCMOS12 [get_ports {sw[2]}]
#set_property PACKAGE_PIN G22 [get_ports {sw[3]}]
#set_property IOSTANDARD LVCMOS12 [get_ports {sw[3]}]
#set_property PACKAGE_PIN H17 [get_ports {sw[4]}]
#set_property IOSTANDARD LVCMOS12 [get_ports {sw[4]}]
#set_property PACKAGE_PIN J16 [get_ports {sw[5]}]
#set_property IOSTANDARD LVCMOS12 [get_ports {sw[5]}]
#set_property PACKAGE_PIN K13 [get_ports {sw[6]}]
#set_property IOSTANDARD LVCMOS12 [get_ports {sw[6]}]
#set_property PACKAGE_PIN M17 [get_ports {sw[7]}]
#set_property IOSTANDARD LVCMOS12 [get_ports {sw[7]}]

#set_property PACKAGE_PIN T14 [get_ports {led_tri_o[0]}]
#set_property IOSTANDARD LVCMOS25 [get_ports {led_tri_o[0]}]
#set_property PACKAGE_PIN T15 [get_ports {led_tri_o[1]}]
#set_property IOSTANDARD LVCMOS25 [get_ports {led_tri_o[1]}]
#set_property PACKAGE_PIN T16 [get_ports {led_tri_o[2]}]
#set_property IOSTANDARD LVCMOS25 [get_ports {led_tri_o[2]}]
#set_property PACKAGE_PIN U16 [get_ports {led_tri_o[3]}]
#set_property IOSTANDARD LVCMOS25 [get_ports {led_tri_o[3]}]
#set_property PACKAGE_PIN V15 [get_ports {led_tri_o[4]}]
#set_property IOSTANDARD LVCMOS25 [get_ports {led_tri_o[4]}]
#set_property PACKAGE_PIN W16 [get_ports {led_tri_o[5]}]
#set_property IOSTANDARD LVCMOS25 [get_ports {led_tri_o[5]}]
#set_property PACKAGE_PIN W15 [get_ports {led_tri_o[6]}]
#set_property IOSTANDARD LVCMOS25 [get_ports {led_tri_o[6]}]
#set_property PACKAGE_PIN Y13 [get_ports {led_tri_o[7]}]
#set_property IOSTANDARD LVCMOS25 [get_ports {led_tri_o[7]}]




