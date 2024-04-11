vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/oddr_v1_0_0
vlib questa_lib/msim/xil_defaultlib

vmap oddr_v1_0_0 questa_lib/msim/oddr_v1_0_0
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work oddr_v1_0_0 -64 \
"../../../ipstatic/hdl/oddr_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 \
"../../../../audio_vocoder.srcs/sources_1/ip/oddr_0/sim/oddr_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

