  //Example instantiation for system 'DE2_SoPC'
  DE2_SoPC DE2_SoPC_inst
    (
      .LCD_E_from_the_lcd             (LCD_E_from_the_lcd),
      .LCD_RS_from_the_lcd            (LCD_RS_from_the_lcd),
      .LCD_RW_from_the_lcd            (LCD_RW_from_the_lcd),
      .LCD_data_to_and_from_the_lcd   (LCD_data_to_and_from_the_lcd),
      .SRAM_ADDR_from_the_sram        (SRAM_ADDR_from_the_sram),
      .SRAM_CE_N_from_the_sram        (SRAM_CE_N_from_the_sram),
      .SRAM_DQ_to_and_from_the_sram   (SRAM_DQ_to_and_from_the_sram),
      .SRAM_LB_N_from_the_sram        (SRAM_LB_N_from_the_sram),
      .SRAM_OE_N_from_the_sram        (SRAM_OE_N_from_the_sram),
      .SRAM_UB_N_from_the_sram        (SRAM_UB_N_from_the_sram),
      .SRAM_WE_N_from_the_sram        (SRAM_WE_N_from_the_sram),
      .VGA_BLANK_from_the_vga         (VGA_BLANK_from_the_vga),
      .VGA_B_from_the_vga             (VGA_B_from_the_vga),
      .VGA_CLK_from_the_vga           (VGA_CLK_from_the_vga),
      .VGA_G_from_the_vga             (VGA_G_from_the_vga),
      .VGA_HS_from_the_vga            (VGA_HS_from_the_vga),
      .VGA_R_from_the_vga             (VGA_R_from_the_vga),
      .VGA_SYNC_from_the_vga          (VGA_SYNC_from_the_vga),
      .VGA_VS_from_the_vga            (VGA_VS_from_the_vga),
      .clk_50                         (clk_50),
      .iCLK_25_to_the_vga             (iCLK_25_to_the_vga),
      .reset_n                        (reset_n),
      .rxd_to_the_uart                (rxd_to_the_uart),
      .select_n_to_the_cfi_flash_0    (select_n_to_the_cfi_flash_0),
      .tri_state_bridge_flash_address (tri_state_bridge_flash_address),
      .tri_state_bridge_flash_data    (tri_state_bridge_flash_data),
      .tri_state_bridge_flash_readn   (tri_state_bridge_flash_readn),
      .txd_from_the_uart              (txd_from_the_uart),
      .write_n_to_the_cfi_flash_0     (write_n_to_the_cfi_flash_0)
    );

