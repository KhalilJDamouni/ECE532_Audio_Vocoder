
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2018.3
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# axi_child_v1_0_S00_AXI, fft_output_format, fifo_ctrl, uart_reader, vga_driver

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a200tsbg484-1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: microblaze_0_local_memory
proc create_hier_cell_microblaze_0_local_memory { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_microblaze_0_local_memory() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 DLMB
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 ILMB

  # Create pins
  create_bd_pin -dir I -type clk LMB_Clk
  create_bd_pin -dir I -type rst SYS_Rst

  # Create instance: dlmb_bram_if_cntlr, and set properties
  set dlmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 dlmb_bram_if_cntlr ]
  set_property -dict [ list \
   CONFIG.C_ECC {0} \
 ] $dlmb_bram_if_cntlr

  # Create instance: dlmb_v10, and set properties
  set dlmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 dlmb_v10 ]

  # Create instance: ilmb_bram_if_cntlr, and set properties
  set ilmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 ilmb_bram_if_cntlr ]
  set_property -dict [ list \
   CONFIG.C_ECC {0} \
 ] $ilmb_bram_if_cntlr

  # Create instance: ilmb_v10, and set properties
  set ilmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 ilmb_v10 ]

  # Create instance: lmb_bram, and set properties
  set lmb_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 lmb_bram ]
  set_property -dict [ list \
   CONFIG.Enable_B {Use_ENB_Pin} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Use_RSTB_Pin {true} \
   CONFIG.use_bram_block {BRAM_Controller} \
 ] $lmb_bram

  # Create interface connections
  connect_bd_intf_net -intf_net microblaze_0_dlmb [get_bd_intf_pins DLMB] [get_bd_intf_pins dlmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_bus [get_bd_intf_pins dlmb_bram_if_cntlr/SLMB] [get_bd_intf_pins dlmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_cntlr [get_bd_intf_pins dlmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net microblaze_0_ilmb [get_bd_intf_pins ILMB] [get_bd_intf_pins ilmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_bus [get_bd_intf_pins ilmb_bram_if_cntlr/SLMB] [get_bd_intf_pins ilmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_cntlr [get_bd_intf_pins ilmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTB]

  # Create port connections
  connect_bd_net -net SYS_Rst_1 [get_bd_pins SYS_Rst] [get_bd_pins dlmb_bram_if_cntlr/LMB_Rst] [get_bd_pins dlmb_v10/SYS_Rst] [get_bd_pins ilmb_bram_if_cntlr/LMB_Rst] [get_bd_pins ilmb_v10/SYS_Rst]
  connect_bd_net -net microblaze_0_Clk [get_bd_pins LMB_Clk] [get_bd_pins dlmb_bram_if_cntlr/LMB_Clk] [get_bd_pins dlmb_v10/LMB_Clk] [get_bd_pins ilmb_bram_if_cntlr/LMB_Clk] [get_bd_pins ilmb_v10/LMB_Clk]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set iic_rtl [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 iic_rtl ]
  set usb_uart [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 usb_uart ]

  # Create ports
  set BCLK_O [ create_bd_port -dir O BCLK_O ]
  set LED [ create_bd_port -dir O -from 7 -to 0 LED ]
  set LRCLK_O [ create_bd_port -dir O LRCLK_O ]
  set MCLK_O [ create_bd_port -dir O MCLK_O ]
  set RX [ create_bd_port -dir I RX ]
  set SDATA_I [ create_bd_port -dir I SDATA_I ]
  set SDATA_O [ create_bd_port -dir O SDATA_O ]
  set VGA_B [ create_bd_port -dir O -from 3 -to 0 VGA_B ]
  set VGA_G [ create_bd_port -dir O -from 3 -to 0 VGA_G ]
  set VGA_HS [ create_bd_port -dir O VGA_HS ]
  set VGA_R [ create_bd_port -dir O -from 3 -to 0 VGA_R ]
  set VGA_VS [ create_bd_port -dir O VGA_VS ]
  set reset [ create_bd_port -dir I -type rst reset ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_LOW} \
 ] $reset
  set sys_clock_0 [ create_bd_port -dir I -type clk sys_clock_0 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {100000000} \
   CONFIG.PHASE {0.000} \
 ] $sys_clock_0

  # Create instance: axi_bram_ctrl_0, and set properties
  set axi_bram_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.1 axi_bram_ctrl_0 ]
  set_property -dict [ list \
   CONFIG.SINGLE_PORT_BRAM {1} \
 ] $axi_bram_ctrl_0

  # Create instance: axi_bram_ctrl_0_bram, and set properties
  set axi_bram_ctrl_0_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 axi_bram_ctrl_0_bram ]
  set_property -dict [ list \
   CONFIG.Byte_Size {8} \
   CONFIG.EN_SAFETY_CKT {true} \
   CONFIG.Enable_32bit_Address {true} \
   CONFIG.Enable_B {Use_ENB_Pin} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Operating_Mode_B {WRITE_FIRST} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Read_Width_A {32} \
   CONFIG.Read_Width_B {32} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {true} \
   CONFIG.Use_RSTA_Pin {true} \
   CONFIG.Use_RSTB_Pin {true} \
   CONFIG.Write_Depth_A {80000} \
   CONFIG.Write_Width_A {32} \
   CONFIG.Write_Width_B {32} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $axi_bram_ctrl_0_bram

  # Create instance: axi_child_v1_0_S00_A_0, and set properties
  set block_name axi_child_v1_0_S00_AXI
  set block_cell_name axi_child_v1_0_S00_A_0
  if { [catch {set axi_child_v1_0_S00_A_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $axi_child_v1_0_S00_A_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: axi_iic_0, and set properties
  set axi_iic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_iic:2.0 axi_iic_0 ]
  set_property -dict [ list \
   CONFIG.IIC_BOARD_INTERFACE {Custom} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_iic_0

  # Create instance: axi_uartlite_0, and set properties
  set axi_uartlite_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uartlite_0 ]
  set_property -dict [ list \
   CONFIG.UARTLITE_BOARD_INTERFACE {Custom} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_uartlite_0

  # Create instance: c_addsub_0, and set properties
  set c_addsub_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_addsub:12.0 c_addsub_0 ]
  set_property -dict [ list \
   CONFIG.A_Width {24} \
   CONFIG.B_Value {000000000000000000000000} \
   CONFIG.B_Width {24} \
   CONFIG.CE {false} \
   CONFIG.Latency {1} \
   CONFIG.Out_Width {24} \
 ] $c_addsub_0

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLKOUT1_JITTER {360.948} \
   CONFIG.CLKOUT1_PHASE_ERROR {301.601} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {12.288} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {48.000} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {78.125} \
   CONFIG.MMCM_DIVCLK_DIVIDE {5} \
   CONFIG.RESET_PORT {resetn} \
   CONFIG.RESET_TYPE {ACTIVE_LOW} \
 ] $clk_wiz_0

  # Create instance: clk_wiz_1, and set properties
  set clk_wiz_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_1 ]
  set_property -dict [ list \
   CONFIG.RESET_PORT {resetn} \
   CONFIG.RESET_TYPE {ACTIVE_LOW} \
 ] $clk_wiz_1

  # Create instance: dataPath_0, and set properties
  set dataPath_0 [ create_bd_cell -type ip -vlnv utoronto.ca:user:dataPath:2.0 dataPath_0 ]

  # Create instance: dataPath_1, and set properties
  set dataPath_1 [ create_bd_cell -type ip -vlnv utoronto.ca:user:dataPath:2.0 dataPath_1 ]

  # Create instance: fft_output_format_0, and set properties
  set block_name fft_output_format
  set block_cell_name fft_output_format_0
  if { [catch {set fft_output_format_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $fft_output_format_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: fifo_ctrl_0, and set properties
  set block_name fifo_ctrl
  set block_cell_name fifo_ctrl_0
  if { [catch {set fifo_ctrl_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $fifo_ctrl_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: fifo_generator_0, and set properties
  set fifo_generator_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.2 fifo_generator_0 ]
  set_property -dict [ list \
   CONFIG.Data_Count_Width {9} \
   CONFIG.Full_Threshold_Assert_Value {510} \
   CONFIG.Full_Threshold_Negate_Value {509} \
   CONFIG.Input_Data_Width {24} \
   CONFIG.Input_Depth {512} \
   CONFIG.Output_Data_Width {24} \
   CONFIG.Output_Depth {512} \
   CONFIG.Read_Data_Count_Width {9} \
   CONFIG.Write_Data_Count_Width {9} \
 ] $fifo_generator_0

  # Create instance: filterBP_0_postProcessing, and set properties
  set filterBP_0_postProcessing [ create_bd_cell -type ip -vlnv utoronto.ca:user:filterBP:1.0 filterBP_0_postProcessing ]

  # Create instance: filterBP_0_preProcessing, and set properties
  set filterBP_0_preProcessing [ create_bd_cell -type ip -vlnv utoronto.ca:user:filterBP:1.0 filterBP_0_preProcessing ]

  # Create instance: fwdFFT_0, and set properties
  set fwdFFT_0 [ create_bd_cell -type ip -vlnv utoronto.ca:user:fwdFFT:1.0 fwdFFT_0 ]

  # Create instance: fwdFFT_1, and set properties
  set fwdFFT_1 [ create_bd_cell -type ip -vlnv utoronto.ca:user:fwdFFT:1.0 fwdFFT_1 ]

  # Create instance: i2s_rx_tx_0, and set properties
  set i2s_rx_tx_0 [ create_bd_cell -type ip -vlnv utoronto.ca:user:i2s_rx_tx:1.0 i2s_rx_tx_0 ]

  # Create instance: invFFT_0, and set properties
  set invFFT_0 [ create_bd_cell -type ip -vlnv utoronto.ca:user:invFFT:1.0 invFFT_0 ]

  # Create instance: invFFT_1, and set properties
  set invFFT_1 [ create_bd_cell -type ip -vlnv utoronto.ca:user:invFFT:1.0 invFFT_1 ]

  # Create instance: mdm_1, and set properties
  set mdm_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mdm:3.2 mdm_1 ]

  # Create instance: microblaze_0, and set properties
  set microblaze_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:11.0 microblaze_0 ]
  set_property -dict [ list \
   CONFIG.C_DEBUG_ENABLED {1} \
   CONFIG.C_D_AXI {1} \
   CONFIG.C_D_LMB {1} \
   CONFIG.C_I_LMB {1} \
 ] $microblaze_0

  # Create instance: microblaze_0_axi_intc, and set properties
  set microblaze_0_axi_intc [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_intc:4.1 microblaze_0_axi_intc ]
  set_property -dict [ list \
   CONFIG.C_HAS_FAST {1} \
 ] $microblaze_0_axi_intc

  # Create instance: microblaze_0_axi_periph, and set properties
  set microblaze_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 microblaze_0_axi_periph ]
  set_property -dict [ list \
   CONFIG.NUM_MI {5} \
 ] $microblaze_0_axi_periph

  # Create instance: microblaze_0_local_memory
  create_hier_cell_microblaze_0_local_memory [current_bd_instance .] microblaze_0_local_memory

  # Create instance: microblaze_0_xlconcat, and set properties
  set microblaze_0_xlconcat [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 microblaze_0_xlconcat ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {2} \
 ] $microblaze_0_xlconcat

  # Create instance: proc_sys_reset_0, and set properties
  set proc_sys_reset_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_0 ]

  # Create instance: rst_clk_wiz_1_100M, and set properties
  set rst_clk_wiz_1_100M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_clk_wiz_1_100M ]

  # Create instance: uart_reader_0, and set properties
  set block_name uart_reader
  set block_cell_name uart_reader_0
  if { [catch {set uart_reader_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $uart_reader_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: vga_driver_0_upgraded_ipi, and set properties
  set block_name vga_driver
  set block_cell_name vga_driver_0_upgraded_ipi
  if { [catch {set vga_driver_0_upgraded_ipi [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $vga_driver_0_upgraded_ipi eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: xfft_0_FWD, and set properties
  set xfft_0_FWD [ create_bd_cell -type ip -vlnv xilinx.com:ip:xfft:9.1 xfft_0_FWD ]
  set_property -dict [ list \
   CONFIG.implementation_options {pipelined_streaming_io} \
   CONFIG.input_width {24} \
   CONFIG.number_of_stages_using_block_ram_for_data_and_phase_factors {3} \
   CONFIG.output_ordering {natural_order} \
   CONFIG.phase_factor_width {24} \
   CONFIG.scaling_options {block_floating_point} \
   CONFIG.target_clock_frequency {100} \
   CONFIG.transform_length {1024} \
   CONFIG.xk_index {true} \
 ] $xfft_0_FWD

  # Create instance: xfft_0_FWD1, and set properties
  set xfft_0_FWD1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xfft:9.1 xfft_0_FWD1 ]
  set_property -dict [ list \
   CONFIG.implementation_options {pipelined_streaming_io} \
   CONFIG.input_width {24} \
   CONFIG.number_of_stages_using_block_ram_for_data_and_phase_factors {3} \
   CONFIG.output_ordering {natural_order} \
   CONFIG.phase_factor_width {24} \
   CONFIG.scaling_options {block_floating_point} \
   CONFIG.target_clock_frequency {100} \
   CONFIG.transform_length {1024} \
   CONFIG.xk_index {true} \
 ] $xfft_0_FWD1

  # Create instance: xfft_INV, and set properties
  set xfft_INV [ create_bd_cell -type ip -vlnv xilinx.com:ip:xfft:9.1 xfft_INV ]
  set_property -dict [ list \
   CONFIG.implementation_options {pipelined_streaming_io} \
   CONFIG.input_width {24} \
   CONFIG.number_of_stages_using_block_ram_for_data_and_phase_factors {3} \
   CONFIG.output_ordering {natural_order} \
   CONFIG.phase_factor_width {24} \
   CONFIG.scaling_options {block_floating_point} \
   CONFIG.target_clock_frequency {100} \
   CONFIG.transform_length {1024} \
   CONFIG.xk_index {true} \
 ] $xfft_INV

  # Create instance: xfft_INV1, and set properties
  set xfft_INV1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xfft:9.1 xfft_INV1 ]
  set_property -dict [ list \
   CONFIG.implementation_options {pipelined_streaming_io} \
   CONFIG.input_width {24} \
   CONFIG.number_of_stages_using_block_ram_for_data_and_phase_factors {3} \
   CONFIG.output_ordering {natural_order} \
   CONFIG.phase_factor_width {24} \
   CONFIG.scaling_options {block_floating_point} \
   CONFIG.target_clock_frequency {100} \
   CONFIG.transform_length {1024} \
   CONFIG.xk_index {true} \
 ] $xfft_INV1

  # Create instance: xlconstant_0_windowEnable, and set properties
  set xlconstant_0_windowEnable [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0_windowEnable ]
  set_property -dict [ list \
   CONFIG.CONST_WIDTH {2} \
 ] $xlconstant_0_windowEnable

  # Create instance: xlconstant_1_filterClkEn, and set properties
  set xlconstant_1_filterClkEn [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1_filterClkEn ]

  # Create interface connections
  connect_bd_intf_net -intf_net axi_iic_0_IIC [get_bd_intf_ports iic_rtl] [get_bd_intf_pins axi_iic_0/IIC]
  connect_bd_intf_net -intf_net axi_uartlite_0_UART [get_bd_intf_ports usb_uart] [get_bd_intf_pins axi_uartlite_0/UART]
  connect_bd_intf_net -intf_net microblaze_0_axi_dp [get_bd_intf_pins microblaze_0/M_AXI_DP] [get_bd_intf_pins microblaze_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M01_AXI [get_bd_intf_pins axi_uartlite_0/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M01_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M02_AXI [get_bd_intf_pins axi_bram_ctrl_0/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M02_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M03_AXI [get_bd_intf_pins axi_child_v1_0_S00_A_0/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M03_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M04_AXI [get_bd_intf_pins axi_iic_0/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M04_AXI]
  connect_bd_intf_net -intf_net microblaze_0_debug [get_bd_intf_pins mdm_1/MBDEBUG_0] [get_bd_intf_pins microblaze_0/DEBUG]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_1 [get_bd_intf_pins microblaze_0/DLMB] [get_bd_intf_pins microblaze_0_local_memory/DLMB]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_1 [get_bd_intf_pins microblaze_0/ILMB] [get_bd_intf_pins microblaze_0_local_memory/ILMB]
  connect_bd_intf_net -intf_net microblaze_0_intc_axi [get_bd_intf_pins microblaze_0_axi_intc/s_axi] [get_bd_intf_pins microblaze_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net microblaze_0_interrupt [get_bd_intf_pins microblaze_0/INTERRUPT] [get_bd_intf_pins microblaze_0_axi_intc/interrupt]

  # Create port connections
  connect_bd_net -net RX_1 [get_bd_ports RX] [get_bd_pins uart_reader_0/RX]
  connect_bd_net -net SDATA_I_0_1 [get_bd_ports SDATA_I] [get_bd_pins axi_child_v1_0_S00_A_0/mic_bit] [get_bd_pins i2s_rx_tx_0/SDATA_I]
  connect_bd_net -net axi_bram_ctrl_0_bram_addr_a [get_bd_pins axi_bram_ctrl_0/bram_addr_a] [get_bd_pins axi_bram_ctrl_0_bram/addra]
  connect_bd_net -net axi_bram_ctrl_0_bram_clk_a [get_bd_pins axi_bram_ctrl_0/bram_clk_a] [get_bd_pins axi_bram_ctrl_0_bram/clka]
  connect_bd_net -net axi_bram_ctrl_0_bram_douta [get_bd_pins axi_bram_ctrl_0/bram_rddata_a] [get_bd_pins axi_bram_ctrl_0_bram/douta]
  connect_bd_net -net axi_bram_ctrl_0_bram_doutb [get_bd_pins axi_bram_ctrl_0_bram/doutb] [get_bd_pins vga_driver_0_upgraded_ipi/BRAM_PORTB_0_dout]
  connect_bd_net -net axi_bram_ctrl_0_bram_en_a [get_bd_pins axi_bram_ctrl_0/bram_en_a] [get_bd_pins axi_bram_ctrl_0_bram/ena]
  connect_bd_net -net axi_bram_ctrl_0_bram_we_a [get_bd_pins axi_bram_ctrl_0/bram_we_a] [get_bd_pins axi_bram_ctrl_0_bram/wea]
  connect_bd_net -net axi_bram_ctrl_0_bram_wrdata_a [get_bd_pins axi_bram_ctrl_0/bram_wrdata_a] [get_bd_pins axi_bram_ctrl_0_bram/dina]
  connect_bd_net -net axi_child_v1_0_S00_A_0_debug_mult [get_bd_ports LED] [get_bd_pins axi_child_v1_0_S00_A_0/debug_mult]
  connect_bd_net -net axi_child_v1_0_S00_A_0_multiplier [get_bd_pins axi_child_v1_0_S00_A_0/multiplier] [get_bd_pins dataPath_0/processingVal] [get_bd_pins dataPath_1/processingVal]
  connect_bd_net -net axi_child_v1_0_S00_A_0_windowEnable [get_bd_pins axi_child_v1_0_S00_A_0/windowEnable] [get_bd_pins dataPath_0/windowFreqEn] [get_bd_pins dataPath_1/windowFreqEn]
  connect_bd_net -net axi_child_v1_0_S00_A_0_windowVal [get_bd_pins axi_child_v1_0_S00_A_0/windowVal] [get_bd_pins dataPath_0/windowVal] [get_bd_pins dataPath_1/windowVal]
  connect_bd_net -net axi_iic_0_iic2intc_irpt [get_bd_pins axi_iic_0/iic2intc_irpt] [get_bd_pins microblaze_0_xlconcat/In1]
  connect_bd_net -net axi_uartlite_0_interrupt [get_bd_pins axi_uartlite_0/interrupt] [get_bd_pins microblaze_0_xlconcat/In0]
  connect_bd_net -net c_addsub_0_S [get_bd_pins c_addsub_0/S] [get_bd_pins filterBP_0_postProcessing/filter_in]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins dataPath_0/clk_12] [get_bd_pins dataPath_1/clk_12] [get_bd_pins i2s_rx_tx_0/CLK_12] [get_bd_pins proc_sys_reset_0/slowest_sync_clk]
  connect_bd_net -net clk_wiz_0_locked [get_bd_pins clk_wiz_0/locked] [get_bd_pins proc_sys_reset_0/dcm_locked]
  connect_bd_net -net clk_wiz_1_locked [get_bd_pins clk_wiz_1/locked] [get_bd_pins rst_clk_wiz_1_100M/dcm_locked]
  connect_bd_net -net dataPath_0_audiodataOut [get_bd_pins c_addsub_0/A] [get_bd_pins dataPath_0/audiodataOut]
  connect_bd_net -net dataPath_0_fftIn [get_bd_pins dataPath_0/fftIn] [get_bd_pins fwdFFT_0/dataIn]
  connect_bd_net -net dataPath_0_fftIn1 [get_bd_pins dataPath_1/fftIn] [get_bd_pins fwdFFT_1/dataIn]
  connect_bd_net -net dataPath_0_ifftIn [get_bd_pins dataPath_0/ifftIn] [get_bd_pins invFFT_0/dataIn]
  connect_bd_net -net dataPath_0_ifftIn1 [get_bd_pins dataPath_1/ifftIn] [get_bd_pins invFFT_1/dataIn]
  connect_bd_net -net dataPath_1_audiodataOut [get_bd_pins c_addsub_0/B] [get_bd_pins dataPath_1/audiodataOut]
  connect_bd_net -net fft_output_format_0_bin0 [get_bd_pins axi_child_v1_0_S00_A_0/bin0] [get_bd_pins fft_output_format_0/bin0]
  connect_bd_net -net fft_output_format_0_bin1 [get_bd_pins axi_child_v1_0_S00_A_0/bin1] [get_bd_pins fft_output_format_0/bin1]
  connect_bd_net -net fft_output_format_0_bin2 [get_bd_pins axi_child_v1_0_S00_A_0/bin2] [get_bd_pins fft_output_format_0/bin2]
  connect_bd_net -net fft_output_format_0_bin3 [get_bd_pins axi_child_v1_0_S00_A_0/bin3] [get_bd_pins fft_output_format_0/bin3]
  connect_bd_net -net fft_output_format_0_bin4 [get_bd_pins axi_child_v1_0_S00_A_0/bin4] [get_bd_pins fft_output_format_0/bin4]
  connect_bd_net -net fft_output_format_0_bin5 [get_bd_pins axi_child_v1_0_S00_A_0/bin5] [get_bd_pins fft_output_format_0/bin5]
  connect_bd_net -net fft_output_format_0_bin6 [get_bd_pins axi_child_v1_0_S00_A_0/bin6] [get_bd_pins fft_output_format_0/bin6]
  connect_bd_net -net fft_output_format_0_bin7 [get_bd_pins axi_child_v1_0_S00_A_0/bin7] [get_bd_pins fft_output_format_0/bin7]
  connect_bd_net -net fft_output_format_0_bin8 [get_bd_pins axi_child_v1_0_S00_A_0/bin8] [get_bd_pins fft_output_format_0/bin8]
  connect_bd_net -net fft_output_format_0_bin9 [get_bd_pins axi_child_v1_0_S00_A_0/bin9] [get_bd_pins fft_output_format_0/bin9]
  connect_bd_net -net fifo_ctrl_0_read_en [get_bd_pins fifo_ctrl_0/read_en] [get_bd_pins fifo_generator_0/rd_en]
  connect_bd_net -net fifo_ctrl_0_write_en [get_bd_pins fifo_ctrl_0/write_en] [get_bd_pins fifo_generator_0/wr_en]
  connect_bd_net -net fifo_generator_0_dout [get_bd_pins dataPath_1/audiodataIn] [get_bd_pins fifo_generator_0/dout]
  connect_bd_net -net fifo_generator_0_full [get_bd_pins fifo_ctrl_0/write_full] [get_bd_pins fifo_generator_0/full]
  connect_bd_net -net filterBP_0_filter_out [get_bd_pins axi_child_v1_0_S00_A_0/vocoder_value] [get_bd_pins filterBP_0_postProcessing/filter_out] [get_bd_pins i2s_rx_tx_0/from_datapath]
  connect_bd_net -net filterBP_0_preProcessing_filter_out [get_bd_pins dataPath_0/audiodataIn] [get_bd_pins fifo_generator_0/din] [get_bd_pins filterBP_0_preProcessing/filter_out]
  connect_bd_net -net fwdFFT_0_configDataFFT [get_bd_pins fwdFFT_0/configDataFFT] [get_bd_pins xfft_0_FWD/s_axis_config_tdata]
  connect_bd_net -net fwdFFT_0_configDataFFT1 [get_bd_pins fwdFFT_1/configDataFFT] [get_bd_pins xfft_0_FWD1/s_axis_config_tdata]
  connect_bd_net -net fwdFFT_0_configValidFFT [get_bd_pins fwdFFT_0/configValidFFT] [get_bd_pins xfft_0_FWD/s_axis_config_tvalid]
  connect_bd_net -net fwdFFT_0_configValidFFT1 [get_bd_pins fwdFFT_1/configValidFFT] [get_bd_pins xfft_0_FWD1/s_axis_config_tvalid]
  connect_bd_net -net fwdFFT_0_dataOut [get_bd_pins dataPath_0/fftOut] [get_bd_pins fwdFFT_0/dataOut]
  connect_bd_net -net fwdFFT_0_dataOut1 [get_bd_pins dataPath_1/fftOut] [get_bd_pins fwdFFT_1/dataOut]
  connect_bd_net -net fwdFFT_0_mFFTSData [get_bd_pins fwdFFT_0/mFFTSData] [get_bd_pins xfft_0_FWD/s_axis_data_tdata]
  connect_bd_net -net fwdFFT_0_mFFTSData1 [get_bd_pins fwdFFT_1/mFFTSData] [get_bd_pins xfft_0_FWD1/s_axis_data_tdata]
  connect_bd_net -net fwdFFT_0_mFFTSLast [get_bd_pins fwdFFT_0/mFFTSLast] [get_bd_pins xfft_0_FWD/s_axis_data_tlast]
  connect_bd_net -net fwdFFT_0_mFFTSLast1 [get_bd_pins fwdFFT_1/mFFTSLast] [get_bd_pins xfft_0_FWD1/s_axis_data_tlast]
  connect_bd_net -net fwdFFT_0_mFFTSValid [get_bd_pins fwdFFT_0/mFFTSValid] [get_bd_pins xfft_0_FWD/s_axis_data_tvalid]
  connect_bd_net -net fwdFFT_0_mFFTSValid1 [get_bd_pins fwdFFT_1/mFFTSValid] [get_bd_pins xfft_0_FWD1/s_axis_data_tvalid]
  connect_bd_net -net fwdFFT_0_sFFTMReady [get_bd_pins fwdFFT_0/sFFTMReady] [get_bd_pins xfft_0_FWD/m_axis_data_tready]
  connect_bd_net -net fwdFFT_0_sFFTMReady1 [get_bd_pins fwdFFT_1/sFFTMReady] [get_bd_pins xfft_0_FWD1/m_axis_data_tready]
  connect_bd_net -net i2s_rx_tx_0_BCLK_O [get_bd_ports BCLK_O] [get_bd_pins i2s_rx_tx_0/BCLK_O]
  connect_bd_net -net i2s_rx_tx_0_LRCLK_O [get_bd_ports LRCLK_O] [get_bd_pins i2s_rx_tx_0/LRCLK_O]
  connect_bd_net -net i2s_rx_tx_0_MCLK_O [get_bd_ports MCLK_O] [get_bd_pins i2s_rx_tx_0/MCLK_O]
  connect_bd_net -net i2s_rx_tx_0_SDATA_O [get_bd_ports SDATA_O] [get_bd_pins i2s_rx_tx_0/SDATA_O]
  connect_bd_net -net i2s_rx_tx_0_to_datapath [get_bd_pins axi_child_v1_0_S00_A_0/mic_value] [get_bd_pins filterBP_0_preProcessing/filter_in] [get_bd_pins i2s_rx_tx_0/to_datapath]
  connect_bd_net -net invFFT_0_configData_IFFT [get_bd_pins invFFT_0/configData_IFFT] [get_bd_pins xfft_INV/s_axis_config_tdata]
  connect_bd_net -net invFFT_0_configData_IFFT1 [get_bd_pins invFFT_1/configData_IFFT] [get_bd_pins xfft_INV1/s_axis_config_tdata]
  connect_bd_net -net invFFT_0_configValid_IFFT [get_bd_pins invFFT_0/configValid_IFFT] [get_bd_pins xfft_INV/s_axis_config_tvalid]
  connect_bd_net -net invFFT_0_configValid_IFFT1 [get_bd_pins invFFT_1/configValid_IFFT] [get_bd_pins xfft_INV1/s_axis_config_tvalid]
  connect_bd_net -net invFFT_0_dataOut [get_bd_pins dataPath_0/ifftOut] [get_bd_pins invFFT_0/dataOut]
  connect_bd_net -net invFFT_0_dataOut1 [get_bd_pins dataPath_1/ifftOut] [get_bd_pins invFFT_1/dataOut]
  connect_bd_net -net invFFT_0_mIFFTSData [get_bd_pins invFFT_0/mIFFTSData] [get_bd_pins xfft_INV/s_axis_data_tdata]
  connect_bd_net -net invFFT_0_mIFFTSData1 [get_bd_pins invFFT_1/mIFFTSData] [get_bd_pins xfft_INV1/s_axis_data_tdata]
  connect_bd_net -net invFFT_0_mIFFTSLast [get_bd_pins invFFT_0/mIFFTSLast] [get_bd_pins xfft_INV/s_axis_data_tlast]
  connect_bd_net -net invFFT_0_mIFFTSLast1 [get_bd_pins invFFT_1/mIFFTSLast] [get_bd_pins xfft_INV1/s_axis_data_tlast]
  connect_bd_net -net invFFT_0_mIFFTSValid [get_bd_pins invFFT_0/mIFFTSValid] [get_bd_pins xfft_INV/s_axis_data_tvalid]
  connect_bd_net -net invFFT_0_mIFFTSValid1 [get_bd_pins invFFT_1/mIFFTSValid] [get_bd_pins xfft_INV1/s_axis_data_tvalid]
  connect_bd_net -net invFFT_0_sIFFTMReady [get_bd_pins invFFT_0/sIFFTMReady] [get_bd_pins xfft_INV/m_axis_data_tready]
  connect_bd_net -net invFFT_0_sIFFTMReady1 [get_bd_pins invFFT_1/sIFFTMReady] [get_bd_pins xfft_INV1/m_axis_data_tready]
  connect_bd_net -net mdm_1_debug_sys_rst [get_bd_pins mdm_1/Debug_SYS_Rst] [get_bd_pins rst_clk_wiz_1_100M/mb_debug_sys_rst]
  connect_bd_net -net microblaze_0_Clk [get_bd_pins axi_bram_ctrl_0/s_axi_aclk] [get_bd_pins axi_child_v1_0_S00_A_0/S_AXI_ACLK] [get_bd_pins axi_iic_0/s_axi_aclk] [get_bd_pins axi_uartlite_0/s_axi_aclk] [get_bd_pins clk_wiz_1/clk_out1] [get_bd_pins microblaze_0/Clk] [get_bd_pins microblaze_0_axi_intc/processor_clk] [get_bd_pins microblaze_0_axi_intc/s_axi_aclk] [get_bd_pins microblaze_0_axi_periph/ACLK] [get_bd_pins microblaze_0_axi_periph/M00_ACLK] [get_bd_pins microblaze_0_axi_periph/M01_ACLK] [get_bd_pins microblaze_0_axi_periph/M02_ACLK] [get_bd_pins microblaze_0_axi_periph/M03_ACLK] [get_bd_pins microblaze_0_axi_periph/M04_ACLK] [get_bd_pins microblaze_0_axi_periph/S00_ACLK] [get_bd_pins microblaze_0_local_memory/LMB_Clk] [get_bd_pins rst_clk_wiz_1_100M/slowest_sync_clk] [get_bd_pins uart_reader_0/CLK100MHZ] [get_bd_pins vga_driver_0_upgraded_ipi/CLK100MHZ]
  connect_bd_net -net microblaze_0_intr [get_bd_pins microblaze_0_axi_intc/intr] [get_bd_pins microblaze_0_xlconcat/dout]
  connect_bd_net -net proc_sys_reset_0_peripheral_aresetn [get_bd_pins fifo_generator_0/srst] [get_bd_pins filterBP_0_postProcessing/resetn] [get_bd_pins filterBP_0_preProcessing/resetn] [get_bd_pins i2s_rx_tx_0/resetn] [get_bd_pins proc_sys_reset_0/peripheral_aresetn]
  connect_bd_net -net processingPath_0_axi_clk [get_bd_pins c_addsub_0/CLK] [get_bd_pins dataPath_0/aclk_48k] [get_bd_pins fft_output_format_0/clk] [get_bd_pins fifo_generator_0/clk] [get_bd_pins filterBP_0_postProcessing/clk] [get_bd_pins filterBP_0_preProcessing/clk] [get_bd_pins xfft_0_FWD/aclk] [get_bd_pins xfft_0_FWD1/aclk] [get_bd_pins xfft_INV/aclk] [get_bd_pins xfft_INV1/aclk]
  connect_bd_net -net reset_1 [get_bd_ports reset] [get_bd_pins clk_wiz_0/resetn] [get_bd_pins clk_wiz_1/resetn] [get_bd_pins proc_sys_reset_0/ext_reset_in] [get_bd_pins rst_clk_wiz_1_100M/ext_reset_in] [get_bd_pins vga_driver_0_upgraded_ipi/CPU_RESETN]
  connect_bd_net -net rst_clk_wiz_1_100M_bus_struct_reset [get_bd_pins microblaze_0_local_memory/SYS_Rst] [get_bd_pins rst_clk_wiz_1_100M/bus_struct_reset]
  connect_bd_net -net rst_clk_wiz_1_100M_mb_reset [get_bd_pins microblaze_0/Reset] [get_bd_pins microblaze_0_axi_intc/processor_rst] [get_bd_pins rst_clk_wiz_1_100M/mb_reset]
  connect_bd_net -net rst_clk_wiz_1_100M_peripheral_aresetn [get_bd_pins axi_bram_ctrl_0/s_axi_aresetn] [get_bd_pins axi_child_v1_0_S00_A_0/S_AXI_ARESETN] [get_bd_pins axi_iic_0/s_axi_aresetn] [get_bd_pins axi_uartlite_0/s_axi_aresetn] [get_bd_pins microblaze_0_axi_intc/s_axi_aresetn] [get_bd_pins microblaze_0_axi_periph/ARESETN] [get_bd_pins microblaze_0_axi_periph/M00_ARESETN] [get_bd_pins microblaze_0_axi_periph/M01_ARESETN] [get_bd_pins microblaze_0_axi_periph/M02_ARESETN] [get_bd_pins microblaze_0_axi_periph/M03_ARESETN] [get_bd_pins microblaze_0_axi_periph/M04_ARESETN] [get_bd_pins microblaze_0_axi_periph/S00_ARESETN] [get_bd_pins rst_clk_wiz_1_100M/peripheral_aresetn]
  connect_bd_net -net sys_clock_0_1 [get_bd_ports sys_clock_0] [get_bd_pins clk_wiz_0/clk_in1] [get_bd_pins clk_wiz_1/clk_in1]
  connect_bd_net -net uart_reader_0_number_wire [get_bd_pins axi_child_v1_0_S00_A_0/number] [get_bd_pins uart_reader_0/number_wire]
  connect_bd_net -net uart_reader_0_value [get_bd_pins axi_child_v1_0_S00_A_0/keyboard_value] [get_bd_pins uart_reader_0/value]
  connect_bd_net -net vga_driver_0_VGA_B [get_bd_ports VGA_B] [get_bd_pins vga_driver_0_upgraded_ipi/VGA_B]
  connect_bd_net -net vga_driver_0_VGA_G [get_bd_ports VGA_G] [get_bd_pins vga_driver_0_upgraded_ipi/VGA_G]
  connect_bd_net -net vga_driver_0_VGA_HS [get_bd_ports VGA_HS] [get_bd_pins vga_driver_0_upgraded_ipi/VGA_HS]
  connect_bd_net -net vga_driver_0_VGA_VS [get_bd_ports VGA_VS] [get_bd_pins vga_driver_0_upgraded_ipi/VGA_VS]
  connect_bd_net -net vga_driver_0_bram_address [get_bd_pins axi_bram_ctrl_0_bram/addrb] [get_bd_pins vga_driver_0_upgraded_ipi/BRAM_PORTB_0_addr]
  connect_bd_net -net vga_driver_0_bram_en [get_bd_pins axi_bram_ctrl_0_bram/enb] [get_bd_pins vga_driver_0_upgraded_ipi/BRAM_PORTB_0_en]
  connect_bd_net -net vga_driver_0_bram_we [get_bd_pins axi_bram_ctrl_0_bram/web] [get_bd_pins vga_driver_0_upgraded_ipi/BRAM_PORTB_0_we]
  connect_bd_net -net vga_driver_0_upgraded_ipi_BRAM_PORTB_0_clk [get_bd_pins axi_bram_ctrl_0_bram/clkb] [get_bd_pins vga_driver_0_upgraded_ipi/BRAM_PORTB_0_clk]
  connect_bd_net -net vga_driver_0_upgraded_ipi_BRAM_PORTB_0_din [get_bd_pins axi_bram_ctrl_0_bram/dinb] [get_bd_pins vga_driver_0_upgraded_ipi/BRAM_PORTB_0_din]
  connect_bd_net -net vga_driver_0_upgraded_ipi_VGA_R [get_bd_ports VGA_R] [get_bd_pins vga_driver_0_upgraded_ipi/VGA_R]
  connect_bd_net -net xfft_0_m_axis_data_tdata [get_bd_pins axi_child_v1_0_S00_A_0/fft_value] [get_bd_pins fft_output_format_0/fft_data] [get_bd_pins fwdFFT_0/sFFTMData] [get_bd_pins xfft_0_FWD/m_axis_data_tdata]
  connect_bd_net -net xfft_0_m_axis_data_tdata1 [get_bd_pins fwdFFT_1/sFFTMData] [get_bd_pins xfft_0_FWD1/m_axis_data_tdata]
  connect_bd_net -net xfft_0_m_axis_data_tlast [get_bd_pins fwdFFT_0/sFFTMLast] [get_bd_pins xfft_0_FWD/m_axis_data_tlast]
  connect_bd_net -net xfft_0_m_axis_data_tlast1 [get_bd_pins fwdFFT_1/sFFTMLast] [get_bd_pins xfft_0_FWD1/m_axis_data_tlast]
  connect_bd_net -net xfft_0_m_axis_data_tuser [get_bd_pins axi_child_v1_0_S00_A_0/fft_index] [get_bd_pins fft_output_format_0/fft_index] [get_bd_pins xfft_0_FWD/m_axis_data_tuser]
  connect_bd_net -net xfft_0_m_axis_data_tvalid [get_bd_pins fwdFFT_0/sFFTMValid] [get_bd_pins xfft_0_FWD/m_axis_data_tvalid]
  connect_bd_net -net xfft_0_m_axis_data_tvalid1 [get_bd_pins fwdFFT_1/sFFTMValid] [get_bd_pins xfft_0_FWD1/m_axis_data_tvalid]
  connect_bd_net -net xfft_0_s_axis_config_tready [get_bd_pins fwdFFT_0/configReadyFFT] [get_bd_pins xfft_0_FWD/s_axis_config_tready]
  connect_bd_net -net xfft_0_s_axis_config_tready1 [get_bd_pins fwdFFT_1/configReadyFFT] [get_bd_pins xfft_0_FWD1/s_axis_config_tready]
  connect_bd_net -net xfft_0_s_axis_data_tready [get_bd_pins fwdFFT_0/mFFTSReady] [get_bd_pins xfft_0_FWD/s_axis_data_tready]
  connect_bd_net -net xfft_0_s_axis_data_tready1 [get_bd_pins fwdFFT_1/mFFTSReady] [get_bd_pins xfft_0_FWD1/s_axis_data_tready]
  connect_bd_net -net xfft_INV_m_axis_data_tdata [get_bd_pins axi_child_v1_0_S00_A_0/ifft_value] [get_bd_pins invFFT_0/sIFFTMData] [get_bd_pins xfft_INV/m_axis_data_tdata]
  connect_bd_net -net xfft_INV_m_axis_data_tdata1 [get_bd_pins invFFT_1/sIFFTMData] [get_bd_pins xfft_INV1/m_axis_data_tdata]
  connect_bd_net -net xfft_INV_m_axis_data_tlast [get_bd_pins invFFT_0/sIFFTMLast] [get_bd_pins xfft_INV/m_axis_data_tlast]
  connect_bd_net -net xfft_INV_m_axis_data_tlast1 [get_bd_pins invFFT_1/sIFFTMLast] [get_bd_pins xfft_INV1/m_axis_data_tlast]
  connect_bd_net -net xfft_INV_m_axis_data_tuser [get_bd_pins axi_child_v1_0_S00_A_0/ifft_index] [get_bd_pins xfft_INV/m_axis_data_tuser]
  connect_bd_net -net xfft_INV_m_axis_data_tvalid [get_bd_pins invFFT_0/sIFFTMValid] [get_bd_pins xfft_INV/m_axis_data_tvalid]
  connect_bd_net -net xfft_INV_m_axis_data_tvalid1 [get_bd_pins invFFT_1/sIFFTMValid] [get_bd_pins xfft_INV1/m_axis_data_tvalid]
  connect_bd_net -net xfft_INV_s_axis_config_tready [get_bd_pins invFFT_0/configReady_IFFT] [get_bd_pins xfft_INV/s_axis_config_tready]
  connect_bd_net -net xfft_INV_s_axis_config_tready1 [get_bd_pins invFFT_1/configReady_IFFT] [get_bd_pins xfft_INV1/s_axis_config_tready]
  connect_bd_net -net xfft_INV_s_axis_data_tready [get_bd_pins invFFT_0/mIFFTSReady] [get_bd_pins xfft_INV/s_axis_data_tready]
  connect_bd_net -net xfft_INV_s_axis_data_tready1 [get_bd_pins invFFT_1/mIFFTSReady] [get_bd_pins xfft_INV1/s_axis_data_tready]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins filterBP_0_postProcessing/clk_enable] [get_bd_pins filterBP_0_preProcessing/clk_enable] [get_bd_pins xlconstant_1_filterClkEn/dout]

  # Create address segments
  create_bd_addr_seg -range 0x00200000 -offset 0xC0000000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] SEG_axi_bram_ctrl_0_Mem0
  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_child_v1_0_S00_A_0/S_AXI/reg0] SEG_axi_child_v1_0_S00_A_0_reg0
  create_bd_addr_seg -range 0x00010000 -offset 0x40800000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_iic_0/S_AXI/Reg] SEG_axi_iic_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40600000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_uartlite_0/S_AXI/Reg] SEG_axi_uartlite_0_Reg
  create_bd_addr_seg -range 0x00020000 -offset 0x00000000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs microblaze_0_local_memory/dlmb_bram_if_cntlr/SLMB/Mem] SEG_dlmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00020000 -offset 0x00000000 [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs microblaze_0_local_memory/ilmb_bram_if_cntlr/SLMB/Mem] SEG_ilmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00020000 -offset 0x41200000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs microblaze_0_axi_intc/S_AXI/Reg] SEG_microblaze_0_axi_intc_Reg


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


