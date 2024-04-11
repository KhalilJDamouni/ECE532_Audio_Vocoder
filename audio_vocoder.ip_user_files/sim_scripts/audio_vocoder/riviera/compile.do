vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/xbip_utils_v3_0_9
vlib riviera/axi_utils_v2_0_5
vlib riviera/c_reg_fd_v12_0_5
vlib riviera/xbip_dsp48_wrapper_v3_0_4
vlib riviera/xbip_pipe_v3_0_5
vlib riviera/xbip_dsp48_addsub_v3_0_5
vlib riviera/xbip_addsub_v3_0_5
vlib riviera/c_addsub_v12_0_12
vlib riviera/c_mux_bit_v12_0_5
vlib riviera/c_shift_ram_v12_0_12
vlib riviera/xbip_bram18k_v3_0_5
vlib riviera/mult_gen_v12_0_14
vlib riviera/cmpy_v6_0_16
vlib riviera/floating_point_v7_0_15
vlib riviera/xfft_v9_1_1
vlib riviera/blk_mem_gen_v8_3_6
vlib riviera/axi_bram_ctrl_v4_1_0
vlib riviera/blk_mem_gen_v8_4_2
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/lib_pkg_v1_0_2
vlib riviera/lib_srl_fifo_v1_0_2
vlib riviera/axi_uartlite_v2_0_22
vlib riviera/mdm_v3_2_15
vlib riviera/microblaze_v11_0_0
vlib riviera/axi_intc_v4_1_12
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_register_slice_v2_1_18
vlib riviera/fifo_generator_v13_2_3
vlib riviera/axi_data_fifo_v2_1_17
vlib riviera/axi_crossbar_v2_1_19
vlib riviera/lmb_bram_if_cntlr_v4_0_15
vlib riviera/lmb_v10_v3_0_9
vlib riviera/xlconcat_v2_1_1
vlib riviera/interrupt_control_v3_1_4
vlib riviera/axi_iic_v2_0_21
vlib riviera/axi_protocol_converter_v2_1_18

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap xbip_utils_v3_0_9 riviera/xbip_utils_v3_0_9
vmap axi_utils_v2_0_5 riviera/axi_utils_v2_0_5
vmap c_reg_fd_v12_0_5 riviera/c_reg_fd_v12_0_5
vmap xbip_dsp48_wrapper_v3_0_4 riviera/xbip_dsp48_wrapper_v3_0_4
vmap xbip_pipe_v3_0_5 riviera/xbip_pipe_v3_0_5
vmap xbip_dsp48_addsub_v3_0_5 riviera/xbip_dsp48_addsub_v3_0_5
vmap xbip_addsub_v3_0_5 riviera/xbip_addsub_v3_0_5
vmap c_addsub_v12_0_12 riviera/c_addsub_v12_0_12
vmap c_mux_bit_v12_0_5 riviera/c_mux_bit_v12_0_5
vmap c_shift_ram_v12_0_12 riviera/c_shift_ram_v12_0_12
vmap xbip_bram18k_v3_0_5 riviera/xbip_bram18k_v3_0_5
vmap mult_gen_v12_0_14 riviera/mult_gen_v12_0_14
vmap cmpy_v6_0_16 riviera/cmpy_v6_0_16
vmap floating_point_v7_0_15 riviera/floating_point_v7_0_15
vmap xfft_v9_1_1 riviera/xfft_v9_1_1
vmap blk_mem_gen_v8_3_6 riviera/blk_mem_gen_v8_3_6
vmap axi_bram_ctrl_v4_1_0 riviera/axi_bram_ctrl_v4_1_0
vmap blk_mem_gen_v8_4_2 riviera/blk_mem_gen_v8_4_2
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap lib_pkg_v1_0_2 riviera/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 riviera/lib_srl_fifo_v1_0_2
vmap axi_uartlite_v2_0_22 riviera/axi_uartlite_v2_0_22
vmap mdm_v3_2_15 riviera/mdm_v3_2_15
vmap microblaze_v11_0_0 riviera/microblaze_v11_0_0
vmap axi_intc_v4_1_12 riviera/axi_intc_v4_1_12
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_18 riviera/axi_register_slice_v2_1_18
vmap fifo_generator_v13_2_3 riviera/fifo_generator_v13_2_3
vmap axi_data_fifo_v2_1_17 riviera/axi_data_fifo_v2_1_17
vmap axi_crossbar_v2_1_19 riviera/axi_crossbar_v2_1_19
vmap lmb_bram_if_cntlr_v4_0_15 riviera/lmb_bram_if_cntlr_v4_0_15
vmap lmb_v10_v3_0_9 riviera/lmb_v10_v3_0_9
vmap xlconcat_v2_1_1 riviera/xlconcat_v2_1_1
vmap interrupt_control_v3_1_4 riviera/interrupt_control_v3_1_4
vmap axi_iic_v2_0_21 riviera/axi_iic_v2_0_21
vmap axi_protocol_converter_v2_1_18 riviera/axi_protocol_converter_v2_1_18

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/85a3" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/ec67/hdl" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/1b7e/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/122e/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/7d3c/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/c45e/hdl/verilog" \
"C:/DESL/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"C:/DESL/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/85a3" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/ec67/hdl" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/1b7e/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/122e/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/7d3c/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/c45e/hdl/verilog" \
"../../../bd/audio_vocoder/ip/audio_vocoder_clk_wiz_0_0/audio_vocoder_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/audio_vocoder/ip/audio_vocoder_clk_wiz_0_0/audio_vocoder_clk_wiz_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/audio_vocoder/ip/audio_vocoder_proc_sys_reset_0_0/sim/audio_vocoder_proc_sys_reset_0_0.vhd" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/85a3" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/ec67/hdl" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/1b7e/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/122e/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/7d3c/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/c45e/hdl/verilog" \
"../../../bd/audio_vocoder/ipshared/938d/src/processingPath.sv" \
"../../../bd/audio_vocoder/ip/audio_vocoder_processingPath_0_0/sim/audio_vocoder_processingPath_0_0.sv" \

vcom -work xbip_utils_v3_0_9 -93 \
"../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/0da8/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_5 -93 \
"../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/ec8e/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work c_reg_fd_v12_0_5 -93 \
"../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/cbdd/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93 \
"../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_5 -93 \
"../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/442e/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_5 -93 \
"../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/a04b/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_addsub_v3_0_5 -93 \
"../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/87fb/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \

vcom -work c_addsub_v12_0_12 -93 \
"../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/6b5f/hdl/c_addsub_v12_0_vh_rfs.vhd" \

vcom -work c_mux_bit_v12_0_5 -93 \
"../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/512a/hdl/c_mux_bit_v12_0_vh_rfs.vhd" \

vcom -work c_shift_ram_v12_0_12 -93 \
"../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/a9d0/hdl/c_shift_ram_v12_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_5 -93 \
"../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/c08f/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_14 -93 \
"../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/6bb5/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work cmpy_v6_0_16 -93 \
"../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/6f3d/hdl/cmpy_v6_0_vh_rfs.vhd" \

vcom -work floating_point_v7_0_15 -93 \
"../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/a054/hdl/floating_point_v7_0_vh_rfs.vhd" \

vcom -work xfft_v9_1_1 -93 \
"../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/60b9/hdl/xfft_v9_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/audio_vocoder/ip/audio_vocoder_xfft_0_0/sim/audio_vocoder_xfft_0_0.vhd" \
"../../../bd/audio_vocoder/ip/audio_vocoder_xfft_INV_0/sim/audio_vocoder_xfft_INV_0.vhd" \

vlog -work blk_mem_gen_v8_3_6  -v2k5 "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/85a3" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/ec67/hdl" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/1b7e/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/122e/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/7d3c/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/c45e/hdl/verilog" \
"../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/2751/simulation/blk_mem_gen_v8_3.v" \

vcom -work axi_bram_ctrl_v4_1_0 -93 \
"../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/27fe/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/audio_vocoder/ip/audio_vocoder_axi_bram_ctrl_0_0/sim/audio_vocoder_axi_bram_ctrl_0_0.vhd" \

vlog -work blk_mem_gen_v8_4_2  -v2k5 "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/85a3" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/ec67/hdl" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/1b7e/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/122e/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/7d3c/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/c45e/hdl/verilog" \
"../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/37c2/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/85a3" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/ec67/hdl" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/1b7e/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/122e/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/7d3c/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/c45e/hdl/verilog" \
"../../../bd/audio_vocoder/ip/audio_vocoder_axi_bram_ctrl_0_bram_0/sim/audio_vocoder_axi_bram_ctrl_0_bram_0.v" \
"../../../bd/audio_vocoder/ip/audio_vocoder_axi_child_4_0_0/sim/audio_vocoder_axi_child_4_0_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_22 -93 \
"../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/7371/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/audio_vocoder/ip/audio_vocoder_axi_uartlite_0_0/sim/audio_vocoder_axi_uartlite_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/85a3" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/ec67/hdl" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/1b7e/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/122e/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/7d3c/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/c45e/hdl/verilog" \
"../../../bd/audio_vocoder/ip/audio_vocoder_clk_wiz_1_0/audio_vocoder_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/audio_vocoder/ip/audio_vocoder_clk_wiz_1_0/audio_vocoder_clk_wiz_1_0.v" \

vcom -work mdm_v3_2_15 -93 \
"../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/41ef/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/audio_vocoder/ip/audio_vocoder_mdm_1_0/sim/audio_vocoder_mdm_1_0.vhd" \

vcom -work microblaze_v11_0_0 -93 \
"../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/2ed1/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/audio_vocoder/ip/audio_vocoder_microblaze_0_0/sim/audio_vocoder_microblaze_0_0.vhd" \

vcom -work axi_intc_v4_1_12 -93 \
"../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/31e4/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/audio_vocoder/ip/audio_vocoder_microblaze_0_axi_intc_0/sim/audio_vocoder_microblaze_0_axi_intc_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/85a3" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/ec67/hdl" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/1b7e/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/122e/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/7d3c/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/c45e/hdl/verilog" \
"../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/85a3" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/ec67/hdl" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/1b7e/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/122e/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/7d3c/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/c45e/hdl/verilog" \
"../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_18  -v2k5 "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/85a3" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/ec67/hdl" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/1b7e/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/122e/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/7d3c/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/c45e/hdl/verilog" \
"../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_3  -v2k5 "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/85a3" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/ec67/hdl" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/1b7e/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/122e/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/7d3c/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/c45e/hdl/verilog" \
"../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_3 -93 \
"../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_3  -v2k5 "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/85a3" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/ec67/hdl" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/1b7e/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/122e/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/7d3c/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/c45e/hdl/verilog" \
"../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_17  -v2k5 "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/85a3" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/ec67/hdl" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/1b7e/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/122e/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/7d3c/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/c45e/hdl/verilog" \
"../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_19  -v2k5 "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/85a3" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/ec67/hdl" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/1b7e/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/122e/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/7d3c/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/c45e/hdl/verilog" \
"../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/6c9d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/85a3" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/ec67/hdl" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/1b7e/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/122e/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/7d3c/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/c45e/hdl/verilog" \
"../../../bd/audio_vocoder/ip/audio_vocoder_xbar_0/sim/audio_vocoder_xbar_0.v" \

vcom -work lmb_bram_if_cntlr_v4_0_15 -93 \
"../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/92fd/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/audio_vocoder/ip/audio_vocoder_dlmb_bram_if_cntlr_0/sim/audio_vocoder_dlmb_bram_if_cntlr_0.vhd" \

vcom -work lmb_v10_v3_0_9 -93 \
"../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/audio_vocoder/ip/audio_vocoder_dlmb_v10_0/sim/audio_vocoder_dlmb_v10_0.vhd" \
"../../../bd/audio_vocoder/ip/audio_vocoder_ilmb_bram_if_cntlr_0/sim/audio_vocoder_ilmb_bram_if_cntlr_0.vhd" \
"../../../bd/audio_vocoder/ip/audio_vocoder_ilmb_v10_0/sim/audio_vocoder_ilmb_v10_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/85a3" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/ec67/hdl" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/1b7e/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/122e/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/7d3c/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/c45e/hdl/verilog" \
"../../../bd/audio_vocoder/ip/audio_vocoder_lmb_bram_0/sim/audio_vocoder_lmb_bram_0.v" \

vlog -work xlconcat_v2_1_1  -v2k5 "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/85a3" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/ec67/hdl" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/1b7e/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/122e/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/7d3c/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/c45e/hdl/verilog" \
"../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/85a3" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/ec67/hdl" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/1b7e/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/122e/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/7d3c/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/c45e/hdl/verilog" \
"../../../bd/audio_vocoder/ip/audio_vocoder_microblaze_0_xlconcat_0/sim/audio_vocoder_microblaze_0_xlconcat_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/audio_vocoder/ip/audio_vocoder_rst_clk_wiz_1_100M_0/sim/audio_vocoder_rst_clk_wiz_1_100M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/85a3" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/ec67/hdl" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/1b7e/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/122e/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/7d3c/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/c45e/hdl/verilog" \
"../../../bd/audio_vocoder/ip/audio_vocoder_uart_reader_0_0/sim/audio_vocoder_uart_reader_0_0.v" \
"../../../bd/audio_vocoder/ip/audio_vocoder_vga_driver_0_upgraded_ipi_0/sim/audio_vocoder_vga_driver_0_upgraded_ipi_0.v" \
"../../../bd/audio_vocoder/ip/audio_vocoder_i2s_rx_tx_0_1/sim/audio_vocoder_i2s_rx_tx_0_1.v" \
"../../../bd/audio_vocoder/sim/audio_vocoder.v" \
"../../../bd/audio_vocoder/ip/audio_vocoder_ila_0_0/sim/audio_vocoder_ila_0_0.v" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_iic_v2_0_21 -93 \
"../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/304c/hdl/axi_iic_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/audio_vocoder/ip/audio_vocoder_axi_iic_0_0/sim/audio_vocoder_axi_iic_0_0.vhd" \

vlog -work axi_protocol_converter_v2_1_18  -v2k5 "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/85a3" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/ec67/hdl" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/1b7e/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/122e/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/7d3c/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/c45e/hdl/verilog" \
"../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/7a04/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/85a3" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/ec67/hdl" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/1b7e/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/122e/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/7d3c/hdl/verilog" "+incdir+../../../../../../final_video_board/final_video_board.srcs/sources_1/bd/audio_vocoder/ipshared/c45e/hdl/verilog" \
"../../../bd/audio_vocoder/ip/audio_vocoder_auto_pc_0/sim/audio_vocoder_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

