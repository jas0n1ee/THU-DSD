# TCL File Generated by Component Editor 11.0sp1
# Wed Aug 10 09:50:35 CST 2011
# DO NOT MODIFY


# +-----------------------------------
# | 
# | sram_16bit_512k "SRAM_16Bit_512K" v1.0.2
# | null 2011.08.10.09:50:35
# | 
# | 
# | E:/TASKs/DE2_porting/DE2_NIOS_HOST_MOUSE_VGA/ip/SRAM_16Bit_512K/hdl/SRAM_16Bit_512K.v
# | 
# |    ./hdl/SRAM_16Bit_512K.v syn, sim
# | 
# +-----------------------------------

# +-----------------------------------
# | request TCL package from ACDS 11.0
# | 
package require -exact sopc 11.0
# | 
# +-----------------------------------

# +-----------------------------------
# | module sram_16bit_512k
# | 
set_module_property NAME sram_16bit_512k
set_module_property VERSION 1.0.2
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP "Terasic Technologies Inc"
set_module_property DISPLAY_NAME SRAM_16Bit_512K
set_module_property TOP_LEVEL_HDL_FILE hdl/SRAM_16Bit_512K.v
set_module_property TOP_LEVEL_HDL_MODULE SRAM_16Bit_512K
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property ANALYZE_HDL TRUE
set_module_property STATIC_TOP_LEVEL_MODULE_NAME ""
set_module_property FIX_110_VIP_PATH false
# | 
# +-----------------------------------

# +-----------------------------------
# | files
# | 
add_file hdl/SRAM_16Bit_512K.v {SYNTHESIS SIMULATION}
# | 
# +-----------------------------------

# +-----------------------------------
# | parameters
# | 
# | 
# +-----------------------------------

# +-----------------------------------
# | display items
# | 
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point clk
# | 
add_interface clk clock end
set_interface_property clk clockRate 0

set_interface_property clk ENABLED true

add_interface_port clk iCLK clk Input 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point avalon_slave_0_export
# | 
add_interface avalon_slave_0_export conduit end

set_interface_property avalon_slave_0_export ENABLED true

add_interface_port avalon_slave_0_export SRAM_DQ export Bidir 16
add_interface_port avalon_slave_0_export SRAM_ADDR export Output 18
add_interface_port avalon_slave_0_export SRAM_UB_N export Output 1
add_interface_port avalon_slave_0_export SRAM_LB_N export Output 1
add_interface_port avalon_slave_0_export SRAM_WE_N export Output 1
add_interface_port avalon_slave_0_export SRAM_CE_N export Output 1
add_interface_port avalon_slave_0_export SRAM_OE_N export Output 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point avalon_slave_0
# | 
add_interface avalon_slave_0 avalon end
set_interface_property avalon_slave_0 addressUnits WORDS
set_interface_property avalon_slave_0 associatedClock clk
set_interface_property avalon_slave_0 associatedReset reset_n
set_interface_property avalon_slave_0 bitsPerSymbol 8
set_interface_property avalon_slave_0 burstOnBurstBoundariesOnly false
set_interface_property avalon_slave_0 burstcountUnits WORDS
set_interface_property avalon_slave_0 explicitAddressSpan 524288
set_interface_property avalon_slave_0 holdTime 20
set_interface_property avalon_slave_0 isMemoryDevice true
set_interface_property avalon_slave_0 linewrapBursts false
set_interface_property avalon_slave_0 maximumPendingReadTransactions 0
set_interface_property avalon_slave_0 readLatency 0
set_interface_property avalon_slave_0 readWaitStates 20
set_interface_property avalon_slave_0 readWaitTime 20
set_interface_property avalon_slave_0 setupTime 20
set_interface_property avalon_slave_0 timingUnits Nanoseconds
set_interface_property avalon_slave_0 writeWaitStates 20
set_interface_property avalon_slave_0 writeWaitTime 20

set_interface_property avalon_slave_0 ENABLED true

add_interface_port avalon_slave_0 iDATA writedata Input 16
add_interface_port avalon_slave_0 oDATA readdata Output 16
add_interface_port avalon_slave_0 iADDR address Input 18
add_interface_port avalon_slave_0 iWE_N write_n Input 1
add_interface_port avalon_slave_0 iOE_N read_n Input 1
add_interface_port avalon_slave_0 iCE_N chipselect_n Input 1
add_interface_port avalon_slave_0 iBE_N byteenable_n Input 2
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point reset_n
# | 
add_interface reset_n reset end
set_interface_property reset_n associatedClock clk
set_interface_property reset_n synchronousEdges DEASSERT

set_interface_property reset_n ENABLED true

add_interface_port reset_n iRST_N reset_n Input 1
# | 
# +-----------------------------------
