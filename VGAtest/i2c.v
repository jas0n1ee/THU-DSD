// i2c.v

// This file was auto-generated as part of a generation operation.
// If you edit it your changes will probably be lost.

`timescale 1 ps / 1 ps
module i2c (
		input  wire       wb_clk_i,   //            clock.clk
		input  wire       wb_rst_i,   //      clock_reset.reset
		inout  wire       scl_pad_io, //         export_0.export
		inout  wire       sda_pad_io, //                 .export
		input  wire [2:0] wb_adr_i,   //   avalon_slave_0.address
		input  wire [7:0] wb_dat_i,   //                 .writedata
		output wire [7:0] wb_dat_o,   //                 .readdata
		input  wire       wb_we_i,    //                 .write
		input  wire       wb_stb_i,   //                 .chipselect
		output wire       wb_ack_o,   //                 .waitrequest_n
		output wire       wb_inta_o   // interrupt_sender.irq
	);

	opencores_i2c i2c (
		.wb_clk_i   (wb_clk_i),   //            clock.clk
		.wb_rst_i   (wb_rst_i),   //      clock_reset.reset
		.scl_pad_io (scl_pad_io), //         export_0.export
		.sda_pad_io (sda_pad_io), //                 .export
		.wb_adr_i   (wb_adr_i),   //   avalon_slave_0.address
		.wb_dat_i   (wb_dat_i),   //                 .writedata
		.wb_dat_o   (wb_dat_o),   //                 .readdata
		.wb_we_i    (wb_we_i),    //                 .write
		.wb_stb_i   (wb_stb_i),   //                 .chipselect
		.wb_ack_o   (wb_ack_o),   //                 .waitrequest_n
		.wb_inta_o  (wb_inta_o)   // interrupt_sender.irq
	);

endmodule
