ECE532_Audio_Vocoder
├── README.md
├── audio_vocoder.hw
├── audio_vocoder.ip_user_files
├── audio_vocoder.sdk
│   ├── design_1_wrapper_hw_platform_0 //MicroBlaze Hardware Files
│   ├── microblaze_video_march_31_1
│   │   ├── Debug
│   │   └── src //MicroBlaze Files
│   │       ├── audio.c
│   │       ├── audio.h
│   │       ├── demo.c
│   │       ├── demo.h
│   │       ├── helloworld.c
│   │       ├── helloworld.h
│   │       ├── iic.c
│   │       ├── iic.h
│   │       ├── lscript.ld
│   │       ├── platform.c
│   │       ├── platform.h
│   │       └── platform_config.h
│   └── microblaze_video_march_31_1_bsp //MicroBlaze Project File
├── audio_vocoder.sim
├── audio_vocoder.srcs
│   ├── constrs_1/imports/new
│   │   └── video.xdc //Constraints File
│   └── sources_1
│       ├── ip
│       │   └── oddr_0 //Custom IP File
│       ├── bd
│       │   └── design_1 //Main Block Diagram
│       ├── imports //Custom Verilog Files
│       │   ├── sources_1
│       │   │   ├── imports/new
│       │   │   │   └── vga_driver.v
│       │   │   └── new
│       │   │       ├── axi_child_4.v
│       │   │       └── uart_reader.v
│       │   └── terefeil
│       │       ├── DataPath/src
│       │       │   └── processingPath.sv
│       │       └── audio_with_mb/audio_with_mb.srcs/sources_1/imports/new
│       │           └── i2s_ctrl.v
│       └── new //Custom Verilog Files
│           ├── audio_mux.v
│           ├── axi_child_512.v
│           ├── fft_output_format.v
│           └── fifo_ctrl.v
├── DATAPATH //Data Path System Verilog Files.
│   ├── dataPath.sv
│   ├── fwdFFT.sv
│   └── invFFT.sv
├── audio_i2s //Custom IP Files
├── audio_vocoder.xpr //Project File
├── datapath_ip //Custom IP Files
├── fft_interface_ip //Custom IP Files
├── firFilterBP //Custom IP Files
├── ifft_interface_ip //Custom IP Files
└── processing_path_ip //Custom IP Files


685 directories, 2220 files
