  //Example instantiation for system 'kernel'
  kernel kernel_inst
    (
      .SRAM_ADDR_from_the_sram_16bit_512k_0      (SRAM_ADDR),
      .SRAM_CE_N_from_the_sram_16bit_512k_0      (SRAM_CE_N),
      .SRAM_DQ_to_and_from_the_sram_16bit_512k_0 (SRAM_DQ),
      .SRAM_LB_N_from_the_sram_16bit_512k_0      (SRAM_LB_N),
      .SRAM_OE_N_from_the_sram_16bit_512k_0      (SRAM_OE_N),
      .SRAM_UB_N_from_the_sram_16bit_512k_0      (SRAM_UB_N),
      .SRAM_WE_N_from_the_sram_16bit_512k_0      (SRAM_WE_N),
      .clk_50                                    (CLOCK_50),
      .in_port_to_the_gpio                       (GPIO[0]),
      .in_port_to_the_key                        (~KEY[1]),
      .in_port_to_the_pio_sw                     (SW[17:0]),
      .out_port_from_the_pio_green               (LEDG),
      .out_port_from_the_pio_red                 (LEDR),
      .reset_n                                   (reset_n),
      .select_n_to_the_cfi_flash                 (select_n_to_the_cfi_flash),
      .tri_state_bridge_address                  (tri_state_bridge_address),
      .tri_state_bridge_data                     (tri_state_bridge_data),
      .tri_state_bridge_readn                    (tri_state_bridge_readn),
      .write_n_to_the_cfi_flash                  (write_n_to_the_cfi_flash)
    );

