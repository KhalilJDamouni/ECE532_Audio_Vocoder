vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/oddr_v1_0_0
vlib modelsim_lib/msim/xil_defaultlib

vmap oddr_v1_0_0 modelsim_lib/msim/oddr_v1_0_0
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work oddr_v1_0_0 -64 -incr \
"../../../ipstatic/hdl/oddr_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr \
"../../../../audio_vocoder.srcs/sources_1/ip/oddr_0/sim/oddr_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

