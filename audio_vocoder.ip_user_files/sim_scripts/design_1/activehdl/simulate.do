onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+design_1 -L xil_defaultlib -L xpm -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L xbip_utils_v3_0_9 -L axi_utils_v2_0_5 -L c_reg_fd_v12_0_5 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_pipe_v3_0_5 -L xbip_dsp48_addsub_v3_0_5 -L xbip_addsub_v3_0_5 -L c_addsub_v12_0_12 -L c_mux_bit_v12_0_5 -L c_shift_ram_v12_0_12 -L xbip_bram18k_v3_0_5 -L mult_gen_v12_0_14 -L cmpy_v6_0_16 -L floating_point_v7_0_15 -L xfft_v9_1_1 -L oddr_v1_0_0 -L blk_mem_gen_v8_3_6 -L axi_bram_ctrl_v4_1_0 -L blk_mem_gen_v8_4_2 -L lib_pkg_v1_0_2 -L axi_lite_ipif_v3_0_4 -L interrupt_control_v3_1_4 -L axi_iic_v2_0_21 -L lib_srl_fifo_v1_0_2 -L axi_uartlite_v2_0_22 -L mdm_v3_2_15 -L microblaze_v11_0_0 -L axi_intc_v4_1_12 -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_18 -L fifo_generator_v13_2_3 -L axi_data_fifo_v2_1_17 -L axi_crossbar_v2_1_19 -L lmb_bram_if_cntlr_v4_0_15 -L lmb_v10_v3_0_9 -L xlconcat_v2_1_1 -L xlconstant_v1_1_5 -L axi_protocol_converter_v2_1_18 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.design_1 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {design_1.udo}

run -all

endsim

quit -force
