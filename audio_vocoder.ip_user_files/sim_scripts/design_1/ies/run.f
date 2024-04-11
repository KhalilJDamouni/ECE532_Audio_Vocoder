-makelib ies_lib/xil_defaultlib -sv \
  "C:/DESL/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/DESL/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/DESL/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
  "../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../audio_vocoder.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_13 \
  "../../../../audio_vocoder.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_proc_sys_reset_0_0/sim/design_1_proc_sys_reset_0_0.vhd" \
-endlib
-makelib ies_lib/xbip_utils_v3_0_9 \
  "../../../../audio_vocoder.srcs/sources_1/bd/design_1/ipshared/0da8/hdl/xbip_utils_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/axi_utils_v2_0_5 \
  "../../../../audio_vocoder.srcs/sources_1/bd/design_1/ipshared/ec8e/hdl/axi_utils_v2_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/c_reg_fd_v12_0_5 \
  "../../../../audio_vocoder.srcs/sources_1/bd/design_1/ipshared/cbdd/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xbip_dsp48_wrapper_v3_0_4 \
  "../../../../audio_vocoder.srcs/sources_1/bd/design_1/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xbip_pipe_v3_0_5 \
  "../../../../audio_vocoder.srcs/sources_1/bd/design_1/ipshared/442e/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xbip_dsp48_addsub_v3_0_5 \
  "../../../../audio_vocoder.srcs/sources_1/bd/design_1/ipshared/a04b/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xbip_addsub_v3_0_5 \
  "../../../../audio_vocoder.srcs/sources_1/bd/design_1/ipshared/87fb/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/c_addsub_v12_0_12 \
  "../../../../audio_vocoder.srcs/sources_1/bd/design_1/ipshared/6b5f/hdl/c_addsub_v12_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/c_mux_bit_v12_0_5 \
  "../../../../audio_vocoder.srcs/sources_1/bd/design_1/ipshared/512a/hdl/c_mux_bit_v12_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/c_shift_ram_v12_0_12 \
  "../../../../audio_vocoder.srcs/sources_1/bd/design_1/ipshared/a9d0/hdl/c_shift_ram_v12_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xbip_bram18k_v3_0_5 \
  "../../../../audio_vocoder.srcs/sources_1/bd/design_1/ipshared/c08f/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/mult_gen_v12_0_14 \
  "../../../../audio_vocoder.srcs/sources_1/bd/design_1/ipshared/6bb5/hdl/mult_gen_v12_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/cmpy_v6_0_16 \
  "../../../../audio_vocoder.srcs/sources_1/bd/design_1/ipshared/6f3d/hdl/cmpy_v6_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/floating_point_v7_0_15 \
  "../../../../audio_vocoder.srcs/sources_1/bd/design_1/ipshared/a054/hdl/floating_point_v7_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xfft_v9_1_1 \
  "../../../../audio_vocoder.srcs/sources_1/bd/design_1/ipshared/60b9/hdl/xfft_v9_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_xfft_0_0/sim/design_1_xfft_0_0.vhd" \
  "../../../bd/design_1/ip/design_1_xfft_1_0/sim/design_1_xfft_1_0.vhd" \
-endlib
-makelib ies_lib/oddr_v1_0_0 \
  "../../../../audio_vocoder.srcs/sources_1/bd/design_1/ip/design_1_i2s_rx_tx_0_0/src/oddr_0/hdl/oddr_v1_0_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_i2s_rx_tx_0_0/src/oddr_0/sim/oddr_0.v" \
  "../../../bd/design_1/ipshared/b137/src/i2s_ctrl.v" \
  "../../../bd/design_1/ipshared/b137/src/i2s_rx_tx.v" \
  "../../../bd/design_1/ip/design_1_i2s_rx_tx_0_0/sim/design_1_i2s_rx_tx_0_0.v" \
  "../../../bd/design_1/sim/design_1.v" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ipshared/e47f/fwdFFT.sv" \
  "../../../bd/design_1/ip/design_1_fwdFFT_0_0/sim/design_1_fwdFFT_0_0.sv" \
  "../../../bd/design_1/ipshared/20c2/invFFT.sv" \
  "../../../bd/design_1/ip/design_1_invFFT_0_0/sim/design_1_invFFT_0_0.sv" \
  "../../../bd/design_1/ipshared/84e1/dataPath.sv" \
  "../../../bd/design_1/ip/design_1_dataPath_0_0/sim/design_1_dataPath_0_0.sv" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_3_6 \
  "../../../../audio_vocoder.srcs/sources_1/bd/design_1/ipshared/2751/simulation/blk_mem_gen_v8_3.v" \
-endlib
-makelib ies_lib/axi_bram_ctrl_v4_1_0 \
  "../../../../audio_vocoder.srcs/sources_1/bd/design_1/ipshared/27fe/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axi_bram_ctrl_0_1/sim/design_1_axi_bram_ctrl_0_1.vhd" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_2 \
  "../../../../audio_vocoder.srcs/sources_1/bd/design_1/ipshared/37c2/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axi_bram_ctrl_0_bram_1/sim/design_1_axi_bram_ctrl_0_bram_1.v" \
-endlib
-makelib ies_lib/lib_pkg_v1_0_2 \
  "../../../../audio_vocoder.srcs/sources_1/bd/design_1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/axi_lite_ipif_v3_0_4 \
  "../../../../audio_vocoder.srcs/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/interrupt_control_v3_1_4 \
  "../../../../audio_vocoder.srcs/sources_1/bd/design_1/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/axi_iic_v2_0_21 \
  "../../../../audio_vocoder.srcs/sources_1/bd/design_1/ipshared/304c/hdl/axi_iic_v2_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axi_iic_0_1/sim/design_1_axi_iic_0_1.vhd" \
-endlib
-makelib ies_lib/lib_srl_fifo_v1_0_2 \
  "../../../../audio_vocoder.srcs/sources_1/bd/design_1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/axi_uartlite_v2_0_22 \
  "../../../../audio_vocoder.srcs/sources_1/bd/design_1/ipshared/7371/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axi_uartlite_0_1/sim/design_1_axi_uartlite_0_1.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_clk_wiz_1_1/design_1_clk_wiz_1_1_clk_wiz.v" \
  "../../../bd/design_1/ip/design_1_clk_wiz_1_1/design_1_clk_wiz_1_1.v" \
-endlib
-makelib ies_lib/mdm_v3_2_15 \
  "../../../../audio_vocoder.srcs/sources_1/bd/design_1/ipshared/41ef/hdl/mdm_v3_2_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_mdm_1_1/sim/design_1_mdm_1_1.vhd" \
-endlib
-makelib ies_lib/microblaze_v11_0_0 \
  "../../../../audio_vocoder.srcs/sources_1/bd/design_1/ipshared/2ed1/hdl/microblaze_v11_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_microblaze_0_1/sim/design_1_microblaze_0_1.vhd" \
-endlib
-makelib ies_lib/axi_intc_v4_1_12 \
  "../../../../audio_vocoder.srcs/sources_1/bd/design_1/ipshared/31e4/hdl/axi_intc_v4_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_microblaze_0_axi_intc_1/sim/design_1_microblaze_0_axi_intc_1.vhd" \
-endlib
-makelib ies_lib/generic_baseblocks_v2_1_0 \
  "../../../../audio_vocoder.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../audio_vocoder.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_register_slice_v2_1_18 \
  "../../../../audio_vocoder.srcs/sources_1/bd/design_1/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_3 \
  "../../../../audio_vocoder.srcs/sources_1/bd/design_1/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_3 \
  "../../../../audio_vocoder.srcs/sources_1/bd/design_1/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_3 \
  "../../../../audio_vocoder.srcs/sources_1/bd/design_1/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib ies_lib/axi_data_fifo_v2_1_17 \
  "../../../../audio_vocoder.srcs/sources_1/bd/design_1/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_crossbar_v2_1_19 \
  "../../../../audio_vocoder.srcs/sources_1/bd/design_1/ipshared/6c9d/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_xbar_1/sim/design_1_xbar_1.v" \
-endlib
-makelib ies_lib/lmb_bram_if_cntlr_v4_0_15 \
  "../../../../audio_vocoder.srcs/sources_1/bd/design_1/ipshared/92fd/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_dlmb_bram_if_cntlr_1/sim/design_1_dlmb_bram_if_cntlr_1.vhd" \
-endlib
-makelib ies_lib/lmb_v10_v3_0_9 \
  "../../../../audio_vocoder.srcs/sources_1/bd/design_1/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_dlmb_v10_1/sim/design_1_dlmb_v10_1.vhd" \
  "../../../bd/design_1/ip/design_1_ilmb_bram_if_cntlr_1/sim/design_1_ilmb_bram_if_cntlr_1.vhd" \
  "../../../bd/design_1/ip/design_1_ilmb_v10_1/sim/design_1_ilmb_v10_1.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_lmb_bram_1/sim/design_1_lmb_bram_1.v" \
-endlib
-makelib ies_lib/xlconcat_v2_1_1 \
  "../../../../audio_vocoder.srcs/sources_1/bd/design_1/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_microblaze_0_xlconcat_1/sim/design_1_microblaze_0_xlconcat_1.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_rst_clk_wiz_1_100M_1/sim/design_1_rst_clk_wiz_1_100M_1.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_uart_reader_0_1/sim/design_1_uart_reader_0_1.v" \
  "../../../bd/design_1/ip/design_1_vga_driver_0_upgraded_ipi_1/sim/design_1_vga_driver_0_upgraded_ipi_1.v" \
  "../../../bd/design_1/ip/design_1_axi_child_v1_0_S00_A_0_0/sim/design_1_axi_child_v1_0_S00_A_0_0.v" \
  "../../../bd/design_1/ip/design_1_fft_output_format_0_0/sim/design_1_fft_output_format_0_0.v" \
-endlib
-makelib ies_lib/xlconstant_v1_1_5 \
  "../../../../audio_vocoder.srcs/sources_1/bd/design_1/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_xlconstant_0_1/sim/design_1_xlconstant_0_1.v" \
  "../../../bd/design_1/ip/design_1_xlconstant_1_0/sim/design_1_xlconstant_1_0.v" \
  "../../../bd/design_1/ipshared/5db6/filterBP13.v" \
  "../../../bd/design_1/ip/design_1_filterBP_0_0/sim/design_1_filterBP_0_0.v" \
  "../../../bd/design_1/ip/design_1_audio_mux_0_0/sim/design_1_audio_mux_0_0.v" \
  "../../../bd/design_1/ip/design_1_ila_0_0/sim/design_1_ila_0_0.v" \
-endlib
-makelib ies_lib/axi_protocol_converter_v2_1_18 \
  "../../../../audio_vocoder.srcs/sources_1/bd/design_1/ipshared/7a04/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

