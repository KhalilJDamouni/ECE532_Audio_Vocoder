vlib work
vlib activehdl

vlib activehdl/oddr_v1_0_0
vlib activehdl/xil_defaultlib

vmap oddr_v1_0_0 activehdl/oddr_v1_0_0
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work oddr_v1_0_0  -v2k5 \
"../../../ipstatic/hdl/oddr_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../audio_vocoder.srcs/sources_1/ip/oddr_0/sim/oddr_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

