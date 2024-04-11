onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib audio_vocoder_opt

do {wave.do}

view wave
view structure
view signals

do {audio_vocoder.udo}

run -all

quit -force
