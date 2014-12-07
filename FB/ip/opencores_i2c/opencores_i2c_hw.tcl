# TCL File Generated by Component Editor 9.0
# Sat Jul 20 11:02:20 CST 2013
# DO NOT MODIFY


# +-----------------------------------
# | 
# | opencores_i2c "OpenCores I2C" v9.1
# |  2013.07.20.11:02:20
# | 
# | 
# | F:/DigitalDesignCourse/LED/mySoPC/ip/opencores_i2c/opencores_i2c.v
# | 
# |    ./opencores_i2c.v syn, sim
# |    ./i2c_master_bit_ctrl.v syn, sim
# |    ./i2c_master_byte_ctrl.v syn, sim
# |    ./i2c_master_defines.v syn, sim
# |    ./i2c_master_top.v syn, sim
# |    ./timescale.v syn, sim
# | 
# +-----------------------------------


# +-----------------------------------
# | module opencores_i2c
# | 
set_module_property DESCRIPTION ""
set_module_property NAME opencores_i2c
set_module_property VERSION 9.1
set_module_property INTERNAL false
set_module_property GROUP "Interface Protocols/Serial"
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME "OpenCores I2C"
set_module_property TOP_LEVEL_HDL_FILE opencores_i2c.v
set_module_property TOP_LEVEL_HDL_MODULE opencores_i2c
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE false
# | 
# +-----------------------------------

# +-----------------------------------
# | files
# | 
add_file opencores_i2c.v {SYNTHESIS SIMULATION}
add_file i2c_master_bit_ctrl.v {SYNTHESIS SIMULATION}
add_file i2c_master_byte_ctrl.v {SYNTHESIS SIMULATION}
add_file i2c_master_defines.v {SYNTHESIS SIMULATION}
add_file i2c_master_top.v {SYNTHESIS SIMULATION}
add_file timescale.v {SYNTHESIS SIMULATION}
# | 
# +-----------------------------------

# +-----------------------------------
# | parameters
# | 
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point clock
# | 
add_interface clock clock end
set_interface_property clock ptfSchematicName ""

set_interface_property clock ENABLED true

add_interface_port clock wb_clk_i clk Input 1
add_interface_port clock wb_rst_i reset Input 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point export_0
# | 
add_interface export_0 conduit start

set_interface_property export_0 ASSOCIATED_CLOCK clock
set_interface_property export_0 ENABLED true

add_interface_port export_0 scl_pad_io export Bidir 1
add_interface_port export_0 sda_pad_io export Bidir 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point avalon_slave_0
# | 
add_interface avalon_slave_0 avalon end
set_interface_property avalon_slave_0 addressAlignment NATIVE
set_interface_property avalon_slave_0 bridgesToMaster ""
set_interface_property avalon_slave_0 burstOnBurstBoundariesOnly false
set_interface_property avalon_slave_0 holdTime 0
set_interface_property avalon_slave_0 isMemoryDevice false
set_interface_property avalon_slave_0 isNonVolatileStorage false
set_interface_property avalon_slave_0 linewrapBursts false
set_interface_property avalon_slave_0 maximumPendingReadTransactions 0
set_interface_property avalon_slave_0 printableDevice false
set_interface_property avalon_slave_0 readLatency 0
set_interface_property avalon_slave_0 readWaitTime 1
set_interface_property avalon_slave_0 setupTime 0
set_interface_property avalon_slave_0 timingUnits Cycles
set_interface_property avalon_slave_0 writeWaitTime 0

set_interface_property avalon_slave_0 ASSOCIATED_CLOCK clock
set_interface_property avalon_slave_0 ENABLED true

add_interface_port avalon_slave_0 wb_adr_i address Input 3
add_interface_port avalon_slave_0 wb_dat_i writedata Input 8
add_interface_port avalon_slave_0 wb_dat_o readdata Output 8
add_interface_port avalon_slave_0 wb_we_i write Input 1
add_interface_port avalon_slave_0 wb_stb_i chipselect Input 1
add_interface_port avalon_slave_0 wb_ack_o waitrequest_n Output 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point interrupt_sender
# | 
add_interface interrupt_sender interrupt end
set_interface_property interrupt_sender associatedAddressablePoint avalon_slave_0

set_interface_property interrupt_sender ASSOCIATED_CLOCK clock
set_interface_property interrupt_sender ENABLED true

add_interface_port interrupt_sender wb_inta_o irq Output 1
# | 
# +-----------------------------------
