-makelib xcelium_lib/xil_defaultlib -sv \
  "C:/DESL/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/DESL/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/audio_vocoder/ip/audio_vocoder_clk_wiz_0_0/audio_vocoder_clk_wiz_0_0_clk_wiz.v" \
  "../../../bd/audio_vocoder/ip/audio_vocoder_clk_wiz_0_0/audio_vocoder_clk_wiz_0_0.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/audio_vocoder/ip/audio_vocoder_proc_sys_reset_0_0/sim/audio_vocoder_proc_sys_reset_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/audio_vocoder/ipshared/938d/src/processingPath.sv" \
  "../../../bd/audio_vocoder/ip/audio_vocoder_processingPath_0_0/sim/audio_vocoder_processingPath_0_0.sv" \
-endlib
-makelib xcelium_lib/xbip_utils_v3_0_9 \
  "../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/0da8/hdl/xbip_utils_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_utils_v2_0_5 \
  "../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/ec8e/hdl/axi_utils_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/c_reg_fd_v12_0_5 \
  "../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/cbdd/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_dsp48_wrapper_v3_0_4 \
  "../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_pipe_v3_0_5 \
  "../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/442e/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_dsp48_addsub_v3_0_5 \
  "../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/a04b/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_addsub_v3_0_5 \
  "../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/87fb/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/c_addsub_v12_0_12 \
  "../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/6b5f/hdl/c_addsub_v12_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/c_mux_bit_v12_0_5 \
  "../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/512a/hdl/c_mux_bit_v12_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/c_shift_ram_v12_0_12 \
  "../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/a9d0/hdl/c_shift_ram_v12_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_bram18k_v3_0_5 \
  "../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/c08f/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/mult_gen_v12_0_14 \
  "../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/6bb5/hdl/mult_gen_v12_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/cmpy_v6_0_16 \
  "../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/6f3d/hdl/cmpy_v6_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/floating_point_v7_0_15 \
  "../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/a054/hdl/floating_point_v7_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xfft_v9_1_1 \
  "../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/60b9/hdl/xfft_v9_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/audio_vocoder/ip/audio_vocoder_xfft_0_0/sim/audio_vocoder_xfft_0_0.vhd" \
  "../../../bd/audio_vocoder/ip/audio_vocoder_xfft_INV_0/sim/audio_vocoder_xfft_INV_0.vhd" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_3_6 \
  "../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/2751/simulation/blk_mem_gen_v8_3.v" \
-endlib
-makelib xcelium_lib/axi_bram_ctrl_v4_1_0 \
  "../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/27fe/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/audio_vocoder/ip/audio_vocoder_axi_bram_ctrl_0_0/sim/audio_vocoder_axi_bram_ctrl_0_0.vhd" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_2 \
  "../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/37c2/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/audio_vocoder/ip/audio_vocoder_axi_bram_ctrl_0_bram_0/sim/audio_vocoder_axi_bram_ctrl_0_bram_0.v" \
  "../../../bd/audio_vocoder/ip/audio_vocoder_axi_child_4_0_0/sim/audio_vocoder_axi_child_4_0_0.v" \
-endlib
-makelib xcelium_lib/axi_lite_ipif_v3_0_4 \
  "../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_pkg_v1_0_2 \
  "../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_srl_fifo_v1_0_2 \
  "../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_uartlite_v2_0_22 \
  "../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/7371/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/audio_vocoder/ip/audio_vocoder_axi_uartlite_0_0/sim/audio_vocoder_axi_uartlite_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/audio_vocoder/ip/audio_vocoder_clk_wiz_1_0/audio_vocoder_clk_wiz_1_0_clk_wiz.v" \
  "../../../bd/audio_vocoder/ip/audio_vocoder_clk_wiz_1_0/audio_vocoder_clk_wiz_1_0.v" \
-endlib
-makelib xcelium_lib/mdm_v3_2_15 \
  "../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/41ef/hdl/mdm_v3_2_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/audio_vocoder/ip/audio_vocoder_mdm_1_0/sim/audio_vocoder_mdm_1_0.vhd" \
-endlib
-makelib xcelium_lib/microblaze_v11_0_0 \
  "../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/2ed1/hdl/microblaze_v11_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/audio_vocoder/ip/audio_vocoder_microblaze_0_0/sim/audio_vocoder_microblaze_0_0.vhd" \
-endlib
-makelib xcelium_lib/axi_intc_v4_1_12 \
  "../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/31e4/hdl/axi_intc_v4_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/audio_vocoder/ip/audio_vocoder_microblaze_0_axi_intc_0/sim/audio_vocoder_microblaze_0_axi_intc_0.vhd" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_18 \
  "../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_3 \
  "../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_3 \
  "../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_3 \
  "../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_17 \
  "../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_19 \
  "../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/6c9d/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/audio_vocoder/ip/audio_vocoder_xbar_0/sim/audio_vocoder_xbar_0.v" \
-endlib
-makelib xcelium_lib/lmb_bram_if_cntlr_v4_0_15 \
  "../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/92fd/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/audio_vocoder/ip/audio_vocoder_dlmb_bram_if_cntlr_0/sim/audio_vocoder_dlmb_bram_if_cntlr_0.vhd" \
-endlib
-makelib xcelium_lib/lmb_v10_v3_0_9 \
  "../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/audio_vocoder/ip/audio_vocoder_dlmb_v10_0/sim/audio_vocoder_dlmb_v10_0.vhd" \
  "../../../bd/audio_vocoder/ip/audio_vocoder_ilmb_bram_if_cntlr_0/sim/audio_vocoder_ilmb_bram_if_cntlr_0.vhd" \
  "../../../bd/audio_vocoder/ip/audio_vocoder_ilmb_v10_0/sim/audio_vocoder_ilmb_v10_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/audio_vocoder/ip/audio_vocoder_lmb_bram_0/sim/audio_vocoder_lmb_bram_0.v" \
-endlib
-makelib xcelium_lib/xlconcat_v2_1_1 \
  "../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/audio_vocoder/ip/audio_vocoder_microblaze_0_xlconcat_0/sim/audio_vocoder_microblaze_0_xlconcat_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/audio_vocoder/ip/audio_vocoder_rst_clk_wiz_1_100M_0/sim/audio_vocoder_rst_clk_wiz_1_100M_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/audio_vocoder/ip/audio_vocoder_uart_reader_0_0/sim/audio_vocoder_uart_reader_0_0.v" \
  "../../../bd/audio_vocoder/ip/audio_vocoder_vga_driver_0_upgraded_ipi_0/sim/audio_vocoder_vga_driver_0_upgraded_ipi_0.v" \
  "../../../bd/audio_vocoder/ip/audio_vocoder_i2s_rx_tx_0_1/sim/audio_vocoder_i2s_rx_tx_0_1.v" \
  "../../../bd/audio_vocoder/sim/audio_vocoder.v" \
  "../../../bd/audio_vocoder/ip/audio_vocoder_ila_0_0/sim/audio_vocoder_ila_0_0.v" \
-endlib
-makelib xcelium_lib/interrupt_control_v3_1_4 \
  "../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_iic_v2_0_21 \
  "../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/304c/hdl/axi_iic_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/audio_vocoder/ip/audio_vocoder_axi_iic_0_0/sim/audio_vocoder_axi_iic_0_0.vhd" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_18 \
  "../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/7a04/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/audio_vocoder/ip/audio_vocoder_auto_pc_0/sim/audio_vocoder_auto_pc_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

