  //Example instantiation for system 'kernel'
  kernel kernel_inst
    (
      .SRAM_ADDR_from_the_sram_16bit_512k_0      (SRAM_ADDR_from_the_sram_16bit_512k_0),
      .SRAM_CE_N_from_the_sram_16bit_512k_0      (SRAM_CE_N_from_the_sram_16bit_512k_0),
      .SRAM_DQ_to_and_from_the_sram_16bit_512k_0 (SRAM_DQ_to_and_from_the_sram_16bit_512k_0),
      .SRAM_LB_N_from_the_sram_16bit_512k_0      (SRAM_LB_N_from_the_sram_16bit_512k_0),
      .SRAM_OE_N_from_the_sram_16bit_512k_0      (SRAM_OE_N_from_the_sram_16bit_512k_0),
      .SRAM_UB_N_from_the_sram_16bit_512k_0      (SRAM_UB_N_from_the_sram_16bit_512k_0),
      .SRAM_WE_N_from_the_sram_16bit_512k_0      (SRAM_WE_N_from_the_sram_16bit_512k_0),
      .VGA_BLANK_from_the_binary_vga             (VGA_BLANK_from_the_binary_vga),
      .VGA_B_from_the_binary_vga                 (VGA_B_from_the_binary_vga),
      .VGA_CLK_from_the_binary_vga               (VGA_CLK_from_the_binary_vga),
      .VGA_G_from_the_binary_vga                 (VGA_G_from_the_binary_vga),
      .VGA_HS_from_the_binary_vga                (VGA_HS_from_the_binary_vga),
      .VGA_R_from_the_binary_vga                 (VGA_R_from_the_binary_vga),
      .VGA_SYNC_from_the_binary_vga              (VGA_SYNC_from_the_binary_vga),
      .VGA_VS_from_the_binary_vga                (VGA_VS_from_the_binary_vga),
      .clk_50                                    (clk_50),
      .iCLK_25_to_the_binary_vga                 (iCLK_25_to_the_binary_vga),
      .in_port_to_the_gpio                       (in_port_to_the_gpio),
      .in_port_to_the_key                        (in_port_to_the_key),
      .in_port_to_the_pio_sw                     (in_port_to_the_pio_sw),
      .out_port_from_the_pio_green               (out_port_from_the_pio_green),
      .out_port_from_the_pio_red                 (out_port_from_the_pio_red),
      .reset_n                                   (reset_n),
      .select_n_to_the_cfi_flash                 (select_n_to_the_cfi_flash),
      .tri_state_bridge_address                  (tri_state_bridge_address),
      .tri_state_bridge_data                     (tri_state_bridge_data),
      .tri_state_bridge_readn                    (tri_state_bridge_readn),
      .write_n_to_the_cfi_flash                  (write_n_to_the_cfi_flash)
    );

