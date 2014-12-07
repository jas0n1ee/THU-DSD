//megafunction wizard: %Altera SOPC Builder%
//GENERATION: STANDARD
//VERSION: WM1.0


//Legal Notice: (C)2014 Altera Corporation. All rights reserved.  Your
//use of Altera Corporation's design tools, logic functions and other
//software and tools, and its AMPP partner logic functions, and any
//output files any of the foregoing (including device programming or
//simulation files), and any associated documentation or information are
//expressly subject to the terms and conditions of the Altera Program
//License Subscription Agreement or other applicable license agreement,
//including, without limitation, that your use is for the sole purpose
//of programming logic devices manufactured by Altera and sold by Altera
//or its authorized distributors.  Please refer to the applicable
//agreement for further details.

// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_0_jtag_debug_module_arbitrator (
                                            // inputs:
                                             clk,
                                             cpu_0_data_master_address_to_slave,
                                             cpu_0_data_master_byteenable,
                                             cpu_0_data_master_debugaccess,
                                             cpu_0_data_master_read,
                                             cpu_0_data_master_waitrequest,
                                             cpu_0_data_master_write,
                                             cpu_0_data_master_writedata,
                                             cpu_0_instruction_master_address_to_slave,
                                             cpu_0_instruction_master_latency_counter,
                                             cpu_0_instruction_master_read,
                                             cpu_0_jtag_debug_module_readdata,
                                             cpu_0_jtag_debug_module_resetrequest,
                                             reset_n,

                                            // outputs:
                                             cpu_0_data_master_granted_cpu_0_jtag_debug_module,
                                             cpu_0_data_master_qualified_request_cpu_0_jtag_debug_module,
                                             cpu_0_data_master_read_data_valid_cpu_0_jtag_debug_module,
                                             cpu_0_data_master_requests_cpu_0_jtag_debug_module,
                                             cpu_0_instruction_master_granted_cpu_0_jtag_debug_module,
                                             cpu_0_instruction_master_qualified_request_cpu_0_jtag_debug_module,
                                             cpu_0_instruction_master_read_data_valid_cpu_0_jtag_debug_module,
                                             cpu_0_instruction_master_requests_cpu_0_jtag_debug_module,
                                             cpu_0_jtag_debug_module_address,
                                             cpu_0_jtag_debug_module_begintransfer,
                                             cpu_0_jtag_debug_module_byteenable,
                                             cpu_0_jtag_debug_module_chipselect,
                                             cpu_0_jtag_debug_module_debugaccess,
                                             cpu_0_jtag_debug_module_readdata_from_sa,
                                             cpu_0_jtag_debug_module_reset_n,
                                             cpu_0_jtag_debug_module_resetrequest_from_sa,
                                             cpu_0_jtag_debug_module_write,
                                             cpu_0_jtag_debug_module_writedata,
                                             d1_cpu_0_jtag_debug_module_end_xfer
                                          )
;

  output           cpu_0_data_master_granted_cpu_0_jtag_debug_module;
  output           cpu_0_data_master_qualified_request_cpu_0_jtag_debug_module;
  output           cpu_0_data_master_read_data_valid_cpu_0_jtag_debug_module;
  output           cpu_0_data_master_requests_cpu_0_jtag_debug_module;
  output           cpu_0_instruction_master_granted_cpu_0_jtag_debug_module;
  output           cpu_0_instruction_master_qualified_request_cpu_0_jtag_debug_module;
  output           cpu_0_instruction_master_read_data_valid_cpu_0_jtag_debug_module;
  output           cpu_0_instruction_master_requests_cpu_0_jtag_debug_module;
  output  [  8: 0] cpu_0_jtag_debug_module_address;
  output           cpu_0_jtag_debug_module_begintransfer;
  output  [  3: 0] cpu_0_jtag_debug_module_byteenable;
  output           cpu_0_jtag_debug_module_chipselect;
  output           cpu_0_jtag_debug_module_debugaccess;
  output  [ 31: 0] cpu_0_jtag_debug_module_readdata_from_sa;
  output           cpu_0_jtag_debug_module_reset_n;
  output           cpu_0_jtag_debug_module_resetrequest_from_sa;
  output           cpu_0_jtag_debug_module_write;
  output  [ 31: 0] cpu_0_jtag_debug_module_writedata;
  output           d1_cpu_0_jtag_debug_module_end_xfer;
  input            clk;
  input   [ 23: 0] cpu_0_data_master_address_to_slave;
  input   [  3: 0] cpu_0_data_master_byteenable;
  input            cpu_0_data_master_debugaccess;
  input            cpu_0_data_master_read;
  input            cpu_0_data_master_waitrequest;
  input            cpu_0_data_master_write;
  input   [ 31: 0] cpu_0_data_master_writedata;
  input   [ 23: 0] cpu_0_instruction_master_address_to_slave;
  input   [  1: 0] cpu_0_instruction_master_latency_counter;
  input            cpu_0_instruction_master_read;
  input   [ 31: 0] cpu_0_jtag_debug_module_readdata;
  input            cpu_0_jtag_debug_module_resetrequest;
  input            reset_n;

  wire             cpu_0_data_master_arbiterlock;
  wire             cpu_0_data_master_arbiterlock2;
  wire             cpu_0_data_master_continuerequest;
  wire             cpu_0_data_master_granted_cpu_0_jtag_debug_module;
  wire             cpu_0_data_master_qualified_request_cpu_0_jtag_debug_module;
  wire             cpu_0_data_master_read_data_valid_cpu_0_jtag_debug_module;
  wire             cpu_0_data_master_requests_cpu_0_jtag_debug_module;
  wire             cpu_0_data_master_saved_grant_cpu_0_jtag_debug_module;
  wire             cpu_0_instruction_master_arbiterlock;
  wire             cpu_0_instruction_master_arbiterlock2;
  wire             cpu_0_instruction_master_continuerequest;
  wire             cpu_0_instruction_master_granted_cpu_0_jtag_debug_module;
  wire             cpu_0_instruction_master_qualified_request_cpu_0_jtag_debug_module;
  wire             cpu_0_instruction_master_read_data_valid_cpu_0_jtag_debug_module;
  wire             cpu_0_instruction_master_requests_cpu_0_jtag_debug_module;
  wire             cpu_0_instruction_master_saved_grant_cpu_0_jtag_debug_module;
  wire    [  8: 0] cpu_0_jtag_debug_module_address;
  wire             cpu_0_jtag_debug_module_allgrants;
  wire             cpu_0_jtag_debug_module_allow_new_arb_cycle;
  wire             cpu_0_jtag_debug_module_any_bursting_master_saved_grant;
  wire             cpu_0_jtag_debug_module_any_continuerequest;
  reg     [  1: 0] cpu_0_jtag_debug_module_arb_addend;
  wire             cpu_0_jtag_debug_module_arb_counter_enable;
  reg     [  2: 0] cpu_0_jtag_debug_module_arb_share_counter;
  wire    [  2: 0] cpu_0_jtag_debug_module_arb_share_counter_next_value;
  wire    [  2: 0] cpu_0_jtag_debug_module_arb_share_set_values;
  wire    [  1: 0] cpu_0_jtag_debug_module_arb_winner;
  wire             cpu_0_jtag_debug_module_arbitration_holdoff_internal;
  wire             cpu_0_jtag_debug_module_beginbursttransfer_internal;
  wire             cpu_0_jtag_debug_module_begins_xfer;
  wire             cpu_0_jtag_debug_module_begintransfer;
  wire    [  3: 0] cpu_0_jtag_debug_module_byteenable;
  wire             cpu_0_jtag_debug_module_chipselect;
  wire    [  3: 0] cpu_0_jtag_debug_module_chosen_master_double_vector;
  wire    [  1: 0] cpu_0_jtag_debug_module_chosen_master_rot_left;
  wire             cpu_0_jtag_debug_module_debugaccess;
  wire             cpu_0_jtag_debug_module_end_xfer;
  wire             cpu_0_jtag_debug_module_firsttransfer;
  wire    [  1: 0] cpu_0_jtag_debug_module_grant_vector;
  wire             cpu_0_jtag_debug_module_in_a_read_cycle;
  wire             cpu_0_jtag_debug_module_in_a_write_cycle;
  wire    [  1: 0] cpu_0_jtag_debug_module_master_qreq_vector;
  wire             cpu_0_jtag_debug_module_non_bursting_master_requests;
  wire    [ 31: 0] cpu_0_jtag_debug_module_readdata_from_sa;
  reg              cpu_0_jtag_debug_module_reg_firsttransfer;
  wire             cpu_0_jtag_debug_module_reset_n;
  wire             cpu_0_jtag_debug_module_resetrequest_from_sa;
  reg     [  1: 0] cpu_0_jtag_debug_module_saved_chosen_master_vector;
  reg              cpu_0_jtag_debug_module_slavearbiterlockenable;
  wire             cpu_0_jtag_debug_module_slavearbiterlockenable2;
  wire             cpu_0_jtag_debug_module_unreg_firsttransfer;
  wire             cpu_0_jtag_debug_module_waits_for_read;
  wire             cpu_0_jtag_debug_module_waits_for_write;
  wire             cpu_0_jtag_debug_module_write;
  wire    [ 31: 0] cpu_0_jtag_debug_module_writedata;
  reg              d1_cpu_0_jtag_debug_module_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_cpu_0_jtag_debug_module;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  reg              last_cycle_cpu_0_data_master_granted_slave_cpu_0_jtag_debug_module;
  reg              last_cycle_cpu_0_instruction_master_granted_slave_cpu_0_jtag_debug_module;
  wire    [ 23: 0] shifted_address_to_cpu_0_jtag_debug_module_from_cpu_0_data_master;
  wire    [ 23: 0] shifted_address_to_cpu_0_jtag_debug_module_from_cpu_0_instruction_master;
  wire             wait_for_cpu_0_jtag_debug_module_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~cpu_0_jtag_debug_module_end_xfer;
    end


  assign cpu_0_jtag_debug_module_begins_xfer = ~d1_reasons_to_wait & ((cpu_0_data_master_qualified_request_cpu_0_jtag_debug_module | cpu_0_instruction_master_qualified_request_cpu_0_jtag_debug_module));
  //assign cpu_0_jtag_debug_module_readdata_from_sa = cpu_0_jtag_debug_module_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign cpu_0_jtag_debug_module_readdata_from_sa = cpu_0_jtag_debug_module_readdata;

  assign cpu_0_data_master_requests_cpu_0_jtag_debug_module = ({cpu_0_data_master_address_to_slave[23 : 11] , 11'b0} == 24'hb03000) & (cpu_0_data_master_read | cpu_0_data_master_write);
  //cpu_0_jtag_debug_module_arb_share_counter set values, which is an e_mux
  assign cpu_0_jtag_debug_module_arb_share_set_values = 1;

  //cpu_0_jtag_debug_module_non_bursting_master_requests mux, which is an e_mux
  assign cpu_0_jtag_debug_module_non_bursting_master_requests = cpu_0_data_master_requests_cpu_0_jtag_debug_module |
    cpu_0_instruction_master_requests_cpu_0_jtag_debug_module |
    cpu_0_data_master_requests_cpu_0_jtag_debug_module |
    cpu_0_instruction_master_requests_cpu_0_jtag_debug_module;

  //cpu_0_jtag_debug_module_any_bursting_master_saved_grant mux, which is an e_mux
  assign cpu_0_jtag_debug_module_any_bursting_master_saved_grant = 0;

  //cpu_0_jtag_debug_module_arb_share_counter_next_value assignment, which is an e_assign
  assign cpu_0_jtag_debug_module_arb_share_counter_next_value = cpu_0_jtag_debug_module_firsttransfer ? (cpu_0_jtag_debug_module_arb_share_set_values - 1) : |cpu_0_jtag_debug_module_arb_share_counter ? (cpu_0_jtag_debug_module_arb_share_counter - 1) : 0;

  //cpu_0_jtag_debug_module_allgrants all slave grants, which is an e_mux
  assign cpu_0_jtag_debug_module_allgrants = (|cpu_0_jtag_debug_module_grant_vector) |
    (|cpu_0_jtag_debug_module_grant_vector) |
    (|cpu_0_jtag_debug_module_grant_vector) |
    (|cpu_0_jtag_debug_module_grant_vector);

  //cpu_0_jtag_debug_module_end_xfer assignment, which is an e_assign
  assign cpu_0_jtag_debug_module_end_xfer = ~(cpu_0_jtag_debug_module_waits_for_read | cpu_0_jtag_debug_module_waits_for_write);

  //end_xfer_arb_share_counter_term_cpu_0_jtag_debug_module arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_cpu_0_jtag_debug_module = cpu_0_jtag_debug_module_end_xfer & (~cpu_0_jtag_debug_module_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //cpu_0_jtag_debug_module_arb_share_counter arbitration counter enable, which is an e_assign
  assign cpu_0_jtag_debug_module_arb_counter_enable = (end_xfer_arb_share_counter_term_cpu_0_jtag_debug_module & cpu_0_jtag_debug_module_allgrants) | (end_xfer_arb_share_counter_term_cpu_0_jtag_debug_module & ~cpu_0_jtag_debug_module_non_bursting_master_requests);

  //cpu_0_jtag_debug_module_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_0_jtag_debug_module_arb_share_counter <= 0;
      else if (cpu_0_jtag_debug_module_arb_counter_enable)
          cpu_0_jtag_debug_module_arb_share_counter <= cpu_0_jtag_debug_module_arb_share_counter_next_value;
    end


  //cpu_0_jtag_debug_module_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_0_jtag_debug_module_slavearbiterlockenable <= 0;
      else if ((|cpu_0_jtag_debug_module_master_qreq_vector & end_xfer_arb_share_counter_term_cpu_0_jtag_debug_module) | (end_xfer_arb_share_counter_term_cpu_0_jtag_debug_module & ~cpu_0_jtag_debug_module_non_bursting_master_requests))
          cpu_0_jtag_debug_module_slavearbiterlockenable <= |cpu_0_jtag_debug_module_arb_share_counter_next_value;
    end


  //cpu_0/data_master cpu_0/jtag_debug_module arbiterlock, which is an e_assign
  assign cpu_0_data_master_arbiterlock = cpu_0_jtag_debug_module_slavearbiterlockenable & cpu_0_data_master_continuerequest;

  //cpu_0_jtag_debug_module_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign cpu_0_jtag_debug_module_slavearbiterlockenable2 = |cpu_0_jtag_debug_module_arb_share_counter_next_value;

  //cpu_0/data_master cpu_0/jtag_debug_module arbiterlock2, which is an e_assign
  assign cpu_0_data_master_arbiterlock2 = cpu_0_jtag_debug_module_slavearbiterlockenable2 & cpu_0_data_master_continuerequest;

  //cpu_0/instruction_master cpu_0/jtag_debug_module arbiterlock, which is an e_assign
  assign cpu_0_instruction_master_arbiterlock = cpu_0_jtag_debug_module_slavearbiterlockenable & cpu_0_instruction_master_continuerequest;

  //cpu_0/instruction_master cpu_0/jtag_debug_module arbiterlock2, which is an e_assign
  assign cpu_0_instruction_master_arbiterlock2 = cpu_0_jtag_debug_module_slavearbiterlockenable2 & cpu_0_instruction_master_continuerequest;

  //cpu_0/instruction_master granted cpu_0/jtag_debug_module last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          last_cycle_cpu_0_instruction_master_granted_slave_cpu_0_jtag_debug_module <= 0;
      else 
        last_cycle_cpu_0_instruction_master_granted_slave_cpu_0_jtag_debug_module <= cpu_0_instruction_master_saved_grant_cpu_0_jtag_debug_module ? 1 : (cpu_0_jtag_debug_module_arbitration_holdoff_internal | ~cpu_0_instruction_master_requests_cpu_0_jtag_debug_module) ? 0 : last_cycle_cpu_0_instruction_master_granted_slave_cpu_0_jtag_debug_module;
    end


  //cpu_0_instruction_master_continuerequest continued request, which is an e_mux
  assign cpu_0_instruction_master_continuerequest = last_cycle_cpu_0_instruction_master_granted_slave_cpu_0_jtag_debug_module & cpu_0_instruction_master_requests_cpu_0_jtag_debug_module;

  //cpu_0_jtag_debug_module_any_continuerequest at least one master continues requesting, which is an e_mux
  assign cpu_0_jtag_debug_module_any_continuerequest = cpu_0_instruction_master_continuerequest |
    cpu_0_data_master_continuerequest;

  assign cpu_0_data_master_qualified_request_cpu_0_jtag_debug_module = cpu_0_data_master_requests_cpu_0_jtag_debug_module & ~(((~cpu_0_data_master_waitrequest) & cpu_0_data_master_write) | cpu_0_instruction_master_arbiterlock);
  //cpu_0_jtag_debug_module_writedata mux, which is an e_mux
  assign cpu_0_jtag_debug_module_writedata = cpu_0_data_master_writedata;

  assign cpu_0_instruction_master_requests_cpu_0_jtag_debug_module = (({cpu_0_instruction_master_address_to_slave[23 : 11] , 11'b0} == 24'hb03000) & (cpu_0_instruction_master_read)) & cpu_0_instruction_master_read;
  //cpu_0/data_master granted cpu_0/jtag_debug_module last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          last_cycle_cpu_0_data_master_granted_slave_cpu_0_jtag_debug_module <= 0;
      else 
        last_cycle_cpu_0_data_master_granted_slave_cpu_0_jtag_debug_module <= cpu_0_data_master_saved_grant_cpu_0_jtag_debug_module ? 1 : (cpu_0_jtag_debug_module_arbitration_holdoff_internal | ~cpu_0_data_master_requests_cpu_0_jtag_debug_module) ? 0 : last_cycle_cpu_0_data_master_granted_slave_cpu_0_jtag_debug_module;
    end


  //cpu_0_data_master_continuerequest continued request, which is an e_mux
  assign cpu_0_data_master_continuerequest = last_cycle_cpu_0_data_master_granted_slave_cpu_0_jtag_debug_module & cpu_0_data_master_requests_cpu_0_jtag_debug_module;

  assign cpu_0_instruction_master_qualified_request_cpu_0_jtag_debug_module = cpu_0_instruction_master_requests_cpu_0_jtag_debug_module & ~((cpu_0_instruction_master_read & ((cpu_0_instruction_master_latency_counter != 0))) | cpu_0_data_master_arbiterlock);
  //local readdatavalid cpu_0_instruction_master_read_data_valid_cpu_0_jtag_debug_module, which is an e_mux
  assign cpu_0_instruction_master_read_data_valid_cpu_0_jtag_debug_module = cpu_0_instruction_master_granted_cpu_0_jtag_debug_module & cpu_0_instruction_master_read & ~cpu_0_jtag_debug_module_waits_for_read;

  //allow new arb cycle for cpu_0/jtag_debug_module, which is an e_assign
  assign cpu_0_jtag_debug_module_allow_new_arb_cycle = ~cpu_0_data_master_arbiterlock & ~cpu_0_instruction_master_arbiterlock;

  //cpu_0/instruction_master assignment into master qualified-requests vector for cpu_0/jtag_debug_module, which is an e_assign
  assign cpu_0_jtag_debug_module_master_qreq_vector[0] = cpu_0_instruction_master_qualified_request_cpu_0_jtag_debug_module;

  //cpu_0/instruction_master grant cpu_0/jtag_debug_module, which is an e_assign
  assign cpu_0_instruction_master_granted_cpu_0_jtag_debug_module = cpu_0_jtag_debug_module_grant_vector[0];

  //cpu_0/instruction_master saved-grant cpu_0/jtag_debug_module, which is an e_assign
  assign cpu_0_instruction_master_saved_grant_cpu_0_jtag_debug_module = cpu_0_jtag_debug_module_arb_winner[0] && cpu_0_instruction_master_requests_cpu_0_jtag_debug_module;

  //cpu_0/data_master assignment into master qualified-requests vector for cpu_0/jtag_debug_module, which is an e_assign
  assign cpu_0_jtag_debug_module_master_qreq_vector[1] = cpu_0_data_master_qualified_request_cpu_0_jtag_debug_module;

  //cpu_0/data_master grant cpu_0/jtag_debug_module, which is an e_assign
  assign cpu_0_data_master_granted_cpu_0_jtag_debug_module = cpu_0_jtag_debug_module_grant_vector[1];

  //cpu_0/data_master saved-grant cpu_0/jtag_debug_module, which is an e_assign
  assign cpu_0_data_master_saved_grant_cpu_0_jtag_debug_module = cpu_0_jtag_debug_module_arb_winner[1] && cpu_0_data_master_requests_cpu_0_jtag_debug_module;

  //cpu_0/jtag_debug_module chosen-master double-vector, which is an e_assign
  assign cpu_0_jtag_debug_module_chosen_master_double_vector = {cpu_0_jtag_debug_module_master_qreq_vector, cpu_0_jtag_debug_module_master_qreq_vector} & ({~cpu_0_jtag_debug_module_master_qreq_vector, ~cpu_0_jtag_debug_module_master_qreq_vector} + cpu_0_jtag_debug_module_arb_addend);

  //stable onehot encoding of arb winner
  assign cpu_0_jtag_debug_module_arb_winner = (cpu_0_jtag_debug_module_allow_new_arb_cycle & | cpu_0_jtag_debug_module_grant_vector) ? cpu_0_jtag_debug_module_grant_vector : cpu_0_jtag_debug_module_saved_chosen_master_vector;

  //saved cpu_0_jtag_debug_module_grant_vector, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_0_jtag_debug_module_saved_chosen_master_vector <= 0;
      else if (cpu_0_jtag_debug_module_allow_new_arb_cycle)
          cpu_0_jtag_debug_module_saved_chosen_master_vector <= |cpu_0_jtag_debug_module_grant_vector ? cpu_0_jtag_debug_module_grant_vector : cpu_0_jtag_debug_module_saved_chosen_master_vector;
    end


  //onehot encoding of chosen master
  assign cpu_0_jtag_debug_module_grant_vector = {(cpu_0_jtag_debug_module_chosen_master_double_vector[1] | cpu_0_jtag_debug_module_chosen_master_double_vector[3]),
    (cpu_0_jtag_debug_module_chosen_master_double_vector[0] | cpu_0_jtag_debug_module_chosen_master_double_vector[2])};

  //cpu_0/jtag_debug_module chosen master rotated left, which is an e_assign
  assign cpu_0_jtag_debug_module_chosen_master_rot_left = (cpu_0_jtag_debug_module_arb_winner << 1) ? (cpu_0_jtag_debug_module_arb_winner << 1) : 1;

  //cpu_0/jtag_debug_module's addend for next-master-grant
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_0_jtag_debug_module_arb_addend <= 1;
      else if (|cpu_0_jtag_debug_module_grant_vector)
          cpu_0_jtag_debug_module_arb_addend <= cpu_0_jtag_debug_module_end_xfer? cpu_0_jtag_debug_module_chosen_master_rot_left : cpu_0_jtag_debug_module_grant_vector;
    end


  assign cpu_0_jtag_debug_module_begintransfer = cpu_0_jtag_debug_module_begins_xfer;
  //cpu_0_jtag_debug_module_reset_n assignment, which is an e_assign
  assign cpu_0_jtag_debug_module_reset_n = reset_n;

  //assign cpu_0_jtag_debug_module_resetrequest_from_sa = cpu_0_jtag_debug_module_resetrequest so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign cpu_0_jtag_debug_module_resetrequest_from_sa = cpu_0_jtag_debug_module_resetrequest;

  assign cpu_0_jtag_debug_module_chipselect = cpu_0_data_master_granted_cpu_0_jtag_debug_module | cpu_0_instruction_master_granted_cpu_0_jtag_debug_module;
  //cpu_0_jtag_debug_module_firsttransfer first transaction, which is an e_assign
  assign cpu_0_jtag_debug_module_firsttransfer = cpu_0_jtag_debug_module_begins_xfer ? cpu_0_jtag_debug_module_unreg_firsttransfer : cpu_0_jtag_debug_module_reg_firsttransfer;

  //cpu_0_jtag_debug_module_unreg_firsttransfer first transaction, which is an e_assign
  assign cpu_0_jtag_debug_module_unreg_firsttransfer = ~(cpu_0_jtag_debug_module_slavearbiterlockenable & cpu_0_jtag_debug_module_any_continuerequest);

  //cpu_0_jtag_debug_module_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_0_jtag_debug_module_reg_firsttransfer <= 1'b1;
      else if (cpu_0_jtag_debug_module_begins_xfer)
          cpu_0_jtag_debug_module_reg_firsttransfer <= cpu_0_jtag_debug_module_unreg_firsttransfer;
    end


  //cpu_0_jtag_debug_module_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign cpu_0_jtag_debug_module_beginbursttransfer_internal = cpu_0_jtag_debug_module_begins_xfer;

  //cpu_0_jtag_debug_module_arbitration_holdoff_internal arbitration_holdoff, which is an e_assign
  assign cpu_0_jtag_debug_module_arbitration_holdoff_internal = cpu_0_jtag_debug_module_begins_xfer & cpu_0_jtag_debug_module_firsttransfer;

  //cpu_0_jtag_debug_module_write assignment, which is an e_mux
  assign cpu_0_jtag_debug_module_write = cpu_0_data_master_granted_cpu_0_jtag_debug_module & cpu_0_data_master_write;

  assign shifted_address_to_cpu_0_jtag_debug_module_from_cpu_0_data_master = cpu_0_data_master_address_to_slave;
  //cpu_0_jtag_debug_module_address mux, which is an e_mux
  assign cpu_0_jtag_debug_module_address = (cpu_0_data_master_granted_cpu_0_jtag_debug_module)? (shifted_address_to_cpu_0_jtag_debug_module_from_cpu_0_data_master >> 2) :
    (shifted_address_to_cpu_0_jtag_debug_module_from_cpu_0_instruction_master >> 2);

  assign shifted_address_to_cpu_0_jtag_debug_module_from_cpu_0_instruction_master = cpu_0_instruction_master_address_to_slave;
  //d1_cpu_0_jtag_debug_module_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_cpu_0_jtag_debug_module_end_xfer <= 1;
      else 
        d1_cpu_0_jtag_debug_module_end_xfer <= cpu_0_jtag_debug_module_end_xfer;
    end


  //cpu_0_jtag_debug_module_waits_for_read in a cycle, which is an e_mux
  assign cpu_0_jtag_debug_module_waits_for_read = cpu_0_jtag_debug_module_in_a_read_cycle & cpu_0_jtag_debug_module_begins_xfer;

  //cpu_0_jtag_debug_module_in_a_read_cycle assignment, which is an e_assign
  assign cpu_0_jtag_debug_module_in_a_read_cycle = (cpu_0_data_master_granted_cpu_0_jtag_debug_module & cpu_0_data_master_read) | (cpu_0_instruction_master_granted_cpu_0_jtag_debug_module & cpu_0_instruction_master_read);

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = cpu_0_jtag_debug_module_in_a_read_cycle;

  //cpu_0_jtag_debug_module_waits_for_write in a cycle, which is an e_mux
  assign cpu_0_jtag_debug_module_waits_for_write = cpu_0_jtag_debug_module_in_a_write_cycle & 0;

  //cpu_0_jtag_debug_module_in_a_write_cycle assignment, which is an e_assign
  assign cpu_0_jtag_debug_module_in_a_write_cycle = cpu_0_data_master_granted_cpu_0_jtag_debug_module & cpu_0_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = cpu_0_jtag_debug_module_in_a_write_cycle;

  assign wait_for_cpu_0_jtag_debug_module_counter = 0;
  //cpu_0_jtag_debug_module_byteenable byte enable port mux, which is an e_mux
  assign cpu_0_jtag_debug_module_byteenable = (cpu_0_data_master_granted_cpu_0_jtag_debug_module)? cpu_0_data_master_byteenable :
    -1;

  //debugaccess mux, which is an e_mux
  assign cpu_0_jtag_debug_module_debugaccess = (cpu_0_data_master_granted_cpu_0_jtag_debug_module)? cpu_0_data_master_debugaccess :
    0;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //cpu_0/jtag_debug_module enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end


  //grant signals are active simultaneously, which is an e_process
  always @(posedge clk)
    begin
      if (cpu_0_data_master_granted_cpu_0_jtag_debug_module + cpu_0_instruction_master_granted_cpu_0_jtag_debug_module > 1)
        begin
          $write("%0d ns: > 1 of grant signals are active simultaneously", $time);
          $stop;
        end
    end


  //saved_grant signals are active simultaneously, which is an e_process
  always @(posedge clk)
    begin
      if (cpu_0_data_master_saved_grant_cpu_0_jtag_debug_module + cpu_0_instruction_master_saved_grant_cpu_0_jtag_debug_module > 1)
        begin
          $write("%0d ns: > 1 of saved_grant signals are active simultaneously", $time);
          $stop;
        end
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule


// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_0_data_master_arbitrator (
                                      // inputs:
                                       cfi_flash_0_s1_wait_counter_eq_0,
                                       cfi_flash_0_s1_wait_counter_eq_1,
                                       clk,
                                       cpu_0_data_master_address,
                                       cpu_0_data_master_byteenable_cfi_flash_0_s1,
                                       cpu_0_data_master_byteenable_sram_avalon_slave_0,
                                       cpu_0_data_master_granted_cfi_flash_0_s1,
                                       cpu_0_data_master_granted_cpu_0_jtag_debug_module,
                                       cpu_0_data_master_granted_epcs_epcs_control_port,
                                       cpu_0_data_master_granted_jtag_uart_avalon_jtag_slave,
                                       cpu_0_data_master_granted_lcd_control_slave,
                                       cpu_0_data_master_granted_onchip_memory2_s1,
                                       cpu_0_data_master_granted_sram_avalon_slave_0,
                                       cpu_0_data_master_granted_sysid_0_control_slave,
                                       cpu_0_data_master_granted_timer_s1,
                                       cpu_0_data_master_granted_uart_s1,
                                       cpu_0_data_master_granted_vga_0_avalon_slave_0,
                                       cpu_0_data_master_qualified_request_cfi_flash_0_s1,
                                       cpu_0_data_master_qualified_request_cpu_0_jtag_debug_module,
                                       cpu_0_data_master_qualified_request_epcs_epcs_control_port,
                                       cpu_0_data_master_qualified_request_jtag_uart_avalon_jtag_slave,
                                       cpu_0_data_master_qualified_request_lcd_control_slave,
                                       cpu_0_data_master_qualified_request_onchip_memory2_s1,
                                       cpu_0_data_master_qualified_request_sram_avalon_slave_0,
                                       cpu_0_data_master_qualified_request_sysid_0_control_slave,
                                       cpu_0_data_master_qualified_request_timer_s1,
                                       cpu_0_data_master_qualified_request_uart_s1,
                                       cpu_0_data_master_qualified_request_vga_0_avalon_slave_0,
                                       cpu_0_data_master_read,
                                       cpu_0_data_master_read_data_valid_cfi_flash_0_s1,
                                       cpu_0_data_master_read_data_valid_cpu_0_jtag_debug_module,
                                       cpu_0_data_master_read_data_valid_epcs_epcs_control_port,
                                       cpu_0_data_master_read_data_valid_jtag_uart_avalon_jtag_slave,
                                       cpu_0_data_master_read_data_valid_lcd_control_slave,
                                       cpu_0_data_master_read_data_valid_onchip_memory2_s1,
                                       cpu_0_data_master_read_data_valid_sram_avalon_slave_0,
                                       cpu_0_data_master_read_data_valid_sysid_0_control_slave,
                                       cpu_0_data_master_read_data_valid_timer_s1,
                                       cpu_0_data_master_read_data_valid_uart_s1,
                                       cpu_0_data_master_read_data_valid_vga_0_avalon_slave_0,
                                       cpu_0_data_master_requests_cfi_flash_0_s1,
                                       cpu_0_data_master_requests_cpu_0_jtag_debug_module,
                                       cpu_0_data_master_requests_epcs_epcs_control_port,
                                       cpu_0_data_master_requests_jtag_uart_avalon_jtag_slave,
                                       cpu_0_data_master_requests_lcd_control_slave,
                                       cpu_0_data_master_requests_onchip_memory2_s1,
                                       cpu_0_data_master_requests_sram_avalon_slave_0,
                                       cpu_0_data_master_requests_sysid_0_control_slave,
                                       cpu_0_data_master_requests_timer_s1,
                                       cpu_0_data_master_requests_uart_s1,
                                       cpu_0_data_master_requests_vga_0_avalon_slave_0,
                                       cpu_0_data_master_write,
                                       cpu_0_data_master_writedata,
                                       cpu_0_jtag_debug_module_readdata_from_sa,
                                       d1_cpu_0_jtag_debug_module_end_xfer,
                                       d1_epcs_epcs_control_port_end_xfer,
                                       d1_jtag_uart_avalon_jtag_slave_end_xfer,
                                       d1_lcd_control_slave_end_xfer,
                                       d1_onchip_memory2_s1_end_xfer,
                                       d1_sram_avalon_slave_0_end_xfer,
                                       d1_sysid_0_control_slave_end_xfer,
                                       d1_timer_s1_end_xfer,
                                       d1_tri_state_bridge_flash_avalon_slave_end_xfer,
                                       d1_uart_s1_end_xfer,
                                       d1_vga_0_avalon_slave_0_end_xfer,
                                       epcs_epcs_control_port_irq_from_sa,
                                       epcs_epcs_control_port_readdata_from_sa,
                                       incoming_tri_state_bridge_flash_data_with_Xs_converted_to_0,
                                       jtag_uart_avalon_jtag_slave_irq_from_sa,
                                       jtag_uart_avalon_jtag_slave_readdata_from_sa,
                                       jtag_uart_avalon_jtag_slave_waitrequest_from_sa,
                                       lcd_control_slave_readdata_from_sa,
                                       lcd_control_slave_wait_counter_eq_0,
                                       lcd_control_slave_wait_counter_eq_1,
                                       onchip_memory2_s1_readdata_from_sa,
                                       registered_cpu_0_data_master_read_data_valid_cfi_flash_0_s1,
                                       registered_cpu_0_data_master_read_data_valid_onchip_memory2_s1,
                                       reset_n,
                                       sram_avalon_slave_0_readdata_from_sa,
                                       sram_avalon_slave_0_wait_counter_eq_0,
                                       sysid_0_control_slave_readdata_from_sa,
                                       timer_s1_irq_from_sa,
                                       timer_s1_readdata_from_sa,
                                       uart_s1_irq_from_sa,
                                       uart_s1_readdata_from_sa,
                                       vga_0_avalon_slave_0_readdata_from_sa,
                                       vga_0_avalon_slave_0_wait_counter_eq_0,

                                      // outputs:
                                       cpu_0_data_master_address_to_slave,
                                       cpu_0_data_master_dbs_address,
                                       cpu_0_data_master_dbs_write_16,
                                       cpu_0_data_master_dbs_write_8,
                                       cpu_0_data_master_irq,
                                       cpu_0_data_master_no_byte_enables_and_last_term,
                                       cpu_0_data_master_readdata,
                                       cpu_0_data_master_waitrequest
                                    )
;

  output  [ 23: 0] cpu_0_data_master_address_to_slave;
  output  [  1: 0] cpu_0_data_master_dbs_address;
  output  [ 15: 0] cpu_0_data_master_dbs_write_16;
  output  [  7: 0] cpu_0_data_master_dbs_write_8;
  output  [ 31: 0] cpu_0_data_master_irq;
  output           cpu_0_data_master_no_byte_enables_and_last_term;
  output  [ 31: 0] cpu_0_data_master_readdata;
  output           cpu_0_data_master_waitrequest;
  input            cfi_flash_0_s1_wait_counter_eq_0;
  input            cfi_flash_0_s1_wait_counter_eq_1;
  input            clk;
  input   [ 23: 0] cpu_0_data_master_address;
  input            cpu_0_data_master_byteenable_cfi_flash_0_s1;
  input   [  1: 0] cpu_0_data_master_byteenable_sram_avalon_slave_0;
  input            cpu_0_data_master_granted_cfi_flash_0_s1;
  input            cpu_0_data_master_granted_cpu_0_jtag_debug_module;
  input            cpu_0_data_master_granted_epcs_epcs_control_port;
  input            cpu_0_data_master_granted_jtag_uart_avalon_jtag_slave;
  input            cpu_0_data_master_granted_lcd_control_slave;
  input            cpu_0_data_master_granted_onchip_memory2_s1;
  input            cpu_0_data_master_granted_sram_avalon_slave_0;
  input            cpu_0_data_master_granted_sysid_0_control_slave;
  input            cpu_0_data_master_granted_timer_s1;
  input            cpu_0_data_master_granted_uart_s1;
  input            cpu_0_data_master_granted_vga_0_avalon_slave_0;
  input            cpu_0_data_master_qualified_request_cfi_flash_0_s1;
  input            cpu_0_data_master_qualified_request_cpu_0_jtag_debug_module;
  input            cpu_0_data_master_qualified_request_epcs_epcs_control_port;
  input            cpu_0_data_master_qualified_request_jtag_uart_avalon_jtag_slave;
  input            cpu_0_data_master_qualified_request_lcd_control_slave;
  input            cpu_0_data_master_qualified_request_onchip_memory2_s1;
  input            cpu_0_data_master_qualified_request_sram_avalon_slave_0;
  input            cpu_0_data_master_qualified_request_sysid_0_control_slave;
  input            cpu_0_data_master_qualified_request_timer_s1;
  input            cpu_0_data_master_qualified_request_uart_s1;
  input            cpu_0_data_master_qualified_request_vga_0_avalon_slave_0;
  input            cpu_0_data_master_read;
  input            cpu_0_data_master_read_data_valid_cfi_flash_0_s1;
  input            cpu_0_data_master_read_data_valid_cpu_0_jtag_debug_module;
  input            cpu_0_data_master_read_data_valid_epcs_epcs_control_port;
  input            cpu_0_data_master_read_data_valid_jtag_uart_avalon_jtag_slave;
  input            cpu_0_data_master_read_data_valid_lcd_control_slave;
  input            cpu_0_data_master_read_data_valid_onchip_memory2_s1;
  input            cpu_0_data_master_read_data_valid_sram_avalon_slave_0;
  input            cpu_0_data_master_read_data_valid_sysid_0_control_slave;
  input            cpu_0_data_master_read_data_valid_timer_s1;
  input            cpu_0_data_master_read_data_valid_uart_s1;
  input            cpu_0_data_master_read_data_valid_vga_0_avalon_slave_0;
  input            cpu_0_data_master_requests_cfi_flash_0_s1;
  input            cpu_0_data_master_requests_cpu_0_jtag_debug_module;
  input            cpu_0_data_master_requests_epcs_epcs_control_port;
  input            cpu_0_data_master_requests_jtag_uart_avalon_jtag_slave;
  input            cpu_0_data_master_requests_lcd_control_slave;
  input            cpu_0_data_master_requests_onchip_memory2_s1;
  input            cpu_0_data_master_requests_sram_avalon_slave_0;
  input            cpu_0_data_master_requests_sysid_0_control_slave;
  input            cpu_0_data_master_requests_timer_s1;
  input            cpu_0_data_master_requests_uart_s1;
  input            cpu_0_data_master_requests_vga_0_avalon_slave_0;
  input            cpu_0_data_master_write;
  input   [ 31: 0] cpu_0_data_master_writedata;
  input   [ 31: 0] cpu_0_jtag_debug_module_readdata_from_sa;
  input            d1_cpu_0_jtag_debug_module_end_xfer;
  input            d1_epcs_epcs_control_port_end_xfer;
  input            d1_jtag_uart_avalon_jtag_slave_end_xfer;
  input            d1_lcd_control_slave_end_xfer;
  input            d1_onchip_memory2_s1_end_xfer;
  input            d1_sram_avalon_slave_0_end_xfer;
  input            d1_sysid_0_control_slave_end_xfer;
  input            d1_timer_s1_end_xfer;
  input            d1_tri_state_bridge_flash_avalon_slave_end_xfer;
  input            d1_uart_s1_end_xfer;
  input            d1_vga_0_avalon_slave_0_end_xfer;
  input            epcs_epcs_control_port_irq_from_sa;
  input   [ 31: 0] epcs_epcs_control_port_readdata_from_sa;
  input   [  7: 0] incoming_tri_state_bridge_flash_data_with_Xs_converted_to_0;
  input            jtag_uart_avalon_jtag_slave_irq_from_sa;
  input   [ 31: 0] jtag_uart_avalon_jtag_slave_readdata_from_sa;
  input            jtag_uart_avalon_jtag_slave_waitrequest_from_sa;
  input   [  7: 0] lcd_control_slave_readdata_from_sa;
  input            lcd_control_slave_wait_counter_eq_0;
  input            lcd_control_slave_wait_counter_eq_1;
  input   [ 31: 0] onchip_memory2_s1_readdata_from_sa;
  input            registered_cpu_0_data_master_read_data_valid_cfi_flash_0_s1;
  input            registered_cpu_0_data_master_read_data_valid_onchip_memory2_s1;
  input            reset_n;
  input   [ 15: 0] sram_avalon_slave_0_readdata_from_sa;
  input            sram_avalon_slave_0_wait_counter_eq_0;
  input   [ 31: 0] sysid_0_control_slave_readdata_from_sa;
  input            timer_s1_irq_from_sa;
  input   [ 15: 0] timer_s1_readdata_from_sa;
  input            uart_s1_irq_from_sa;
  input   [ 15: 0] uart_s1_readdata_from_sa;
  input   [ 15: 0] vga_0_avalon_slave_0_readdata_from_sa;
  input            vga_0_avalon_slave_0_wait_counter_eq_0;

  wire    [ 23: 0] cpu_0_data_master_address_to_slave;
  reg     [  1: 0] cpu_0_data_master_dbs_address;
  wire    [  1: 0] cpu_0_data_master_dbs_increment;
  wire    [ 15: 0] cpu_0_data_master_dbs_write_16;
  wire    [  7: 0] cpu_0_data_master_dbs_write_8;
  wire    [ 31: 0] cpu_0_data_master_irq;
  reg              cpu_0_data_master_no_byte_enables_and_last_term;
  wire    [ 31: 0] cpu_0_data_master_readdata;
  wire             cpu_0_data_master_run;
  reg              cpu_0_data_master_waitrequest;
  reg     [ 15: 0] dbs_16_reg_segment_0;
  reg     [  7: 0] dbs_8_reg_segment_0;
  reg     [  7: 0] dbs_8_reg_segment_1;
  reg     [  7: 0] dbs_8_reg_segment_2;
  wire             dbs_count_enable;
  wire             dbs_counter_overflow;
  wire             last_dbs_term_and_run;
  wire    [  1: 0] next_dbs_address;
  wire    [ 15: 0] p1_dbs_16_reg_segment_0;
  wire    [  7: 0] p1_dbs_8_reg_segment_0;
  wire    [  7: 0] p1_dbs_8_reg_segment_1;
  wire    [  7: 0] p1_dbs_8_reg_segment_2;
  wire    [ 31: 0] p1_registered_cpu_0_data_master_readdata;
  wire             pre_dbs_count_enable;
  wire             r_0;
  wire             r_1;
  wire             r_2;
  reg     [ 31: 0] registered_cpu_0_data_master_readdata;
  //r_0 master_run cascaded wait assignment, which is an e_assign
  assign r_0 = 1 & (cpu_0_data_master_qualified_request_cpu_0_jtag_debug_module | ~cpu_0_data_master_requests_cpu_0_jtag_debug_module) & (cpu_0_data_master_granted_cpu_0_jtag_debug_module | ~cpu_0_data_master_qualified_request_cpu_0_jtag_debug_module) & ((~cpu_0_data_master_qualified_request_cpu_0_jtag_debug_module | ~cpu_0_data_master_read | (1 & 1 & cpu_0_data_master_read))) & ((~cpu_0_data_master_qualified_request_cpu_0_jtag_debug_module | ~cpu_0_data_master_write | (1 & cpu_0_data_master_write))) & 1 & (cpu_0_data_master_qualified_request_epcs_epcs_control_port | ~cpu_0_data_master_requests_epcs_epcs_control_port) & (cpu_0_data_master_granted_epcs_epcs_control_port | ~cpu_0_data_master_qualified_request_epcs_epcs_control_port) & ((~cpu_0_data_master_qualified_request_epcs_epcs_control_port | ~(cpu_0_data_master_read | cpu_0_data_master_write) | (1 & 1 & (cpu_0_data_master_read | cpu_0_data_master_write)))) & ((~cpu_0_data_master_qualified_request_epcs_epcs_control_port | ~(cpu_0_data_master_read | cpu_0_data_master_write) | (1 & 1 & (cpu_0_data_master_read | cpu_0_data_master_write)))) & 1 & (cpu_0_data_master_qualified_request_jtag_uart_avalon_jtag_slave | ~cpu_0_data_master_requests_jtag_uart_avalon_jtag_slave) & ((~cpu_0_data_master_qualified_request_jtag_uart_avalon_jtag_slave | ~(cpu_0_data_master_read | cpu_0_data_master_write) | (1 & ~jtag_uart_avalon_jtag_slave_waitrequest_from_sa & (cpu_0_data_master_read | cpu_0_data_master_write)))) & ((~cpu_0_data_master_qualified_request_jtag_uart_avalon_jtag_slave | ~(cpu_0_data_master_read | cpu_0_data_master_write) | (1 & ~jtag_uart_avalon_jtag_slave_waitrequest_from_sa & (cpu_0_data_master_read | cpu_0_data_master_write)))) & 1 & ((~cpu_0_data_master_qualified_request_lcd_control_slave | ~cpu_0_data_master_read | (1 & lcd_control_slave_wait_counter_eq_1 & cpu_0_data_master_read))) & ((~cpu_0_data_master_qualified_request_lcd_control_slave | ~cpu_0_data_master_write | (1 & lcd_control_slave_wait_counter_eq_1 & cpu_0_data_master_write))) & 1 & (cpu_0_data_master_qualified_request_onchip_memory2_s1 | registered_cpu_0_data_master_read_data_valid_onchip_memory2_s1 | ~cpu_0_data_master_requests_onchip_memory2_s1) & (cpu_0_data_master_granted_onchip_memory2_s1 | ~cpu_0_data_master_qualified_request_onchip_memory2_s1);

  //cascaded wait assignment, which is an e_assign
  assign cpu_0_data_master_run = r_0 & r_1 & r_2;

  //r_1 master_run cascaded wait assignment, which is an e_assign
  assign r_1 = ((~cpu_0_data_master_qualified_request_onchip_memory2_s1 | ~cpu_0_data_master_read | (registered_cpu_0_data_master_read_data_valid_onchip_memory2_s1 & cpu_0_data_master_read))) & ((~cpu_0_data_master_qualified_request_onchip_memory2_s1 | ~(cpu_0_data_master_read | cpu_0_data_master_write) | (1 & (cpu_0_data_master_read | cpu_0_data_master_write)))) & 1 & (cpu_0_data_master_qualified_request_sram_avalon_slave_0 | (cpu_0_data_master_write & !cpu_0_data_master_byteenable_sram_avalon_slave_0 & cpu_0_data_master_dbs_address[1]) | ~cpu_0_data_master_requests_sram_avalon_slave_0) & (cpu_0_data_master_granted_sram_avalon_slave_0 | ~cpu_0_data_master_qualified_request_sram_avalon_slave_0) & ((~cpu_0_data_master_qualified_request_sram_avalon_slave_0 | ~cpu_0_data_master_read | (1 & 1 & (cpu_0_data_master_dbs_address[1]) & cpu_0_data_master_read))) & ((~cpu_0_data_master_qualified_request_sram_avalon_slave_0 | ~cpu_0_data_master_write | (1 & ~d1_sram_avalon_slave_0_end_xfer & (cpu_0_data_master_dbs_address[1]) & cpu_0_data_master_write))) & 1 & ((~cpu_0_data_master_qualified_request_sysid_0_control_slave | ~cpu_0_data_master_read | (1 & 1 & cpu_0_data_master_read))) & ((~cpu_0_data_master_qualified_request_sysid_0_control_slave | ~cpu_0_data_master_write | (1 & cpu_0_data_master_write))) & 1 & (cpu_0_data_master_qualified_request_timer_s1 | ~cpu_0_data_master_requests_timer_s1) & ((~cpu_0_data_master_qualified_request_timer_s1 | ~cpu_0_data_master_read | (1 & 1 & cpu_0_data_master_read))) & ((~cpu_0_data_master_qualified_request_timer_s1 | ~cpu_0_data_master_write | (1 & cpu_0_data_master_write))) & 1 & ((cpu_0_data_master_qualified_request_cfi_flash_0_s1 | (registered_cpu_0_data_master_read_data_valid_cfi_flash_0_s1 & cpu_0_data_master_dbs_address[1] & cpu_0_data_master_dbs_address[0]) | ((cpu_0_data_master_write & !cpu_0_data_master_byteenable_cfi_flash_0_s1 & cpu_0_data_master_dbs_address[1] & cpu_0_data_master_dbs_address[0])) | ~cpu_0_data_master_requests_cfi_flash_0_s1)) & (cpu_0_data_master_granted_cfi_flash_0_s1 | ~cpu_0_data_master_qualified_request_cfi_flash_0_s1) & ((~cpu_0_data_master_qualified_request_cfi_flash_0_s1 | ~cpu_0_data_master_read | (registered_cpu_0_data_master_read_data_valid_cfi_flash_0_s1 & (cpu_0_data_master_dbs_address[1] & cpu_0_data_master_dbs_address[0]) & cpu_0_data_master_read))) & ((~cpu_0_data_master_qualified_request_cfi_flash_0_s1 | ~cpu_0_data_master_write | (1 & cfi_flash_0_s1_wait_counter_eq_1 & (cpu_0_data_master_dbs_address[1] & cpu_0_data_master_dbs_address[0]) & cpu_0_data_master_write))) & 1;

  //r_2 master_run cascaded wait assignment, which is an e_assign
  assign r_2 = ((~cpu_0_data_master_qualified_request_uart_s1 | ~(cpu_0_data_master_read | cpu_0_data_master_write) | (1 & 1 & (cpu_0_data_master_read | cpu_0_data_master_write)))) & ((~cpu_0_data_master_qualified_request_uart_s1 | ~(cpu_0_data_master_read | cpu_0_data_master_write) | (1 & 1 & (cpu_0_data_master_read | cpu_0_data_master_write)))) & 1 & ((~cpu_0_data_master_qualified_request_vga_0_avalon_slave_0 | ~cpu_0_data_master_read | (1 & 1 & cpu_0_data_master_read))) & ((~cpu_0_data_master_qualified_request_vga_0_avalon_slave_0 | ~cpu_0_data_master_write | (1 & ~d1_vga_0_avalon_slave_0_end_xfer & cpu_0_data_master_write)));

  //optimize select-logic by passing only those address bits which matter.
  assign cpu_0_data_master_address_to_slave = cpu_0_data_master_address[23 : 0];

  //cpu_0/data_master readdata mux, which is an e_mux
  assign cpu_0_data_master_readdata = ({32 {~cpu_0_data_master_requests_cpu_0_jtag_debug_module}} | cpu_0_jtag_debug_module_readdata_from_sa) &
    ({32 {~cpu_0_data_master_requests_epcs_epcs_control_port}} | epcs_epcs_control_port_readdata_from_sa) &
    ({32 {~cpu_0_data_master_requests_jtag_uart_avalon_jtag_slave}} | registered_cpu_0_data_master_readdata) &
    ({32 {~cpu_0_data_master_requests_lcd_control_slave}} | lcd_control_slave_readdata_from_sa) &
    ({32 {~cpu_0_data_master_requests_onchip_memory2_s1}} | onchip_memory2_s1_readdata_from_sa) &
    ({32 {~cpu_0_data_master_requests_sram_avalon_slave_0}} | {sram_avalon_slave_0_readdata_from_sa[15 : 0],
    dbs_16_reg_segment_0}) &
    ({32 {~cpu_0_data_master_requests_sysid_0_control_slave}} | sysid_0_control_slave_readdata_from_sa) &
    ({32 {~cpu_0_data_master_requests_timer_s1}} | timer_s1_readdata_from_sa) &
    ({32 {~cpu_0_data_master_requests_cfi_flash_0_s1}} | {incoming_tri_state_bridge_flash_data_with_Xs_converted_to_0[7 : 0],
    dbs_8_reg_segment_2,
    dbs_8_reg_segment_1,
    dbs_8_reg_segment_0}) &
    ({32 {~cpu_0_data_master_requests_uart_s1}} | uart_s1_readdata_from_sa) &
    ({32 {~cpu_0_data_master_requests_vga_0_avalon_slave_0}} | vga_0_avalon_slave_0_readdata_from_sa);

  //actual waitrequest port, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_0_data_master_waitrequest <= ~0;
      else 
        cpu_0_data_master_waitrequest <= ~((~(cpu_0_data_master_read | cpu_0_data_master_write))? 0: (cpu_0_data_master_run & cpu_0_data_master_waitrequest));
    end


  //irq assign, which is an e_assign
  assign cpu_0_data_master_irq = {1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    epcs_epcs_control_port_irq_from_sa,
    timer_s1_irq_from_sa,
    uart_s1_irq_from_sa,
    jtag_uart_avalon_jtag_slave_irq_from_sa};

  //unpredictable registered wait state incoming data, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          registered_cpu_0_data_master_readdata <= 0;
      else 
        registered_cpu_0_data_master_readdata <= p1_registered_cpu_0_data_master_readdata;
    end


  //registered readdata mux, which is an e_mux
  assign p1_registered_cpu_0_data_master_readdata = {32 {~cpu_0_data_master_requests_jtag_uart_avalon_jtag_slave}} | jtag_uart_avalon_jtag_slave_readdata_from_sa;

  //no_byte_enables_and_last_term, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_0_data_master_no_byte_enables_and_last_term <= 0;
      else 
        cpu_0_data_master_no_byte_enables_and_last_term <= last_dbs_term_and_run;
    end


  //compute the last dbs term, which is an e_mux
  assign last_dbs_term_and_run = (cpu_0_data_master_requests_sram_avalon_slave_0)? (((cpu_0_data_master_dbs_address == 2'b10) & cpu_0_data_master_write & !cpu_0_data_master_byteenable_sram_avalon_slave_0)) :
    (((cpu_0_data_master_dbs_address == 2'b11) & cpu_0_data_master_write & !cpu_0_data_master_byteenable_cfi_flash_0_s1));

  //pre dbs count enable, which is an e_mux
  assign pre_dbs_count_enable = (((~cpu_0_data_master_no_byte_enables_and_last_term) & cpu_0_data_master_requests_sram_avalon_slave_0 & cpu_0_data_master_write & !cpu_0_data_master_byteenable_sram_avalon_slave_0)) |
    (cpu_0_data_master_granted_sram_avalon_slave_0 & cpu_0_data_master_read & 1 & 1 & ~d1_sram_avalon_slave_0_end_xfer) |
    ((cpu_0_data_master_granted_sram_avalon_slave_0 & cpu_0_data_master_write & 1 & 1 & ({sram_avalon_slave_0_wait_counter_eq_0 & ~d1_sram_avalon_slave_0_end_xfer}))) |
    (((~cpu_0_data_master_no_byte_enables_and_last_term) & cpu_0_data_master_requests_cfi_flash_0_s1 & cpu_0_data_master_write & !cpu_0_data_master_byteenable_cfi_flash_0_s1)) |
    cpu_0_data_master_read_data_valid_cfi_flash_0_s1 |
    ((cpu_0_data_master_granted_cfi_flash_0_s1 & cpu_0_data_master_write & 1 & 1 & ({cfi_flash_0_s1_wait_counter_eq_0 & ~d1_tri_state_bridge_flash_avalon_slave_end_xfer})));

  //input to dbs-16 stored 0, which is an e_mux
  assign p1_dbs_16_reg_segment_0 = sram_avalon_slave_0_readdata_from_sa;

  //dbs register for dbs-16 segment 0, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          dbs_16_reg_segment_0 <= 0;
      else if (dbs_count_enable & ((cpu_0_data_master_dbs_address[1]) == 0))
          dbs_16_reg_segment_0 <= p1_dbs_16_reg_segment_0;
    end


  //mux write dbs 1, which is an e_mux
  assign cpu_0_data_master_dbs_write_16 = (cpu_0_data_master_dbs_address[1])? cpu_0_data_master_writedata[31 : 16] :
    cpu_0_data_master_writedata[15 : 0];

  //dbs count increment, which is an e_mux
  assign cpu_0_data_master_dbs_increment = (cpu_0_data_master_requests_sram_avalon_slave_0)? 2 :
    (cpu_0_data_master_requests_cfi_flash_0_s1)? 1 :
    0;

  //dbs counter overflow, which is an e_assign
  assign dbs_counter_overflow = cpu_0_data_master_dbs_address[1] & !(next_dbs_address[1]);

  //next master address, which is an e_assign
  assign next_dbs_address = cpu_0_data_master_dbs_address + cpu_0_data_master_dbs_increment;

  //dbs count enable, which is an e_mux
  assign dbs_count_enable = pre_dbs_count_enable;

  //dbs counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_0_data_master_dbs_address <= 0;
      else if (dbs_count_enable)
          cpu_0_data_master_dbs_address <= next_dbs_address;
    end


  //input to dbs-8 stored 0, which is an e_mux
  assign p1_dbs_8_reg_segment_0 = incoming_tri_state_bridge_flash_data_with_Xs_converted_to_0;

  //dbs register for dbs-8 segment 0, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          dbs_8_reg_segment_0 <= 0;
      else if (dbs_count_enable & ((cpu_0_data_master_dbs_address[1 : 0]) == 0))
          dbs_8_reg_segment_0 <= p1_dbs_8_reg_segment_0;
    end


  //input to dbs-8 stored 1, which is an e_mux
  assign p1_dbs_8_reg_segment_1 = incoming_tri_state_bridge_flash_data_with_Xs_converted_to_0;

  //dbs register for dbs-8 segment 1, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          dbs_8_reg_segment_1 <= 0;
      else if (dbs_count_enable & ((cpu_0_data_master_dbs_address[1 : 0]) == 1))
          dbs_8_reg_segment_1 <= p1_dbs_8_reg_segment_1;
    end


  //input to dbs-8 stored 2, which is an e_mux
  assign p1_dbs_8_reg_segment_2 = incoming_tri_state_bridge_flash_data_with_Xs_converted_to_0;

  //dbs register for dbs-8 segment 2, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          dbs_8_reg_segment_2 <= 0;
      else if (dbs_count_enable & ((cpu_0_data_master_dbs_address[1 : 0]) == 2))
          dbs_8_reg_segment_2 <= p1_dbs_8_reg_segment_2;
    end


  //mux write dbs 2, which is an e_mux
  assign cpu_0_data_master_dbs_write_8 = ((cpu_0_data_master_dbs_address[1 : 0] == 0))? cpu_0_data_master_writedata[7 : 0] :
    ((cpu_0_data_master_dbs_address[1 : 0] == 1))? cpu_0_data_master_writedata[15 : 8] :
    ((cpu_0_data_master_dbs_address[1 : 0] == 2))? cpu_0_data_master_writedata[23 : 16] :
    cpu_0_data_master_writedata[31 : 24];


endmodule


// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_0_instruction_master_arbitrator (
                                             // inputs:
                                              cfi_flash_0_s1_wait_counter_eq_0,
                                              cfi_flash_0_s1_wait_counter_eq_1,
                                              clk,
                                              cpu_0_instruction_master_address,
                                              cpu_0_instruction_master_granted_cfi_flash_0_s1,
                                              cpu_0_instruction_master_granted_cpu_0_jtag_debug_module,
                                              cpu_0_instruction_master_granted_epcs_epcs_control_port,
                                              cpu_0_instruction_master_granted_onchip_memory2_s1,
                                              cpu_0_instruction_master_granted_sram_avalon_slave_0,
                                              cpu_0_instruction_master_qualified_request_cfi_flash_0_s1,
                                              cpu_0_instruction_master_qualified_request_cpu_0_jtag_debug_module,
                                              cpu_0_instruction_master_qualified_request_epcs_epcs_control_port,
                                              cpu_0_instruction_master_qualified_request_onchip_memory2_s1,
                                              cpu_0_instruction_master_qualified_request_sram_avalon_slave_0,
                                              cpu_0_instruction_master_read,
                                              cpu_0_instruction_master_read_data_valid_cfi_flash_0_s1,
                                              cpu_0_instruction_master_read_data_valid_cpu_0_jtag_debug_module,
                                              cpu_0_instruction_master_read_data_valid_epcs_epcs_control_port,
                                              cpu_0_instruction_master_read_data_valid_onchip_memory2_s1,
                                              cpu_0_instruction_master_read_data_valid_sram_avalon_slave_0,
                                              cpu_0_instruction_master_requests_cfi_flash_0_s1,
                                              cpu_0_instruction_master_requests_cpu_0_jtag_debug_module,
                                              cpu_0_instruction_master_requests_epcs_epcs_control_port,
                                              cpu_0_instruction_master_requests_onchip_memory2_s1,
                                              cpu_0_instruction_master_requests_sram_avalon_slave_0,
                                              cpu_0_jtag_debug_module_readdata_from_sa,
                                              d1_cpu_0_jtag_debug_module_end_xfer,
                                              d1_epcs_epcs_control_port_end_xfer,
                                              d1_onchip_memory2_s1_end_xfer,
                                              d1_sram_avalon_slave_0_end_xfer,
                                              d1_tri_state_bridge_flash_avalon_slave_end_xfer,
                                              epcs_epcs_control_port_readdata_from_sa,
                                              incoming_tri_state_bridge_flash_data,
                                              onchip_memory2_s1_readdata_from_sa,
                                              reset_n,
                                              sram_avalon_slave_0_readdata_from_sa,
                                              sram_avalon_slave_0_wait_counter_eq_0,

                                             // outputs:
                                              cpu_0_instruction_master_address_to_slave,
                                              cpu_0_instruction_master_dbs_address,
                                              cpu_0_instruction_master_latency_counter,
                                              cpu_0_instruction_master_readdata,
                                              cpu_0_instruction_master_readdatavalid,
                                              cpu_0_instruction_master_waitrequest
                                           )
;

  output  [ 23: 0] cpu_0_instruction_master_address_to_slave;
  output  [  1: 0] cpu_0_instruction_master_dbs_address;
  output  [  1: 0] cpu_0_instruction_master_latency_counter;
  output  [ 31: 0] cpu_0_instruction_master_readdata;
  output           cpu_0_instruction_master_readdatavalid;
  output           cpu_0_instruction_master_waitrequest;
  input            cfi_flash_0_s1_wait_counter_eq_0;
  input            cfi_flash_0_s1_wait_counter_eq_1;
  input            clk;
  input   [ 23: 0] cpu_0_instruction_master_address;
  input            cpu_0_instruction_master_granted_cfi_flash_0_s1;
  input            cpu_0_instruction_master_granted_cpu_0_jtag_debug_module;
  input            cpu_0_instruction_master_granted_epcs_epcs_control_port;
  input            cpu_0_instruction_master_granted_onchip_memory2_s1;
  input            cpu_0_instruction_master_granted_sram_avalon_slave_0;
  input            cpu_0_instruction_master_qualified_request_cfi_flash_0_s1;
  input            cpu_0_instruction_master_qualified_request_cpu_0_jtag_debug_module;
  input            cpu_0_instruction_master_qualified_request_epcs_epcs_control_port;
  input            cpu_0_instruction_master_qualified_request_onchip_memory2_s1;
  input            cpu_0_instruction_master_qualified_request_sram_avalon_slave_0;
  input            cpu_0_instruction_master_read;
  input            cpu_0_instruction_master_read_data_valid_cfi_flash_0_s1;
  input            cpu_0_instruction_master_read_data_valid_cpu_0_jtag_debug_module;
  input            cpu_0_instruction_master_read_data_valid_epcs_epcs_control_port;
  input            cpu_0_instruction_master_read_data_valid_onchip_memory2_s1;
  input            cpu_0_instruction_master_read_data_valid_sram_avalon_slave_0;
  input            cpu_0_instruction_master_requests_cfi_flash_0_s1;
  input            cpu_0_instruction_master_requests_cpu_0_jtag_debug_module;
  input            cpu_0_instruction_master_requests_epcs_epcs_control_port;
  input            cpu_0_instruction_master_requests_onchip_memory2_s1;
  input            cpu_0_instruction_master_requests_sram_avalon_slave_0;
  input   [ 31: 0] cpu_0_jtag_debug_module_readdata_from_sa;
  input            d1_cpu_0_jtag_debug_module_end_xfer;
  input            d1_epcs_epcs_control_port_end_xfer;
  input            d1_onchip_memory2_s1_end_xfer;
  input            d1_sram_avalon_slave_0_end_xfer;
  input            d1_tri_state_bridge_flash_avalon_slave_end_xfer;
  input   [ 31: 0] epcs_epcs_control_port_readdata_from_sa;
  input   [  7: 0] incoming_tri_state_bridge_flash_data;
  input   [ 31: 0] onchip_memory2_s1_readdata_from_sa;
  input            reset_n;
  input   [ 15: 0] sram_avalon_slave_0_readdata_from_sa;
  input            sram_avalon_slave_0_wait_counter_eq_0;

  reg              active_and_waiting_last_time;
  reg     [ 23: 0] cpu_0_instruction_master_address_last_time;
  wire    [ 23: 0] cpu_0_instruction_master_address_to_slave;
  reg     [  1: 0] cpu_0_instruction_master_dbs_address;
  wire    [  1: 0] cpu_0_instruction_master_dbs_increment;
  reg     [  1: 0] cpu_0_instruction_master_dbs_rdv_counter;
  wire    [  1: 0] cpu_0_instruction_master_dbs_rdv_counter_inc;
  wire             cpu_0_instruction_master_is_granted_some_slave;
  reg     [  1: 0] cpu_0_instruction_master_latency_counter;
  wire    [  1: 0] cpu_0_instruction_master_next_dbs_rdv_counter;
  reg              cpu_0_instruction_master_read_but_no_slave_selected;
  reg              cpu_0_instruction_master_read_last_time;
  wire    [ 31: 0] cpu_0_instruction_master_readdata;
  wire             cpu_0_instruction_master_readdatavalid;
  wire             cpu_0_instruction_master_run;
  wire             cpu_0_instruction_master_waitrequest;
  reg     [ 15: 0] dbs_16_reg_segment_0;
  wire             dbs_count_enable;
  wire             dbs_counter_overflow;
  reg     [  7: 0] dbs_latent_8_reg_segment_0;
  reg     [  7: 0] dbs_latent_8_reg_segment_1;
  reg     [  7: 0] dbs_latent_8_reg_segment_2;
  wire             dbs_rdv_count_enable;
  wire             dbs_rdv_counter_overflow;
  wire    [  1: 0] latency_load_value;
  wire    [  1: 0] next_dbs_address;
  wire    [  1: 0] p1_cpu_0_instruction_master_latency_counter;
  wire    [ 15: 0] p1_dbs_16_reg_segment_0;
  wire    [  7: 0] p1_dbs_latent_8_reg_segment_0;
  wire    [  7: 0] p1_dbs_latent_8_reg_segment_1;
  wire    [  7: 0] p1_dbs_latent_8_reg_segment_2;
  wire             pre_dbs_count_enable;
  wire             pre_flush_cpu_0_instruction_master_readdatavalid;
  wire             r_0;
  wire             r_1;
  //r_0 master_run cascaded wait assignment, which is an e_assign
  assign r_0 = 1 & (cpu_0_instruction_master_qualified_request_cpu_0_jtag_debug_module | ~cpu_0_instruction_master_requests_cpu_0_jtag_debug_module) & (cpu_0_instruction_master_granted_cpu_0_jtag_debug_module | ~cpu_0_instruction_master_qualified_request_cpu_0_jtag_debug_module) & ((~cpu_0_instruction_master_qualified_request_cpu_0_jtag_debug_module | ~cpu_0_instruction_master_read | (1 & ~d1_cpu_0_jtag_debug_module_end_xfer & cpu_0_instruction_master_read))) & 1 & (cpu_0_instruction_master_qualified_request_epcs_epcs_control_port | ~cpu_0_instruction_master_requests_epcs_epcs_control_port) & (cpu_0_instruction_master_granted_epcs_epcs_control_port | ~cpu_0_instruction_master_qualified_request_epcs_epcs_control_port) & ((~cpu_0_instruction_master_qualified_request_epcs_epcs_control_port | ~(cpu_0_instruction_master_read) | (1 & ~d1_epcs_epcs_control_port_end_xfer & (cpu_0_instruction_master_read)))) & 1 & (cpu_0_instruction_master_qualified_request_onchip_memory2_s1 | ~cpu_0_instruction_master_requests_onchip_memory2_s1);

  //cascaded wait assignment, which is an e_assign
  assign cpu_0_instruction_master_run = r_0 & r_1;

  //r_1 master_run cascaded wait assignment, which is an e_assign
  assign r_1 = (cpu_0_instruction_master_granted_onchip_memory2_s1 | ~cpu_0_instruction_master_qualified_request_onchip_memory2_s1) & ((~cpu_0_instruction_master_qualified_request_onchip_memory2_s1 | ~cpu_0_instruction_master_read | (1 & cpu_0_instruction_master_read))) & 1 & (cpu_0_instruction_master_qualified_request_sram_avalon_slave_0 | ~cpu_0_instruction_master_requests_sram_avalon_slave_0) & (cpu_0_instruction_master_granted_sram_avalon_slave_0 | ~cpu_0_instruction_master_qualified_request_sram_avalon_slave_0) & ((~cpu_0_instruction_master_qualified_request_sram_avalon_slave_0 | ~cpu_0_instruction_master_read | (1 & ~d1_sram_avalon_slave_0_end_xfer & (cpu_0_instruction_master_dbs_address[1]) & cpu_0_instruction_master_read))) & 1 & (cpu_0_instruction_master_qualified_request_cfi_flash_0_s1 | ~cpu_0_instruction_master_requests_cfi_flash_0_s1) & (cpu_0_instruction_master_granted_cfi_flash_0_s1 | ~cpu_0_instruction_master_qualified_request_cfi_flash_0_s1) & ((~cpu_0_instruction_master_qualified_request_cfi_flash_0_s1 | ~cpu_0_instruction_master_read | (1 & ((cfi_flash_0_s1_wait_counter_eq_0 & ~d1_tri_state_bridge_flash_avalon_slave_end_xfer)) & (cpu_0_instruction_master_dbs_address[1] & cpu_0_instruction_master_dbs_address[0]) & cpu_0_instruction_master_read)));

  //optimize select-logic by passing only those address bits which matter.
  assign cpu_0_instruction_master_address_to_slave = cpu_0_instruction_master_address[23 : 0];

  //cpu_0_instruction_master_read_but_no_slave_selected assignment, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_0_instruction_master_read_but_no_slave_selected <= 0;
      else 
        cpu_0_instruction_master_read_but_no_slave_selected <= cpu_0_instruction_master_read & cpu_0_instruction_master_run & ~cpu_0_instruction_master_is_granted_some_slave;
    end


  //some slave is getting selected, which is an e_mux
  assign cpu_0_instruction_master_is_granted_some_slave = cpu_0_instruction_master_granted_cpu_0_jtag_debug_module |
    cpu_0_instruction_master_granted_epcs_epcs_control_port |
    cpu_0_instruction_master_granted_onchip_memory2_s1 |
    cpu_0_instruction_master_granted_sram_avalon_slave_0 |
    cpu_0_instruction_master_granted_cfi_flash_0_s1;

  //latent slave read data valids which may be flushed, which is an e_mux
  assign pre_flush_cpu_0_instruction_master_readdatavalid = cpu_0_instruction_master_read_data_valid_onchip_memory2_s1 |
    (cpu_0_instruction_master_read_data_valid_cfi_flash_0_s1 & dbs_rdv_counter_overflow);

  //latent slave read data valid which is not flushed, which is an e_mux
  assign cpu_0_instruction_master_readdatavalid = cpu_0_instruction_master_read_but_no_slave_selected |
    pre_flush_cpu_0_instruction_master_readdatavalid |
    cpu_0_instruction_master_read_data_valid_cpu_0_jtag_debug_module |
    cpu_0_instruction_master_read_but_no_slave_selected |
    pre_flush_cpu_0_instruction_master_readdatavalid |
    cpu_0_instruction_master_read_data_valid_epcs_epcs_control_port |
    cpu_0_instruction_master_read_but_no_slave_selected |
    pre_flush_cpu_0_instruction_master_readdatavalid |
    cpu_0_instruction_master_read_but_no_slave_selected |
    pre_flush_cpu_0_instruction_master_readdatavalid |
    (cpu_0_instruction_master_read_data_valid_sram_avalon_slave_0 & dbs_counter_overflow) |
    cpu_0_instruction_master_read_but_no_slave_selected |
    pre_flush_cpu_0_instruction_master_readdatavalid;

  //cpu_0/instruction_master readdata mux, which is an e_mux
  assign cpu_0_instruction_master_readdata = ({32 {~(cpu_0_instruction_master_qualified_request_cpu_0_jtag_debug_module & cpu_0_instruction_master_read)}} | cpu_0_jtag_debug_module_readdata_from_sa) &
    ({32 {~(cpu_0_instruction_master_qualified_request_epcs_epcs_control_port & cpu_0_instruction_master_read)}} | epcs_epcs_control_port_readdata_from_sa) &
    ({32 {~cpu_0_instruction_master_read_data_valid_onchip_memory2_s1}} | onchip_memory2_s1_readdata_from_sa) &
    ({32 {~(cpu_0_instruction_master_qualified_request_sram_avalon_slave_0 & cpu_0_instruction_master_read)}} | {sram_avalon_slave_0_readdata_from_sa[15 : 0],
    dbs_16_reg_segment_0}) &
    ({32 {~cpu_0_instruction_master_read_data_valid_cfi_flash_0_s1}} | {incoming_tri_state_bridge_flash_data[7 : 0],
    dbs_latent_8_reg_segment_2,
    dbs_latent_8_reg_segment_1,
    dbs_latent_8_reg_segment_0});

  //actual waitrequest port, which is an e_assign
  assign cpu_0_instruction_master_waitrequest = ~cpu_0_instruction_master_run;

  //latent max counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_0_instruction_master_latency_counter <= 0;
      else 
        cpu_0_instruction_master_latency_counter <= p1_cpu_0_instruction_master_latency_counter;
    end


  //latency counter load mux, which is an e_mux
  assign p1_cpu_0_instruction_master_latency_counter = ((cpu_0_instruction_master_run & cpu_0_instruction_master_read))? latency_load_value :
    (cpu_0_instruction_master_latency_counter)? cpu_0_instruction_master_latency_counter - 1 :
    0;

  //read latency load values, which is an e_mux
  assign latency_load_value = ({2 {cpu_0_instruction_master_requests_onchip_memory2_s1}} & 1) |
    ({2 {cpu_0_instruction_master_requests_cfi_flash_0_s1}} & 2);

  //input to dbs-16 stored 0, which is an e_mux
  assign p1_dbs_16_reg_segment_0 = sram_avalon_slave_0_readdata_from_sa;

  //dbs register for dbs-16 segment 0, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          dbs_16_reg_segment_0 <= 0;
      else if (dbs_count_enable & ((cpu_0_instruction_master_dbs_address[1]) == 0))
          dbs_16_reg_segment_0 <= p1_dbs_16_reg_segment_0;
    end


  //dbs count increment, which is an e_mux
  assign cpu_0_instruction_master_dbs_increment = (cpu_0_instruction_master_requests_sram_avalon_slave_0)? 2 :
    (cpu_0_instruction_master_requests_cfi_flash_0_s1)? 1 :
    0;

  //dbs counter overflow, which is an e_assign
  assign dbs_counter_overflow = cpu_0_instruction_master_dbs_address[1] & !(next_dbs_address[1]);

  //next master address, which is an e_assign
  assign next_dbs_address = cpu_0_instruction_master_dbs_address + cpu_0_instruction_master_dbs_increment;

  //dbs count enable, which is an e_mux
  assign dbs_count_enable = pre_dbs_count_enable;

  //dbs counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_0_instruction_master_dbs_address <= 0;
      else if (dbs_count_enable)
          cpu_0_instruction_master_dbs_address <= next_dbs_address;
    end


  //pre dbs count enable, which is an e_mux
  assign pre_dbs_count_enable = (cpu_0_instruction_master_granted_sram_avalon_slave_0 & cpu_0_instruction_master_read & 1 & 1 & ~d1_sram_avalon_slave_0_end_xfer) |
    ((cpu_0_instruction_master_granted_cfi_flash_0_s1 & cpu_0_instruction_master_read & 1 & 1 & ({cfi_flash_0_s1_wait_counter_eq_0 & ~d1_tri_state_bridge_flash_avalon_slave_end_xfer})));

  //input to latent dbs-8 stored 0, which is an e_mux
  assign p1_dbs_latent_8_reg_segment_0 = incoming_tri_state_bridge_flash_data;

  //dbs register for latent dbs-8 segment 0, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          dbs_latent_8_reg_segment_0 <= 0;
      else if (dbs_rdv_count_enable & ((cpu_0_instruction_master_dbs_rdv_counter[1 : 0]) == 0))
          dbs_latent_8_reg_segment_0 <= p1_dbs_latent_8_reg_segment_0;
    end


  //input to latent dbs-8 stored 1, which is an e_mux
  assign p1_dbs_latent_8_reg_segment_1 = incoming_tri_state_bridge_flash_data;

  //dbs register for latent dbs-8 segment 1, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          dbs_latent_8_reg_segment_1 <= 0;
      else if (dbs_rdv_count_enable & ((cpu_0_instruction_master_dbs_rdv_counter[1 : 0]) == 1))
          dbs_latent_8_reg_segment_1 <= p1_dbs_latent_8_reg_segment_1;
    end


  //input to latent dbs-8 stored 2, which is an e_mux
  assign p1_dbs_latent_8_reg_segment_2 = incoming_tri_state_bridge_flash_data;

  //dbs register for latent dbs-8 segment 2, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          dbs_latent_8_reg_segment_2 <= 0;
      else if (dbs_rdv_count_enable & ((cpu_0_instruction_master_dbs_rdv_counter[1 : 0]) == 2))
          dbs_latent_8_reg_segment_2 <= p1_dbs_latent_8_reg_segment_2;
    end


  //p1 dbs rdv counter, which is an e_assign
  assign cpu_0_instruction_master_next_dbs_rdv_counter = cpu_0_instruction_master_dbs_rdv_counter + cpu_0_instruction_master_dbs_rdv_counter_inc;

  //cpu_0_instruction_master_rdv_inc_mux, which is an e_mux
  assign cpu_0_instruction_master_dbs_rdv_counter_inc = 1;

  //master any slave rdv, which is an e_mux
  assign dbs_rdv_count_enable = cpu_0_instruction_master_read_data_valid_cfi_flash_0_s1;

  //dbs rdv counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_0_instruction_master_dbs_rdv_counter <= 0;
      else if (dbs_rdv_count_enable)
          cpu_0_instruction_master_dbs_rdv_counter <= cpu_0_instruction_master_next_dbs_rdv_counter;
    end


  //dbs rdv counter overflow, which is an e_assign
  assign dbs_rdv_counter_overflow = cpu_0_instruction_master_dbs_rdv_counter[1] & ~cpu_0_instruction_master_next_dbs_rdv_counter[1];


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //cpu_0_instruction_master_address check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_0_instruction_master_address_last_time <= 0;
      else 
        cpu_0_instruction_master_address_last_time <= cpu_0_instruction_master_address;
    end


  //cpu_0/instruction_master waited last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          active_and_waiting_last_time <= 0;
      else 
        active_and_waiting_last_time <= cpu_0_instruction_master_waitrequest & (cpu_0_instruction_master_read);
    end


  //cpu_0_instruction_master_address matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (cpu_0_instruction_master_address != cpu_0_instruction_master_address_last_time))
        begin
          $write("%0d ns: cpu_0_instruction_master_address did not heed wait!!!", $time);
          $stop;
        end
    end


  //cpu_0_instruction_master_read check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_0_instruction_master_read_last_time <= 0;
      else 
        cpu_0_instruction_master_read_last_time <= cpu_0_instruction_master_read;
    end


  //cpu_0_instruction_master_read matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (cpu_0_instruction_master_read != cpu_0_instruction_master_read_last_time))
        begin
          $write("%0d ns: cpu_0_instruction_master_read did not heed wait!!!", $time);
          $stop;
        end
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule


// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module epcs_epcs_control_port_arbitrator (
                                           // inputs:
                                            clk,
                                            cpu_0_data_master_address_to_slave,
                                            cpu_0_data_master_read,
                                            cpu_0_data_master_write,
                                            cpu_0_data_master_writedata,
                                            cpu_0_instruction_master_address_to_slave,
                                            cpu_0_instruction_master_latency_counter,
                                            cpu_0_instruction_master_read,
                                            epcs_epcs_control_port_dataavailable,
                                            epcs_epcs_control_port_endofpacket,
                                            epcs_epcs_control_port_irq,
                                            epcs_epcs_control_port_readdata,
                                            epcs_epcs_control_port_readyfordata,
                                            reset_n,

                                           // outputs:
                                            cpu_0_data_master_granted_epcs_epcs_control_port,
                                            cpu_0_data_master_qualified_request_epcs_epcs_control_port,
                                            cpu_0_data_master_read_data_valid_epcs_epcs_control_port,
                                            cpu_0_data_master_requests_epcs_epcs_control_port,
                                            cpu_0_instruction_master_granted_epcs_epcs_control_port,
                                            cpu_0_instruction_master_qualified_request_epcs_epcs_control_port,
                                            cpu_0_instruction_master_read_data_valid_epcs_epcs_control_port,
                                            cpu_0_instruction_master_requests_epcs_epcs_control_port,
                                            d1_epcs_epcs_control_port_end_xfer,
                                            epcs_epcs_control_port_address,
                                            epcs_epcs_control_port_chipselect,
                                            epcs_epcs_control_port_dataavailable_from_sa,
                                            epcs_epcs_control_port_endofpacket_from_sa,
                                            epcs_epcs_control_port_irq_from_sa,
                                            epcs_epcs_control_port_read_n,
                                            epcs_epcs_control_port_readdata_from_sa,
                                            epcs_epcs_control_port_readyfordata_from_sa,
                                            epcs_epcs_control_port_reset_n,
                                            epcs_epcs_control_port_write_n,
                                            epcs_epcs_control_port_writedata
                                         )
;

  output           cpu_0_data_master_granted_epcs_epcs_control_port;
  output           cpu_0_data_master_qualified_request_epcs_epcs_control_port;
  output           cpu_0_data_master_read_data_valid_epcs_epcs_control_port;
  output           cpu_0_data_master_requests_epcs_epcs_control_port;
  output           cpu_0_instruction_master_granted_epcs_epcs_control_port;
  output           cpu_0_instruction_master_qualified_request_epcs_epcs_control_port;
  output           cpu_0_instruction_master_read_data_valid_epcs_epcs_control_port;
  output           cpu_0_instruction_master_requests_epcs_epcs_control_port;
  output           d1_epcs_epcs_control_port_end_xfer;
  output  [  8: 0] epcs_epcs_control_port_address;
  output           epcs_epcs_control_port_chipselect;
  output           epcs_epcs_control_port_dataavailable_from_sa;
  output           epcs_epcs_control_port_endofpacket_from_sa;
  output           epcs_epcs_control_port_irq_from_sa;
  output           epcs_epcs_control_port_read_n;
  output  [ 31: 0] epcs_epcs_control_port_readdata_from_sa;
  output           epcs_epcs_control_port_readyfordata_from_sa;
  output           epcs_epcs_control_port_reset_n;
  output           epcs_epcs_control_port_write_n;
  output  [ 31: 0] epcs_epcs_control_port_writedata;
  input            clk;
  input   [ 23: 0] cpu_0_data_master_address_to_slave;
  input            cpu_0_data_master_read;
  input            cpu_0_data_master_write;
  input   [ 31: 0] cpu_0_data_master_writedata;
  input   [ 23: 0] cpu_0_instruction_master_address_to_slave;
  input   [  1: 0] cpu_0_instruction_master_latency_counter;
  input            cpu_0_instruction_master_read;
  input            epcs_epcs_control_port_dataavailable;
  input            epcs_epcs_control_port_endofpacket;
  input            epcs_epcs_control_port_irq;
  input   [ 31: 0] epcs_epcs_control_port_readdata;
  input            epcs_epcs_control_port_readyfordata;
  input            reset_n;

  wire             cpu_0_data_master_arbiterlock;
  wire             cpu_0_data_master_arbiterlock2;
  wire             cpu_0_data_master_continuerequest;
  wire             cpu_0_data_master_granted_epcs_epcs_control_port;
  wire             cpu_0_data_master_qualified_request_epcs_epcs_control_port;
  wire             cpu_0_data_master_read_data_valid_epcs_epcs_control_port;
  wire             cpu_0_data_master_requests_epcs_epcs_control_port;
  wire             cpu_0_data_master_saved_grant_epcs_epcs_control_port;
  wire             cpu_0_instruction_master_arbiterlock;
  wire             cpu_0_instruction_master_arbiterlock2;
  wire             cpu_0_instruction_master_continuerequest;
  wire             cpu_0_instruction_master_granted_epcs_epcs_control_port;
  wire             cpu_0_instruction_master_qualified_request_epcs_epcs_control_port;
  wire             cpu_0_instruction_master_read_data_valid_epcs_epcs_control_port;
  wire             cpu_0_instruction_master_requests_epcs_epcs_control_port;
  wire             cpu_0_instruction_master_saved_grant_epcs_epcs_control_port;
  reg              d1_epcs_epcs_control_port_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_epcs_epcs_control_port;
  wire    [  8: 0] epcs_epcs_control_port_address;
  wire             epcs_epcs_control_port_allgrants;
  wire             epcs_epcs_control_port_allow_new_arb_cycle;
  wire             epcs_epcs_control_port_any_bursting_master_saved_grant;
  wire             epcs_epcs_control_port_any_continuerequest;
  reg     [  1: 0] epcs_epcs_control_port_arb_addend;
  wire             epcs_epcs_control_port_arb_counter_enable;
  reg     [  2: 0] epcs_epcs_control_port_arb_share_counter;
  wire    [  2: 0] epcs_epcs_control_port_arb_share_counter_next_value;
  wire    [  2: 0] epcs_epcs_control_port_arb_share_set_values;
  wire    [  1: 0] epcs_epcs_control_port_arb_winner;
  wire             epcs_epcs_control_port_arbitration_holdoff_internal;
  wire             epcs_epcs_control_port_beginbursttransfer_internal;
  wire             epcs_epcs_control_port_begins_xfer;
  wire             epcs_epcs_control_port_chipselect;
  wire    [  3: 0] epcs_epcs_control_port_chosen_master_double_vector;
  wire    [  1: 0] epcs_epcs_control_port_chosen_master_rot_left;
  wire             epcs_epcs_control_port_dataavailable_from_sa;
  wire             epcs_epcs_control_port_end_xfer;
  wire             epcs_epcs_control_port_endofpacket_from_sa;
  wire             epcs_epcs_control_port_firsttransfer;
  wire    [  1: 0] epcs_epcs_control_port_grant_vector;
  wire             epcs_epcs_control_port_in_a_read_cycle;
  wire             epcs_epcs_control_port_in_a_write_cycle;
  wire             epcs_epcs_control_port_irq_from_sa;
  wire    [  1: 0] epcs_epcs_control_port_master_qreq_vector;
  wire             epcs_epcs_control_port_non_bursting_master_requests;
  wire             epcs_epcs_control_port_read_n;
  wire    [ 31: 0] epcs_epcs_control_port_readdata_from_sa;
  wire             epcs_epcs_control_port_readyfordata_from_sa;
  reg              epcs_epcs_control_port_reg_firsttransfer;
  wire             epcs_epcs_control_port_reset_n;
  reg     [  1: 0] epcs_epcs_control_port_saved_chosen_master_vector;
  reg              epcs_epcs_control_port_slavearbiterlockenable;
  wire             epcs_epcs_control_port_slavearbiterlockenable2;
  wire             epcs_epcs_control_port_unreg_firsttransfer;
  wire             epcs_epcs_control_port_waits_for_read;
  wire             epcs_epcs_control_port_waits_for_write;
  wire             epcs_epcs_control_port_write_n;
  wire    [ 31: 0] epcs_epcs_control_port_writedata;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  reg              last_cycle_cpu_0_data_master_granted_slave_epcs_epcs_control_port;
  reg              last_cycle_cpu_0_instruction_master_granted_slave_epcs_epcs_control_port;
  wire    [ 23: 0] shifted_address_to_epcs_epcs_control_port_from_cpu_0_data_master;
  wire    [ 23: 0] shifted_address_to_epcs_epcs_control_port_from_cpu_0_instruction_master;
  wire             wait_for_epcs_epcs_control_port_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~epcs_epcs_control_port_end_xfer;
    end


  assign epcs_epcs_control_port_begins_xfer = ~d1_reasons_to_wait & ((cpu_0_data_master_qualified_request_epcs_epcs_control_port | cpu_0_instruction_master_qualified_request_epcs_epcs_control_port));
  //assign epcs_epcs_control_port_readdata_from_sa = epcs_epcs_control_port_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign epcs_epcs_control_port_readdata_from_sa = epcs_epcs_control_port_readdata;

  assign cpu_0_data_master_requests_epcs_epcs_control_port = ({cpu_0_data_master_address_to_slave[23 : 11] , 11'b0} == 24'hb03800) & (cpu_0_data_master_read | cpu_0_data_master_write);
  //assign epcs_epcs_control_port_dataavailable_from_sa = epcs_epcs_control_port_dataavailable so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign epcs_epcs_control_port_dataavailable_from_sa = epcs_epcs_control_port_dataavailable;

  //assign epcs_epcs_control_port_readyfordata_from_sa = epcs_epcs_control_port_readyfordata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign epcs_epcs_control_port_readyfordata_from_sa = epcs_epcs_control_port_readyfordata;

  //epcs_epcs_control_port_arb_share_counter set values, which is an e_mux
  assign epcs_epcs_control_port_arb_share_set_values = 1;

  //epcs_epcs_control_port_non_bursting_master_requests mux, which is an e_mux
  assign epcs_epcs_control_port_non_bursting_master_requests = cpu_0_data_master_requests_epcs_epcs_control_port |
    cpu_0_instruction_master_requests_epcs_epcs_control_port |
    cpu_0_data_master_requests_epcs_epcs_control_port |
    cpu_0_instruction_master_requests_epcs_epcs_control_port;

  //epcs_epcs_control_port_any_bursting_master_saved_grant mux, which is an e_mux
  assign epcs_epcs_control_port_any_bursting_master_saved_grant = 0;

  //epcs_epcs_control_port_arb_share_counter_next_value assignment, which is an e_assign
  assign epcs_epcs_control_port_arb_share_counter_next_value = epcs_epcs_control_port_firsttransfer ? (epcs_epcs_control_port_arb_share_set_values - 1) : |epcs_epcs_control_port_arb_share_counter ? (epcs_epcs_control_port_arb_share_counter - 1) : 0;

  //epcs_epcs_control_port_allgrants all slave grants, which is an e_mux
  assign epcs_epcs_control_port_allgrants = (|epcs_epcs_control_port_grant_vector) |
    (|epcs_epcs_control_port_grant_vector) |
    (|epcs_epcs_control_port_grant_vector) |
    (|epcs_epcs_control_port_grant_vector);

  //epcs_epcs_control_port_end_xfer assignment, which is an e_assign
  assign epcs_epcs_control_port_end_xfer = ~(epcs_epcs_control_port_waits_for_read | epcs_epcs_control_port_waits_for_write);

  //end_xfer_arb_share_counter_term_epcs_epcs_control_port arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_epcs_epcs_control_port = epcs_epcs_control_port_end_xfer & (~epcs_epcs_control_port_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //epcs_epcs_control_port_arb_share_counter arbitration counter enable, which is an e_assign
  assign epcs_epcs_control_port_arb_counter_enable = (end_xfer_arb_share_counter_term_epcs_epcs_control_port & epcs_epcs_control_port_allgrants) | (end_xfer_arb_share_counter_term_epcs_epcs_control_port & ~epcs_epcs_control_port_non_bursting_master_requests);

  //epcs_epcs_control_port_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          epcs_epcs_control_port_arb_share_counter <= 0;
      else if (epcs_epcs_control_port_arb_counter_enable)
          epcs_epcs_control_port_arb_share_counter <= epcs_epcs_control_port_arb_share_counter_next_value;
    end


  //epcs_epcs_control_port_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          epcs_epcs_control_port_slavearbiterlockenable <= 0;
      else if ((|epcs_epcs_control_port_master_qreq_vector & end_xfer_arb_share_counter_term_epcs_epcs_control_port) | (end_xfer_arb_share_counter_term_epcs_epcs_control_port & ~epcs_epcs_control_port_non_bursting_master_requests))
          epcs_epcs_control_port_slavearbiterlockenable <= |epcs_epcs_control_port_arb_share_counter_next_value;
    end


  //cpu_0/data_master epcs/epcs_control_port arbiterlock, which is an e_assign
  assign cpu_0_data_master_arbiterlock = epcs_epcs_control_port_slavearbiterlockenable & cpu_0_data_master_continuerequest;

  //epcs_epcs_control_port_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign epcs_epcs_control_port_slavearbiterlockenable2 = |epcs_epcs_control_port_arb_share_counter_next_value;

  //cpu_0/data_master epcs/epcs_control_port arbiterlock2, which is an e_assign
  assign cpu_0_data_master_arbiterlock2 = epcs_epcs_control_port_slavearbiterlockenable2 & cpu_0_data_master_continuerequest;

  //cpu_0/instruction_master epcs/epcs_control_port arbiterlock, which is an e_assign
  assign cpu_0_instruction_master_arbiterlock = epcs_epcs_control_port_slavearbiterlockenable & cpu_0_instruction_master_continuerequest;

  //cpu_0/instruction_master epcs/epcs_control_port arbiterlock2, which is an e_assign
  assign cpu_0_instruction_master_arbiterlock2 = epcs_epcs_control_port_slavearbiterlockenable2 & cpu_0_instruction_master_continuerequest;

  //cpu_0/instruction_master granted epcs/epcs_control_port last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          last_cycle_cpu_0_instruction_master_granted_slave_epcs_epcs_control_port <= 0;
      else 
        last_cycle_cpu_0_instruction_master_granted_slave_epcs_epcs_control_port <= cpu_0_instruction_master_saved_grant_epcs_epcs_control_port ? 1 : (epcs_epcs_control_port_arbitration_holdoff_internal | ~cpu_0_instruction_master_requests_epcs_epcs_control_port) ? 0 : last_cycle_cpu_0_instruction_master_granted_slave_epcs_epcs_control_port;
    end


  //cpu_0_instruction_master_continuerequest continued request, which is an e_mux
  assign cpu_0_instruction_master_continuerequest = last_cycle_cpu_0_instruction_master_granted_slave_epcs_epcs_control_port & cpu_0_instruction_master_requests_epcs_epcs_control_port;

  //epcs_epcs_control_port_any_continuerequest at least one master continues requesting, which is an e_mux
  assign epcs_epcs_control_port_any_continuerequest = cpu_0_instruction_master_continuerequest |
    cpu_0_data_master_continuerequest;

  assign cpu_0_data_master_qualified_request_epcs_epcs_control_port = cpu_0_data_master_requests_epcs_epcs_control_port & ~(cpu_0_instruction_master_arbiterlock);
  //epcs_epcs_control_port_writedata mux, which is an e_mux
  assign epcs_epcs_control_port_writedata = cpu_0_data_master_writedata;

  //assign epcs_epcs_control_port_endofpacket_from_sa = epcs_epcs_control_port_endofpacket so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign epcs_epcs_control_port_endofpacket_from_sa = epcs_epcs_control_port_endofpacket;

  assign cpu_0_instruction_master_requests_epcs_epcs_control_port = (({cpu_0_instruction_master_address_to_slave[23 : 11] , 11'b0} == 24'hb03800) & (cpu_0_instruction_master_read)) & cpu_0_instruction_master_read;
  //cpu_0/data_master granted epcs/epcs_control_port last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          last_cycle_cpu_0_data_master_granted_slave_epcs_epcs_control_port <= 0;
      else 
        last_cycle_cpu_0_data_master_granted_slave_epcs_epcs_control_port <= cpu_0_data_master_saved_grant_epcs_epcs_control_port ? 1 : (epcs_epcs_control_port_arbitration_holdoff_internal | ~cpu_0_data_master_requests_epcs_epcs_control_port) ? 0 : last_cycle_cpu_0_data_master_granted_slave_epcs_epcs_control_port;
    end


  //cpu_0_data_master_continuerequest continued request, which is an e_mux
  assign cpu_0_data_master_continuerequest = last_cycle_cpu_0_data_master_granted_slave_epcs_epcs_control_port & cpu_0_data_master_requests_epcs_epcs_control_port;

  assign cpu_0_instruction_master_qualified_request_epcs_epcs_control_port = cpu_0_instruction_master_requests_epcs_epcs_control_port & ~((cpu_0_instruction_master_read & ((cpu_0_instruction_master_latency_counter != 0))) | cpu_0_data_master_arbiterlock);
  //local readdatavalid cpu_0_instruction_master_read_data_valid_epcs_epcs_control_port, which is an e_mux
  assign cpu_0_instruction_master_read_data_valid_epcs_epcs_control_port = cpu_0_instruction_master_granted_epcs_epcs_control_port & cpu_0_instruction_master_read & ~epcs_epcs_control_port_waits_for_read;

  //allow new arb cycle for epcs/epcs_control_port, which is an e_assign
  assign epcs_epcs_control_port_allow_new_arb_cycle = ~cpu_0_data_master_arbiterlock & ~cpu_0_instruction_master_arbiterlock;

  //cpu_0/instruction_master assignment into master qualified-requests vector for epcs/epcs_control_port, which is an e_assign
  assign epcs_epcs_control_port_master_qreq_vector[0] = cpu_0_instruction_master_qualified_request_epcs_epcs_control_port;

  //cpu_0/instruction_master grant epcs/epcs_control_port, which is an e_assign
  assign cpu_0_instruction_master_granted_epcs_epcs_control_port = epcs_epcs_control_port_grant_vector[0];

  //cpu_0/instruction_master saved-grant epcs/epcs_control_port, which is an e_assign
  assign cpu_0_instruction_master_saved_grant_epcs_epcs_control_port = epcs_epcs_control_port_arb_winner[0] && cpu_0_instruction_master_requests_epcs_epcs_control_port;

  //cpu_0/data_master assignment into master qualified-requests vector for epcs/epcs_control_port, which is an e_assign
  assign epcs_epcs_control_port_master_qreq_vector[1] = cpu_0_data_master_qualified_request_epcs_epcs_control_port;

  //cpu_0/data_master grant epcs/epcs_control_port, which is an e_assign
  assign cpu_0_data_master_granted_epcs_epcs_control_port = epcs_epcs_control_port_grant_vector[1];

  //cpu_0/data_master saved-grant epcs/epcs_control_port, which is an e_assign
  assign cpu_0_data_master_saved_grant_epcs_epcs_control_port = epcs_epcs_control_port_arb_winner[1] && cpu_0_data_master_requests_epcs_epcs_control_port;

  //epcs/epcs_control_port chosen-master double-vector, which is an e_assign
  assign epcs_epcs_control_port_chosen_master_double_vector = {epcs_epcs_control_port_master_qreq_vector, epcs_epcs_control_port_master_qreq_vector} & ({~epcs_epcs_control_port_master_qreq_vector, ~epcs_epcs_control_port_master_qreq_vector} + epcs_epcs_control_port_arb_addend);

  //stable onehot encoding of arb winner
  assign epcs_epcs_control_port_arb_winner = (epcs_epcs_control_port_allow_new_arb_cycle & | epcs_epcs_control_port_grant_vector) ? epcs_epcs_control_port_grant_vector : epcs_epcs_control_port_saved_chosen_master_vector;

  //saved epcs_epcs_control_port_grant_vector, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          epcs_epcs_control_port_saved_chosen_master_vector <= 0;
      else if (epcs_epcs_control_port_allow_new_arb_cycle)
          epcs_epcs_control_port_saved_chosen_master_vector <= |epcs_epcs_control_port_grant_vector ? epcs_epcs_control_port_grant_vector : epcs_epcs_control_port_saved_chosen_master_vector;
    end


  //onehot encoding of chosen master
  assign epcs_epcs_control_port_grant_vector = {(epcs_epcs_control_port_chosen_master_double_vector[1] | epcs_epcs_control_port_chosen_master_double_vector[3]),
    (epcs_epcs_control_port_chosen_master_double_vector[0] | epcs_epcs_control_port_chosen_master_double_vector[2])};

  //epcs/epcs_control_port chosen master rotated left, which is an e_assign
  assign epcs_epcs_control_port_chosen_master_rot_left = (epcs_epcs_control_port_arb_winner << 1) ? (epcs_epcs_control_port_arb_winner << 1) : 1;

  //epcs/epcs_control_port's addend for next-master-grant
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          epcs_epcs_control_port_arb_addend <= 1;
      else if (|epcs_epcs_control_port_grant_vector)
          epcs_epcs_control_port_arb_addend <= epcs_epcs_control_port_end_xfer? epcs_epcs_control_port_chosen_master_rot_left : epcs_epcs_control_port_grant_vector;
    end


  //epcs_epcs_control_port_reset_n assignment, which is an e_assign
  assign epcs_epcs_control_port_reset_n = reset_n;

  assign epcs_epcs_control_port_chipselect = cpu_0_data_master_granted_epcs_epcs_control_port | cpu_0_instruction_master_granted_epcs_epcs_control_port;
  //epcs_epcs_control_port_firsttransfer first transaction, which is an e_assign
  assign epcs_epcs_control_port_firsttransfer = epcs_epcs_control_port_begins_xfer ? epcs_epcs_control_port_unreg_firsttransfer : epcs_epcs_control_port_reg_firsttransfer;

  //epcs_epcs_control_port_unreg_firsttransfer first transaction, which is an e_assign
  assign epcs_epcs_control_port_unreg_firsttransfer = ~(epcs_epcs_control_port_slavearbiterlockenable & epcs_epcs_control_port_any_continuerequest);

  //epcs_epcs_control_port_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          epcs_epcs_control_port_reg_firsttransfer <= 1'b1;
      else if (epcs_epcs_control_port_begins_xfer)
          epcs_epcs_control_port_reg_firsttransfer <= epcs_epcs_control_port_unreg_firsttransfer;
    end


  //epcs_epcs_control_port_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign epcs_epcs_control_port_beginbursttransfer_internal = epcs_epcs_control_port_begins_xfer;

  //epcs_epcs_control_port_arbitration_holdoff_internal arbitration_holdoff, which is an e_assign
  assign epcs_epcs_control_port_arbitration_holdoff_internal = epcs_epcs_control_port_begins_xfer & epcs_epcs_control_port_firsttransfer;

  //~epcs_epcs_control_port_read_n assignment, which is an e_mux
  assign epcs_epcs_control_port_read_n = ~((cpu_0_data_master_granted_epcs_epcs_control_port & cpu_0_data_master_read) | (cpu_0_instruction_master_granted_epcs_epcs_control_port & cpu_0_instruction_master_read));

  //~epcs_epcs_control_port_write_n assignment, which is an e_mux
  assign epcs_epcs_control_port_write_n = ~(cpu_0_data_master_granted_epcs_epcs_control_port & cpu_0_data_master_write);

  assign shifted_address_to_epcs_epcs_control_port_from_cpu_0_data_master = cpu_0_data_master_address_to_slave;
  //epcs_epcs_control_port_address mux, which is an e_mux
  assign epcs_epcs_control_port_address = (cpu_0_data_master_granted_epcs_epcs_control_port)? (shifted_address_to_epcs_epcs_control_port_from_cpu_0_data_master >> 2) :
    (shifted_address_to_epcs_epcs_control_port_from_cpu_0_instruction_master >> 2);

  assign shifted_address_to_epcs_epcs_control_port_from_cpu_0_instruction_master = cpu_0_instruction_master_address_to_slave;
  //d1_epcs_epcs_control_port_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_epcs_epcs_control_port_end_xfer <= 1;
      else 
        d1_epcs_epcs_control_port_end_xfer <= epcs_epcs_control_port_end_xfer;
    end


  //epcs_epcs_control_port_waits_for_read in a cycle, which is an e_mux
  assign epcs_epcs_control_port_waits_for_read = epcs_epcs_control_port_in_a_read_cycle & epcs_epcs_control_port_begins_xfer;

  //epcs_epcs_control_port_in_a_read_cycle assignment, which is an e_assign
  assign epcs_epcs_control_port_in_a_read_cycle = (cpu_0_data_master_granted_epcs_epcs_control_port & cpu_0_data_master_read) | (cpu_0_instruction_master_granted_epcs_epcs_control_port & cpu_0_instruction_master_read);

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = epcs_epcs_control_port_in_a_read_cycle;

  //epcs_epcs_control_port_waits_for_write in a cycle, which is an e_mux
  assign epcs_epcs_control_port_waits_for_write = epcs_epcs_control_port_in_a_write_cycle & epcs_epcs_control_port_begins_xfer;

  //epcs_epcs_control_port_in_a_write_cycle assignment, which is an e_assign
  assign epcs_epcs_control_port_in_a_write_cycle = cpu_0_data_master_granted_epcs_epcs_control_port & cpu_0_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = epcs_epcs_control_port_in_a_write_cycle;

  assign wait_for_epcs_epcs_control_port_counter = 0;
  //assign epcs_epcs_control_port_irq_from_sa = epcs_epcs_control_port_irq so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign epcs_epcs_control_port_irq_from_sa = epcs_epcs_control_port_irq;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //epcs/epcs_control_port enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end


  //grant signals are active simultaneously, which is an e_process
  always @(posedge clk)
    begin
      if (cpu_0_data_master_granted_epcs_epcs_control_port + cpu_0_instruction_master_granted_epcs_epcs_control_port > 1)
        begin
          $write("%0d ns: > 1 of grant signals are active simultaneously", $time);
          $stop;
        end
    end


  //saved_grant signals are active simultaneously, which is an e_process
  always @(posedge clk)
    begin
      if (cpu_0_data_master_saved_grant_epcs_epcs_control_port + cpu_0_instruction_master_saved_grant_epcs_epcs_control_port > 1)
        begin
          $write("%0d ns: > 1 of saved_grant signals are active simultaneously", $time);
          $stop;
        end
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule


// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module jtag_uart_avalon_jtag_slave_arbitrator (
                                                // inputs:
                                                 clk,
                                                 cpu_0_data_master_address_to_slave,
                                                 cpu_0_data_master_read,
                                                 cpu_0_data_master_waitrequest,
                                                 cpu_0_data_master_write,
                                                 cpu_0_data_master_writedata,
                                                 jtag_uart_avalon_jtag_slave_dataavailable,
                                                 jtag_uart_avalon_jtag_slave_irq,
                                                 jtag_uart_avalon_jtag_slave_readdata,
                                                 jtag_uart_avalon_jtag_slave_readyfordata,
                                                 jtag_uart_avalon_jtag_slave_waitrequest,
                                                 reset_n,

                                                // outputs:
                                                 cpu_0_data_master_granted_jtag_uart_avalon_jtag_slave,
                                                 cpu_0_data_master_qualified_request_jtag_uart_avalon_jtag_slave,
                                                 cpu_0_data_master_read_data_valid_jtag_uart_avalon_jtag_slave,
                                                 cpu_0_data_master_requests_jtag_uart_avalon_jtag_slave,
                                                 d1_jtag_uart_avalon_jtag_slave_end_xfer,
                                                 jtag_uart_avalon_jtag_slave_address,
                                                 jtag_uart_avalon_jtag_slave_chipselect,
                                                 jtag_uart_avalon_jtag_slave_dataavailable_from_sa,
                                                 jtag_uart_avalon_jtag_slave_irq_from_sa,
                                                 jtag_uart_avalon_jtag_slave_read_n,
                                                 jtag_uart_avalon_jtag_slave_readdata_from_sa,
                                                 jtag_uart_avalon_jtag_slave_readyfordata_from_sa,
                                                 jtag_uart_avalon_jtag_slave_reset_n,
                                                 jtag_uart_avalon_jtag_slave_waitrequest_from_sa,
                                                 jtag_uart_avalon_jtag_slave_write_n,
                                                 jtag_uart_avalon_jtag_slave_writedata
                                              )
;

  output           cpu_0_data_master_granted_jtag_uart_avalon_jtag_slave;
  output           cpu_0_data_master_qualified_request_jtag_uart_avalon_jtag_slave;
  output           cpu_0_data_master_read_data_valid_jtag_uart_avalon_jtag_slave;
  output           cpu_0_data_master_requests_jtag_uart_avalon_jtag_slave;
  output           d1_jtag_uart_avalon_jtag_slave_end_xfer;
  output           jtag_uart_avalon_jtag_slave_address;
  output           jtag_uart_avalon_jtag_slave_chipselect;
  output           jtag_uart_avalon_jtag_slave_dataavailable_from_sa;
  output           jtag_uart_avalon_jtag_slave_irq_from_sa;
  output           jtag_uart_avalon_jtag_slave_read_n;
  output  [ 31: 0] jtag_uart_avalon_jtag_slave_readdata_from_sa;
  output           jtag_uart_avalon_jtag_slave_readyfordata_from_sa;
  output           jtag_uart_avalon_jtag_slave_reset_n;
  output           jtag_uart_avalon_jtag_slave_waitrequest_from_sa;
  output           jtag_uart_avalon_jtag_slave_write_n;
  output  [ 31: 0] jtag_uart_avalon_jtag_slave_writedata;
  input            clk;
  input   [ 23: 0] cpu_0_data_master_address_to_slave;
  input            cpu_0_data_master_read;
  input            cpu_0_data_master_waitrequest;
  input            cpu_0_data_master_write;
  input   [ 31: 0] cpu_0_data_master_writedata;
  input            jtag_uart_avalon_jtag_slave_dataavailable;
  input            jtag_uart_avalon_jtag_slave_irq;
  input   [ 31: 0] jtag_uart_avalon_jtag_slave_readdata;
  input            jtag_uart_avalon_jtag_slave_readyfordata;
  input            jtag_uart_avalon_jtag_slave_waitrequest;
  input            reset_n;

  wire             cpu_0_data_master_arbiterlock;
  wire             cpu_0_data_master_arbiterlock2;
  wire             cpu_0_data_master_continuerequest;
  wire             cpu_0_data_master_granted_jtag_uart_avalon_jtag_slave;
  wire             cpu_0_data_master_qualified_request_jtag_uart_avalon_jtag_slave;
  wire             cpu_0_data_master_read_data_valid_jtag_uart_avalon_jtag_slave;
  wire             cpu_0_data_master_requests_jtag_uart_avalon_jtag_slave;
  wire             cpu_0_data_master_saved_grant_jtag_uart_avalon_jtag_slave;
  reg              d1_jtag_uart_avalon_jtag_slave_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_jtag_uart_avalon_jtag_slave;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             jtag_uart_avalon_jtag_slave_address;
  wire             jtag_uart_avalon_jtag_slave_allgrants;
  wire             jtag_uart_avalon_jtag_slave_allow_new_arb_cycle;
  wire             jtag_uart_avalon_jtag_slave_any_bursting_master_saved_grant;
  wire             jtag_uart_avalon_jtag_slave_any_continuerequest;
  wire             jtag_uart_avalon_jtag_slave_arb_counter_enable;
  reg     [  2: 0] jtag_uart_avalon_jtag_slave_arb_share_counter;
  wire    [  2: 0] jtag_uart_avalon_jtag_slave_arb_share_counter_next_value;
  wire    [  2: 0] jtag_uart_avalon_jtag_slave_arb_share_set_values;
  wire             jtag_uart_avalon_jtag_slave_beginbursttransfer_internal;
  wire             jtag_uart_avalon_jtag_slave_begins_xfer;
  wire             jtag_uart_avalon_jtag_slave_chipselect;
  wire             jtag_uart_avalon_jtag_slave_dataavailable_from_sa;
  wire             jtag_uart_avalon_jtag_slave_end_xfer;
  wire             jtag_uart_avalon_jtag_slave_firsttransfer;
  wire             jtag_uart_avalon_jtag_slave_grant_vector;
  wire             jtag_uart_avalon_jtag_slave_in_a_read_cycle;
  wire             jtag_uart_avalon_jtag_slave_in_a_write_cycle;
  wire             jtag_uart_avalon_jtag_slave_irq_from_sa;
  wire             jtag_uart_avalon_jtag_slave_master_qreq_vector;
  wire             jtag_uart_avalon_jtag_slave_non_bursting_master_requests;
  wire             jtag_uart_avalon_jtag_slave_read_n;
  wire    [ 31: 0] jtag_uart_avalon_jtag_slave_readdata_from_sa;
  wire             jtag_uart_avalon_jtag_slave_readyfordata_from_sa;
  reg              jtag_uart_avalon_jtag_slave_reg_firsttransfer;
  wire             jtag_uart_avalon_jtag_slave_reset_n;
  reg              jtag_uart_avalon_jtag_slave_slavearbiterlockenable;
  wire             jtag_uart_avalon_jtag_slave_slavearbiterlockenable2;
  wire             jtag_uart_avalon_jtag_slave_unreg_firsttransfer;
  wire             jtag_uart_avalon_jtag_slave_waitrequest_from_sa;
  wire             jtag_uart_avalon_jtag_slave_waits_for_read;
  wire             jtag_uart_avalon_jtag_slave_waits_for_write;
  wire             jtag_uart_avalon_jtag_slave_write_n;
  wire    [ 31: 0] jtag_uart_avalon_jtag_slave_writedata;
  wire    [ 23: 0] shifted_address_to_jtag_uart_avalon_jtag_slave_from_cpu_0_data_master;
  wire             wait_for_jtag_uart_avalon_jtag_slave_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~jtag_uart_avalon_jtag_slave_end_xfer;
    end


  assign jtag_uart_avalon_jtag_slave_begins_xfer = ~d1_reasons_to_wait & ((cpu_0_data_master_qualified_request_jtag_uart_avalon_jtag_slave));
  //assign jtag_uart_avalon_jtag_slave_readdata_from_sa = jtag_uart_avalon_jtag_slave_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_readdata_from_sa = jtag_uart_avalon_jtag_slave_readdata;

  assign cpu_0_data_master_requests_jtag_uart_avalon_jtag_slave = ({cpu_0_data_master_address_to_slave[23 : 3] , 3'b0} == 24'hb04050) & (cpu_0_data_master_read | cpu_0_data_master_write);
  //assign jtag_uart_avalon_jtag_slave_dataavailable_from_sa = jtag_uart_avalon_jtag_slave_dataavailable so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_dataavailable_from_sa = jtag_uart_avalon_jtag_slave_dataavailable;

  //assign jtag_uart_avalon_jtag_slave_readyfordata_from_sa = jtag_uart_avalon_jtag_slave_readyfordata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_readyfordata_from_sa = jtag_uart_avalon_jtag_slave_readyfordata;

  //assign jtag_uart_avalon_jtag_slave_waitrequest_from_sa = jtag_uart_avalon_jtag_slave_waitrequest so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_waitrequest_from_sa = jtag_uart_avalon_jtag_slave_waitrequest;

  //jtag_uart_avalon_jtag_slave_arb_share_counter set values, which is an e_mux
  assign jtag_uart_avalon_jtag_slave_arb_share_set_values = 1;

  //jtag_uart_avalon_jtag_slave_non_bursting_master_requests mux, which is an e_mux
  assign jtag_uart_avalon_jtag_slave_non_bursting_master_requests = cpu_0_data_master_requests_jtag_uart_avalon_jtag_slave;

  //jtag_uart_avalon_jtag_slave_any_bursting_master_saved_grant mux, which is an e_mux
  assign jtag_uart_avalon_jtag_slave_any_bursting_master_saved_grant = 0;

  //jtag_uart_avalon_jtag_slave_arb_share_counter_next_value assignment, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_arb_share_counter_next_value = jtag_uart_avalon_jtag_slave_firsttransfer ? (jtag_uart_avalon_jtag_slave_arb_share_set_values - 1) : |jtag_uart_avalon_jtag_slave_arb_share_counter ? (jtag_uart_avalon_jtag_slave_arb_share_counter - 1) : 0;

  //jtag_uart_avalon_jtag_slave_allgrants all slave grants, which is an e_mux
  assign jtag_uart_avalon_jtag_slave_allgrants = |jtag_uart_avalon_jtag_slave_grant_vector;

  //jtag_uart_avalon_jtag_slave_end_xfer assignment, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_end_xfer = ~(jtag_uart_avalon_jtag_slave_waits_for_read | jtag_uart_avalon_jtag_slave_waits_for_write);

  //end_xfer_arb_share_counter_term_jtag_uart_avalon_jtag_slave arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_jtag_uart_avalon_jtag_slave = jtag_uart_avalon_jtag_slave_end_xfer & (~jtag_uart_avalon_jtag_slave_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //jtag_uart_avalon_jtag_slave_arb_share_counter arbitration counter enable, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_arb_counter_enable = (end_xfer_arb_share_counter_term_jtag_uart_avalon_jtag_slave & jtag_uart_avalon_jtag_slave_allgrants) | (end_xfer_arb_share_counter_term_jtag_uart_avalon_jtag_slave & ~jtag_uart_avalon_jtag_slave_non_bursting_master_requests);

  //jtag_uart_avalon_jtag_slave_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          jtag_uart_avalon_jtag_slave_arb_share_counter <= 0;
      else if (jtag_uart_avalon_jtag_slave_arb_counter_enable)
          jtag_uart_avalon_jtag_slave_arb_share_counter <= jtag_uart_avalon_jtag_slave_arb_share_counter_next_value;
    end


  //jtag_uart_avalon_jtag_slave_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          jtag_uart_avalon_jtag_slave_slavearbiterlockenable <= 0;
      else if ((|jtag_uart_avalon_jtag_slave_master_qreq_vector & end_xfer_arb_share_counter_term_jtag_uart_avalon_jtag_slave) | (end_xfer_arb_share_counter_term_jtag_uart_avalon_jtag_slave & ~jtag_uart_avalon_jtag_slave_non_bursting_master_requests))
          jtag_uart_avalon_jtag_slave_slavearbiterlockenable <= |jtag_uart_avalon_jtag_slave_arb_share_counter_next_value;
    end


  //cpu_0/data_master jtag_uart/avalon_jtag_slave arbiterlock, which is an e_assign
  assign cpu_0_data_master_arbiterlock = jtag_uart_avalon_jtag_slave_slavearbiterlockenable & cpu_0_data_master_continuerequest;

  //jtag_uart_avalon_jtag_slave_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_slavearbiterlockenable2 = |jtag_uart_avalon_jtag_slave_arb_share_counter_next_value;

  //cpu_0/data_master jtag_uart/avalon_jtag_slave arbiterlock2, which is an e_assign
  assign cpu_0_data_master_arbiterlock2 = jtag_uart_avalon_jtag_slave_slavearbiterlockenable2 & cpu_0_data_master_continuerequest;

  //jtag_uart_avalon_jtag_slave_any_continuerequest at least one master continues requesting, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_any_continuerequest = 1;

  //cpu_0_data_master_continuerequest continued request, which is an e_assign
  assign cpu_0_data_master_continuerequest = 1;

  assign cpu_0_data_master_qualified_request_jtag_uart_avalon_jtag_slave = cpu_0_data_master_requests_jtag_uart_avalon_jtag_slave & ~((cpu_0_data_master_read & (~cpu_0_data_master_waitrequest)) | ((~cpu_0_data_master_waitrequest) & cpu_0_data_master_write));
  //jtag_uart_avalon_jtag_slave_writedata mux, which is an e_mux
  assign jtag_uart_avalon_jtag_slave_writedata = cpu_0_data_master_writedata;

  //master is always granted when requested
  assign cpu_0_data_master_granted_jtag_uart_avalon_jtag_slave = cpu_0_data_master_qualified_request_jtag_uart_avalon_jtag_slave;

  //cpu_0/data_master saved-grant jtag_uart/avalon_jtag_slave, which is an e_assign
  assign cpu_0_data_master_saved_grant_jtag_uart_avalon_jtag_slave = cpu_0_data_master_requests_jtag_uart_avalon_jtag_slave;

  //allow new arb cycle for jtag_uart/avalon_jtag_slave, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign jtag_uart_avalon_jtag_slave_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign jtag_uart_avalon_jtag_slave_master_qreq_vector = 1;

  //jtag_uart_avalon_jtag_slave_reset_n assignment, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_reset_n = reset_n;

  assign jtag_uart_avalon_jtag_slave_chipselect = cpu_0_data_master_granted_jtag_uart_avalon_jtag_slave;
  //jtag_uart_avalon_jtag_slave_firsttransfer first transaction, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_firsttransfer = jtag_uart_avalon_jtag_slave_begins_xfer ? jtag_uart_avalon_jtag_slave_unreg_firsttransfer : jtag_uart_avalon_jtag_slave_reg_firsttransfer;

  //jtag_uart_avalon_jtag_slave_unreg_firsttransfer first transaction, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_unreg_firsttransfer = ~(jtag_uart_avalon_jtag_slave_slavearbiterlockenable & jtag_uart_avalon_jtag_slave_any_continuerequest);

  //jtag_uart_avalon_jtag_slave_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          jtag_uart_avalon_jtag_slave_reg_firsttransfer <= 1'b1;
      else if (jtag_uart_avalon_jtag_slave_begins_xfer)
          jtag_uart_avalon_jtag_slave_reg_firsttransfer <= jtag_uart_avalon_jtag_slave_unreg_firsttransfer;
    end


  //jtag_uart_avalon_jtag_slave_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_beginbursttransfer_internal = jtag_uart_avalon_jtag_slave_begins_xfer;

  //~jtag_uart_avalon_jtag_slave_read_n assignment, which is an e_mux
  assign jtag_uart_avalon_jtag_slave_read_n = ~(cpu_0_data_master_granted_jtag_uart_avalon_jtag_slave & cpu_0_data_master_read);

  //~jtag_uart_avalon_jtag_slave_write_n assignment, which is an e_mux
  assign jtag_uart_avalon_jtag_slave_write_n = ~(cpu_0_data_master_granted_jtag_uart_avalon_jtag_slave & cpu_0_data_master_write);

  assign shifted_address_to_jtag_uart_avalon_jtag_slave_from_cpu_0_data_master = cpu_0_data_master_address_to_slave;
  //jtag_uart_avalon_jtag_slave_address mux, which is an e_mux
  assign jtag_uart_avalon_jtag_slave_address = shifted_address_to_jtag_uart_avalon_jtag_slave_from_cpu_0_data_master >> 2;

  //d1_jtag_uart_avalon_jtag_slave_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_jtag_uart_avalon_jtag_slave_end_xfer <= 1;
      else 
        d1_jtag_uart_avalon_jtag_slave_end_xfer <= jtag_uart_avalon_jtag_slave_end_xfer;
    end


  //jtag_uart_avalon_jtag_slave_waits_for_read in a cycle, which is an e_mux
  assign jtag_uart_avalon_jtag_slave_waits_for_read = jtag_uart_avalon_jtag_slave_in_a_read_cycle & jtag_uart_avalon_jtag_slave_waitrequest_from_sa;

  //jtag_uart_avalon_jtag_slave_in_a_read_cycle assignment, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_in_a_read_cycle = cpu_0_data_master_granted_jtag_uart_avalon_jtag_slave & cpu_0_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = jtag_uart_avalon_jtag_slave_in_a_read_cycle;

  //jtag_uart_avalon_jtag_slave_waits_for_write in a cycle, which is an e_mux
  assign jtag_uart_avalon_jtag_slave_waits_for_write = jtag_uart_avalon_jtag_slave_in_a_write_cycle & jtag_uart_avalon_jtag_slave_waitrequest_from_sa;

  //jtag_uart_avalon_jtag_slave_in_a_write_cycle assignment, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_in_a_write_cycle = cpu_0_data_master_granted_jtag_uart_avalon_jtag_slave & cpu_0_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = jtag_uart_avalon_jtag_slave_in_a_write_cycle;

  assign wait_for_jtag_uart_avalon_jtag_slave_counter = 0;
  //assign jtag_uart_avalon_jtag_slave_irq_from_sa = jtag_uart_avalon_jtag_slave_irq so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_irq_from_sa = jtag_uart_avalon_jtag_slave_irq;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //jtag_uart/avalon_jtag_slave enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule


// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module lcd_control_slave_arbitrator (
                                      // inputs:
                                       clk,
                                       cpu_0_data_master_address_to_slave,
                                       cpu_0_data_master_byteenable,
                                       cpu_0_data_master_read,
                                       cpu_0_data_master_write,
                                       cpu_0_data_master_writedata,
                                       lcd_control_slave_readdata,
                                       reset_n,

                                      // outputs:
                                       cpu_0_data_master_granted_lcd_control_slave,
                                       cpu_0_data_master_qualified_request_lcd_control_slave,
                                       cpu_0_data_master_read_data_valid_lcd_control_slave,
                                       cpu_0_data_master_requests_lcd_control_slave,
                                       d1_lcd_control_slave_end_xfer,
                                       lcd_control_slave_address,
                                       lcd_control_slave_begintransfer,
                                       lcd_control_slave_read,
                                       lcd_control_slave_readdata_from_sa,
                                       lcd_control_slave_reset_n,
                                       lcd_control_slave_wait_counter_eq_0,
                                       lcd_control_slave_wait_counter_eq_1,
                                       lcd_control_slave_write,
                                       lcd_control_slave_writedata
                                    )
;

  output           cpu_0_data_master_granted_lcd_control_slave;
  output           cpu_0_data_master_qualified_request_lcd_control_slave;
  output           cpu_0_data_master_read_data_valid_lcd_control_slave;
  output           cpu_0_data_master_requests_lcd_control_slave;
  output           d1_lcd_control_slave_end_xfer;
  output  [  1: 0] lcd_control_slave_address;
  output           lcd_control_slave_begintransfer;
  output           lcd_control_slave_read;
  output  [  7: 0] lcd_control_slave_readdata_from_sa;
  output           lcd_control_slave_reset_n;
  output           lcd_control_slave_wait_counter_eq_0;
  output           lcd_control_slave_wait_counter_eq_1;
  output           lcd_control_slave_write;
  output  [  7: 0] lcd_control_slave_writedata;
  input            clk;
  input   [ 23: 0] cpu_0_data_master_address_to_slave;
  input   [  3: 0] cpu_0_data_master_byteenable;
  input            cpu_0_data_master_read;
  input            cpu_0_data_master_write;
  input   [ 31: 0] cpu_0_data_master_writedata;
  input   [  7: 0] lcd_control_slave_readdata;
  input            reset_n;

  wire             cpu_0_data_master_arbiterlock;
  wire             cpu_0_data_master_arbiterlock2;
  wire             cpu_0_data_master_continuerequest;
  wire             cpu_0_data_master_granted_lcd_control_slave;
  wire             cpu_0_data_master_qualified_request_lcd_control_slave;
  wire             cpu_0_data_master_read_data_valid_lcd_control_slave;
  wire             cpu_0_data_master_requests_lcd_control_slave;
  wire             cpu_0_data_master_saved_grant_lcd_control_slave;
  reg              d1_lcd_control_slave_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_lcd_control_slave;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire    [  1: 0] lcd_control_slave_address;
  wire             lcd_control_slave_allgrants;
  wire             lcd_control_slave_allow_new_arb_cycle;
  wire             lcd_control_slave_any_bursting_master_saved_grant;
  wire             lcd_control_slave_any_continuerequest;
  wire             lcd_control_slave_arb_counter_enable;
  reg     [  2: 0] lcd_control_slave_arb_share_counter;
  wire    [  2: 0] lcd_control_slave_arb_share_counter_next_value;
  wire    [  2: 0] lcd_control_slave_arb_share_set_values;
  wire             lcd_control_slave_beginbursttransfer_internal;
  wire             lcd_control_slave_begins_xfer;
  wire             lcd_control_slave_begintransfer;
  wire    [  5: 0] lcd_control_slave_counter_load_value;
  wire             lcd_control_slave_end_xfer;
  wire             lcd_control_slave_firsttransfer;
  wire             lcd_control_slave_grant_vector;
  wire             lcd_control_slave_in_a_read_cycle;
  wire             lcd_control_slave_in_a_write_cycle;
  wire             lcd_control_slave_master_qreq_vector;
  wire             lcd_control_slave_non_bursting_master_requests;
  wire             lcd_control_slave_pretend_byte_enable;
  wire             lcd_control_slave_read;
  wire    [  7: 0] lcd_control_slave_readdata_from_sa;
  reg              lcd_control_slave_reg_firsttransfer;
  wire             lcd_control_slave_reset_n;
  reg              lcd_control_slave_slavearbiterlockenable;
  wire             lcd_control_slave_slavearbiterlockenable2;
  wire             lcd_control_slave_unreg_firsttransfer;
  reg     [  5: 0] lcd_control_slave_wait_counter;
  wire             lcd_control_slave_wait_counter_eq_0;
  wire             lcd_control_slave_wait_counter_eq_1;
  wire             lcd_control_slave_waits_for_read;
  wire             lcd_control_slave_waits_for_write;
  wire             lcd_control_slave_write;
  wire    [  7: 0] lcd_control_slave_writedata;
  wire    [ 23: 0] shifted_address_to_lcd_control_slave_from_cpu_0_data_master;
  wire             wait_for_lcd_control_slave_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~lcd_control_slave_end_xfer;
    end


  assign lcd_control_slave_begins_xfer = ~d1_reasons_to_wait & ((cpu_0_data_master_qualified_request_lcd_control_slave));
  //assign lcd_control_slave_readdata_from_sa = lcd_control_slave_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign lcd_control_slave_readdata_from_sa = lcd_control_slave_readdata;

  assign cpu_0_data_master_requests_lcd_control_slave = ({cpu_0_data_master_address_to_slave[23 : 4] , 4'b0} == 24'hb04040) & (cpu_0_data_master_read | cpu_0_data_master_write);
  //lcd_control_slave_arb_share_counter set values, which is an e_mux
  assign lcd_control_slave_arb_share_set_values = 1;

  //lcd_control_slave_non_bursting_master_requests mux, which is an e_mux
  assign lcd_control_slave_non_bursting_master_requests = cpu_0_data_master_requests_lcd_control_slave;

  //lcd_control_slave_any_bursting_master_saved_grant mux, which is an e_mux
  assign lcd_control_slave_any_bursting_master_saved_grant = 0;

  //lcd_control_slave_arb_share_counter_next_value assignment, which is an e_assign
  assign lcd_control_slave_arb_share_counter_next_value = lcd_control_slave_firsttransfer ? (lcd_control_slave_arb_share_set_values - 1) : |lcd_control_slave_arb_share_counter ? (lcd_control_slave_arb_share_counter - 1) : 0;

  //lcd_control_slave_allgrants all slave grants, which is an e_mux
  assign lcd_control_slave_allgrants = |lcd_control_slave_grant_vector;

  //lcd_control_slave_end_xfer assignment, which is an e_assign
  assign lcd_control_slave_end_xfer = ~(lcd_control_slave_waits_for_read | lcd_control_slave_waits_for_write);

  //end_xfer_arb_share_counter_term_lcd_control_slave arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_lcd_control_slave = lcd_control_slave_end_xfer & (~lcd_control_slave_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //lcd_control_slave_arb_share_counter arbitration counter enable, which is an e_assign
  assign lcd_control_slave_arb_counter_enable = (end_xfer_arb_share_counter_term_lcd_control_slave & lcd_control_slave_allgrants) | (end_xfer_arb_share_counter_term_lcd_control_slave & ~lcd_control_slave_non_bursting_master_requests);

  //lcd_control_slave_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          lcd_control_slave_arb_share_counter <= 0;
      else if (lcd_control_slave_arb_counter_enable)
          lcd_control_slave_arb_share_counter <= lcd_control_slave_arb_share_counter_next_value;
    end


  //lcd_control_slave_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          lcd_control_slave_slavearbiterlockenable <= 0;
      else if ((|lcd_control_slave_master_qreq_vector & end_xfer_arb_share_counter_term_lcd_control_slave) | (end_xfer_arb_share_counter_term_lcd_control_slave & ~lcd_control_slave_non_bursting_master_requests))
          lcd_control_slave_slavearbiterlockenable <= |lcd_control_slave_arb_share_counter_next_value;
    end


  //cpu_0/data_master lcd/control_slave arbiterlock, which is an e_assign
  assign cpu_0_data_master_arbiterlock = lcd_control_slave_slavearbiterlockenable & cpu_0_data_master_continuerequest;

  //lcd_control_slave_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign lcd_control_slave_slavearbiterlockenable2 = |lcd_control_slave_arb_share_counter_next_value;

  //cpu_0/data_master lcd/control_slave arbiterlock2, which is an e_assign
  assign cpu_0_data_master_arbiterlock2 = lcd_control_slave_slavearbiterlockenable2 & cpu_0_data_master_continuerequest;

  //lcd_control_slave_any_continuerequest at least one master continues requesting, which is an e_assign
  assign lcd_control_slave_any_continuerequest = 1;

  //cpu_0_data_master_continuerequest continued request, which is an e_assign
  assign cpu_0_data_master_continuerequest = 1;

  assign cpu_0_data_master_qualified_request_lcd_control_slave = cpu_0_data_master_requests_lcd_control_slave;
  //lcd_control_slave_writedata mux, which is an e_mux
  assign lcd_control_slave_writedata = cpu_0_data_master_writedata;

  //master is always granted when requested
  assign cpu_0_data_master_granted_lcd_control_slave = cpu_0_data_master_qualified_request_lcd_control_slave;

  //cpu_0/data_master saved-grant lcd/control_slave, which is an e_assign
  assign cpu_0_data_master_saved_grant_lcd_control_slave = cpu_0_data_master_requests_lcd_control_slave;

  //allow new arb cycle for lcd/control_slave, which is an e_assign
  assign lcd_control_slave_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign lcd_control_slave_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign lcd_control_slave_master_qreq_vector = 1;

  assign lcd_control_slave_begintransfer = lcd_control_slave_begins_xfer;
  //lcd_control_slave_reset_n assignment, which is an e_assign
  assign lcd_control_slave_reset_n = reset_n;

  //lcd_control_slave_firsttransfer first transaction, which is an e_assign
  assign lcd_control_slave_firsttransfer = lcd_control_slave_begins_xfer ? lcd_control_slave_unreg_firsttransfer : lcd_control_slave_reg_firsttransfer;

  //lcd_control_slave_unreg_firsttransfer first transaction, which is an e_assign
  assign lcd_control_slave_unreg_firsttransfer = ~(lcd_control_slave_slavearbiterlockenable & lcd_control_slave_any_continuerequest);

  //lcd_control_slave_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          lcd_control_slave_reg_firsttransfer <= 1'b1;
      else if (lcd_control_slave_begins_xfer)
          lcd_control_slave_reg_firsttransfer <= lcd_control_slave_unreg_firsttransfer;
    end


  //lcd_control_slave_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign lcd_control_slave_beginbursttransfer_internal = lcd_control_slave_begins_xfer;

  //lcd_control_slave_read assignment, which is an e_mux
  assign lcd_control_slave_read = ((cpu_0_data_master_granted_lcd_control_slave & cpu_0_data_master_read))& ~lcd_control_slave_begins_xfer & (lcd_control_slave_wait_counter < 13);

  //lcd_control_slave_write assignment, which is an e_mux
  assign lcd_control_slave_write = ((cpu_0_data_master_granted_lcd_control_slave & cpu_0_data_master_write)) & ~lcd_control_slave_begins_xfer & (lcd_control_slave_wait_counter >= 13) & (lcd_control_slave_wait_counter < 26) & lcd_control_slave_pretend_byte_enable;

  assign shifted_address_to_lcd_control_slave_from_cpu_0_data_master = cpu_0_data_master_address_to_slave;
  //lcd_control_slave_address mux, which is an e_mux
  assign lcd_control_slave_address = shifted_address_to_lcd_control_slave_from_cpu_0_data_master >> 2;

  //d1_lcd_control_slave_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_lcd_control_slave_end_xfer <= 1;
      else 
        d1_lcd_control_slave_end_xfer <= lcd_control_slave_end_xfer;
    end


  //lcd_control_slave_wait_counter_eq_1 assignment, which is an e_assign
  assign lcd_control_slave_wait_counter_eq_1 = lcd_control_slave_wait_counter == 1;

  //lcd_control_slave_waits_for_read in a cycle, which is an e_mux
  assign lcd_control_slave_waits_for_read = lcd_control_slave_in_a_read_cycle & wait_for_lcd_control_slave_counter;

  //lcd_control_slave_in_a_read_cycle assignment, which is an e_assign
  assign lcd_control_slave_in_a_read_cycle = cpu_0_data_master_granted_lcd_control_slave & cpu_0_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = lcd_control_slave_in_a_read_cycle;

  //lcd_control_slave_waits_for_write in a cycle, which is an e_mux
  assign lcd_control_slave_waits_for_write = lcd_control_slave_in_a_write_cycle & wait_for_lcd_control_slave_counter;

  //lcd_control_slave_in_a_write_cycle assignment, which is an e_assign
  assign lcd_control_slave_in_a_write_cycle = cpu_0_data_master_granted_lcd_control_slave & cpu_0_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = lcd_control_slave_in_a_write_cycle;

  assign lcd_control_slave_wait_counter_eq_0 = lcd_control_slave_wait_counter == 0;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          lcd_control_slave_wait_counter <= 0;
      else 
        lcd_control_slave_wait_counter <= lcd_control_slave_counter_load_value;
    end


  assign lcd_control_slave_counter_load_value = ((lcd_control_slave_in_a_read_cycle & lcd_control_slave_begins_xfer))? 24 :
    ((lcd_control_slave_in_a_write_cycle & lcd_control_slave_begins_xfer))? 37 :
    (~lcd_control_slave_wait_counter_eq_0)? lcd_control_slave_wait_counter - 1 :
    0;

  assign wait_for_lcd_control_slave_counter = lcd_control_slave_begins_xfer | ~lcd_control_slave_wait_counter_eq_0;
  //lcd_control_slave_pretend_byte_enable byte enable port mux, which is an e_mux
  assign lcd_control_slave_pretend_byte_enable = (cpu_0_data_master_granted_lcd_control_slave)? cpu_0_data_master_byteenable :
    -1;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //lcd/control_slave enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule


// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module onchip_memory2_s1_arbitrator (
                                      // inputs:
                                       clk,
                                       cpu_0_data_master_address_to_slave,
                                       cpu_0_data_master_byteenable,
                                       cpu_0_data_master_read,
                                       cpu_0_data_master_waitrequest,
                                       cpu_0_data_master_write,
                                       cpu_0_data_master_writedata,
                                       cpu_0_instruction_master_address_to_slave,
                                       cpu_0_instruction_master_latency_counter,
                                       cpu_0_instruction_master_read,
                                       onchip_memory2_s1_readdata,
                                       reset_n,

                                      // outputs:
                                       cpu_0_data_master_granted_onchip_memory2_s1,
                                       cpu_0_data_master_qualified_request_onchip_memory2_s1,
                                       cpu_0_data_master_read_data_valid_onchip_memory2_s1,
                                       cpu_0_data_master_requests_onchip_memory2_s1,
                                       cpu_0_instruction_master_granted_onchip_memory2_s1,
                                       cpu_0_instruction_master_qualified_request_onchip_memory2_s1,
                                       cpu_0_instruction_master_read_data_valid_onchip_memory2_s1,
                                       cpu_0_instruction_master_requests_onchip_memory2_s1,
                                       d1_onchip_memory2_s1_end_xfer,
                                       onchip_memory2_s1_address,
                                       onchip_memory2_s1_byteenable,
                                       onchip_memory2_s1_chipselect,
                                       onchip_memory2_s1_clken,
                                       onchip_memory2_s1_readdata_from_sa,
                                       onchip_memory2_s1_reset,
                                       onchip_memory2_s1_write,
                                       onchip_memory2_s1_writedata,
                                       registered_cpu_0_data_master_read_data_valid_onchip_memory2_s1
                                    )
;

  output           cpu_0_data_master_granted_onchip_memory2_s1;
  output           cpu_0_data_master_qualified_request_onchip_memory2_s1;
  output           cpu_0_data_master_read_data_valid_onchip_memory2_s1;
  output           cpu_0_data_master_requests_onchip_memory2_s1;
  output           cpu_0_instruction_master_granted_onchip_memory2_s1;
  output           cpu_0_instruction_master_qualified_request_onchip_memory2_s1;
  output           cpu_0_instruction_master_read_data_valid_onchip_memory2_s1;
  output           cpu_0_instruction_master_requests_onchip_memory2_s1;
  output           d1_onchip_memory2_s1_end_xfer;
  output  [  9: 0] onchip_memory2_s1_address;
  output  [  3: 0] onchip_memory2_s1_byteenable;
  output           onchip_memory2_s1_chipselect;
  output           onchip_memory2_s1_clken;
  output  [ 31: 0] onchip_memory2_s1_readdata_from_sa;
  output           onchip_memory2_s1_reset;
  output           onchip_memory2_s1_write;
  output  [ 31: 0] onchip_memory2_s1_writedata;
  output           registered_cpu_0_data_master_read_data_valid_onchip_memory2_s1;
  input            clk;
  input   [ 23: 0] cpu_0_data_master_address_to_slave;
  input   [  3: 0] cpu_0_data_master_byteenable;
  input            cpu_0_data_master_read;
  input            cpu_0_data_master_waitrequest;
  input            cpu_0_data_master_write;
  input   [ 31: 0] cpu_0_data_master_writedata;
  input   [ 23: 0] cpu_0_instruction_master_address_to_slave;
  input   [  1: 0] cpu_0_instruction_master_latency_counter;
  input            cpu_0_instruction_master_read;
  input   [ 31: 0] onchip_memory2_s1_readdata;
  input            reset_n;

  wire             cpu_0_data_master_arbiterlock;
  wire             cpu_0_data_master_arbiterlock2;
  wire             cpu_0_data_master_continuerequest;
  wire             cpu_0_data_master_granted_onchip_memory2_s1;
  wire             cpu_0_data_master_qualified_request_onchip_memory2_s1;
  wire             cpu_0_data_master_read_data_valid_onchip_memory2_s1;
  reg              cpu_0_data_master_read_data_valid_onchip_memory2_s1_shift_register;
  wire             cpu_0_data_master_read_data_valid_onchip_memory2_s1_shift_register_in;
  wire             cpu_0_data_master_requests_onchip_memory2_s1;
  wire             cpu_0_data_master_saved_grant_onchip_memory2_s1;
  wire             cpu_0_instruction_master_arbiterlock;
  wire             cpu_0_instruction_master_arbiterlock2;
  wire             cpu_0_instruction_master_continuerequest;
  wire             cpu_0_instruction_master_granted_onchip_memory2_s1;
  wire             cpu_0_instruction_master_qualified_request_onchip_memory2_s1;
  wire             cpu_0_instruction_master_read_data_valid_onchip_memory2_s1;
  reg              cpu_0_instruction_master_read_data_valid_onchip_memory2_s1_shift_register;
  wire             cpu_0_instruction_master_read_data_valid_onchip_memory2_s1_shift_register_in;
  wire             cpu_0_instruction_master_requests_onchip_memory2_s1;
  wire             cpu_0_instruction_master_saved_grant_onchip_memory2_s1;
  reg              d1_onchip_memory2_s1_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_onchip_memory2_s1;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  reg              last_cycle_cpu_0_data_master_granted_slave_onchip_memory2_s1;
  reg              last_cycle_cpu_0_instruction_master_granted_slave_onchip_memory2_s1;
  wire    [  9: 0] onchip_memory2_s1_address;
  wire             onchip_memory2_s1_allgrants;
  wire             onchip_memory2_s1_allow_new_arb_cycle;
  wire             onchip_memory2_s1_any_bursting_master_saved_grant;
  wire             onchip_memory2_s1_any_continuerequest;
  reg     [  1: 0] onchip_memory2_s1_arb_addend;
  wire             onchip_memory2_s1_arb_counter_enable;
  reg     [  2: 0] onchip_memory2_s1_arb_share_counter;
  wire    [  2: 0] onchip_memory2_s1_arb_share_counter_next_value;
  wire    [  2: 0] onchip_memory2_s1_arb_share_set_values;
  wire    [  1: 0] onchip_memory2_s1_arb_winner;
  wire             onchip_memory2_s1_arbitration_holdoff_internal;
  wire             onchip_memory2_s1_beginbursttransfer_internal;
  wire             onchip_memory2_s1_begins_xfer;
  wire    [  3: 0] onchip_memory2_s1_byteenable;
  wire             onchip_memory2_s1_chipselect;
  wire    [  3: 0] onchip_memory2_s1_chosen_master_double_vector;
  wire    [  1: 0] onchip_memory2_s1_chosen_master_rot_left;
  wire             onchip_memory2_s1_clken;
  wire             onchip_memory2_s1_end_xfer;
  wire             onchip_memory2_s1_firsttransfer;
  wire    [  1: 0] onchip_memory2_s1_grant_vector;
  wire             onchip_memory2_s1_in_a_read_cycle;
  wire             onchip_memory2_s1_in_a_write_cycle;
  wire    [  1: 0] onchip_memory2_s1_master_qreq_vector;
  wire             onchip_memory2_s1_non_bursting_master_requests;
  wire    [ 31: 0] onchip_memory2_s1_readdata_from_sa;
  reg              onchip_memory2_s1_reg_firsttransfer;
  wire             onchip_memory2_s1_reset;
  reg     [  1: 0] onchip_memory2_s1_saved_chosen_master_vector;
  reg              onchip_memory2_s1_slavearbiterlockenable;
  wire             onchip_memory2_s1_slavearbiterlockenable2;
  wire             onchip_memory2_s1_unreg_firsttransfer;
  wire             onchip_memory2_s1_waits_for_read;
  wire             onchip_memory2_s1_waits_for_write;
  wire             onchip_memory2_s1_write;
  wire    [ 31: 0] onchip_memory2_s1_writedata;
  wire             p1_cpu_0_data_master_read_data_valid_onchip_memory2_s1_shift_register;
  wire             p1_cpu_0_instruction_master_read_data_valid_onchip_memory2_s1_shift_register;
  wire             registered_cpu_0_data_master_read_data_valid_onchip_memory2_s1;
  wire    [ 23: 0] shifted_address_to_onchip_memory2_s1_from_cpu_0_data_master;
  wire    [ 23: 0] shifted_address_to_onchip_memory2_s1_from_cpu_0_instruction_master;
  wire             wait_for_onchip_memory2_s1_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~onchip_memory2_s1_end_xfer;
    end


  assign onchip_memory2_s1_begins_xfer = ~d1_reasons_to_wait & ((cpu_0_data_master_qualified_request_onchip_memory2_s1 | cpu_0_instruction_master_qualified_request_onchip_memory2_s1));
  //assign onchip_memory2_s1_readdata_from_sa = onchip_memory2_s1_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign onchip_memory2_s1_readdata_from_sa = onchip_memory2_s1_readdata;

  assign cpu_0_data_master_requests_onchip_memory2_s1 = ({cpu_0_data_master_address_to_slave[23 : 12] , 12'b0} == 24'hb01000) & (cpu_0_data_master_read | cpu_0_data_master_write);
  //registered rdv signal_name registered_cpu_0_data_master_read_data_valid_onchip_memory2_s1 assignment, which is an e_assign
  assign registered_cpu_0_data_master_read_data_valid_onchip_memory2_s1 = cpu_0_data_master_read_data_valid_onchip_memory2_s1_shift_register_in;

  //onchip_memory2_s1_arb_share_counter set values, which is an e_mux
  assign onchip_memory2_s1_arb_share_set_values = 1;

  //onchip_memory2_s1_non_bursting_master_requests mux, which is an e_mux
  assign onchip_memory2_s1_non_bursting_master_requests = cpu_0_data_master_requests_onchip_memory2_s1 |
    cpu_0_instruction_master_requests_onchip_memory2_s1 |
    cpu_0_data_master_requests_onchip_memory2_s1 |
    cpu_0_instruction_master_requests_onchip_memory2_s1;

  //onchip_memory2_s1_any_bursting_master_saved_grant mux, which is an e_mux
  assign onchip_memory2_s1_any_bursting_master_saved_grant = 0;

  //onchip_memory2_s1_arb_share_counter_next_value assignment, which is an e_assign
  assign onchip_memory2_s1_arb_share_counter_next_value = onchip_memory2_s1_firsttransfer ? (onchip_memory2_s1_arb_share_set_values - 1) : |onchip_memory2_s1_arb_share_counter ? (onchip_memory2_s1_arb_share_counter - 1) : 0;

  //onchip_memory2_s1_allgrants all slave grants, which is an e_mux
  assign onchip_memory2_s1_allgrants = (|onchip_memory2_s1_grant_vector) |
    (|onchip_memory2_s1_grant_vector) |
    (|onchip_memory2_s1_grant_vector) |
    (|onchip_memory2_s1_grant_vector);

  //onchip_memory2_s1_end_xfer assignment, which is an e_assign
  assign onchip_memory2_s1_end_xfer = ~(onchip_memory2_s1_waits_for_read | onchip_memory2_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_onchip_memory2_s1 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_onchip_memory2_s1 = onchip_memory2_s1_end_xfer & (~onchip_memory2_s1_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //onchip_memory2_s1_arb_share_counter arbitration counter enable, which is an e_assign
  assign onchip_memory2_s1_arb_counter_enable = (end_xfer_arb_share_counter_term_onchip_memory2_s1 & onchip_memory2_s1_allgrants) | (end_xfer_arb_share_counter_term_onchip_memory2_s1 & ~onchip_memory2_s1_non_bursting_master_requests);

  //onchip_memory2_s1_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          onchip_memory2_s1_arb_share_counter <= 0;
      else if (onchip_memory2_s1_arb_counter_enable)
          onchip_memory2_s1_arb_share_counter <= onchip_memory2_s1_arb_share_counter_next_value;
    end


  //onchip_memory2_s1_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          onchip_memory2_s1_slavearbiterlockenable <= 0;
      else if ((|onchip_memory2_s1_master_qreq_vector & end_xfer_arb_share_counter_term_onchip_memory2_s1) | (end_xfer_arb_share_counter_term_onchip_memory2_s1 & ~onchip_memory2_s1_non_bursting_master_requests))
          onchip_memory2_s1_slavearbiterlockenable <= |onchip_memory2_s1_arb_share_counter_next_value;
    end


  //cpu_0/data_master onchip_memory2/s1 arbiterlock, which is an e_assign
  assign cpu_0_data_master_arbiterlock = onchip_memory2_s1_slavearbiterlockenable & cpu_0_data_master_continuerequest;

  //onchip_memory2_s1_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign onchip_memory2_s1_slavearbiterlockenable2 = |onchip_memory2_s1_arb_share_counter_next_value;

  //cpu_0/data_master onchip_memory2/s1 arbiterlock2, which is an e_assign
  assign cpu_0_data_master_arbiterlock2 = onchip_memory2_s1_slavearbiterlockenable2 & cpu_0_data_master_continuerequest;

  //cpu_0/instruction_master onchip_memory2/s1 arbiterlock, which is an e_assign
  assign cpu_0_instruction_master_arbiterlock = onchip_memory2_s1_slavearbiterlockenable & cpu_0_instruction_master_continuerequest;

  //cpu_0/instruction_master onchip_memory2/s1 arbiterlock2, which is an e_assign
  assign cpu_0_instruction_master_arbiterlock2 = onchip_memory2_s1_slavearbiterlockenable2 & cpu_0_instruction_master_continuerequest;

  //cpu_0/instruction_master granted onchip_memory2/s1 last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          last_cycle_cpu_0_instruction_master_granted_slave_onchip_memory2_s1 <= 0;
      else 
        last_cycle_cpu_0_instruction_master_granted_slave_onchip_memory2_s1 <= cpu_0_instruction_master_saved_grant_onchip_memory2_s1 ? 1 : (onchip_memory2_s1_arbitration_holdoff_internal | ~cpu_0_instruction_master_requests_onchip_memory2_s1) ? 0 : last_cycle_cpu_0_instruction_master_granted_slave_onchip_memory2_s1;
    end


  //cpu_0_instruction_master_continuerequest continued request, which is an e_mux
  assign cpu_0_instruction_master_continuerequest = last_cycle_cpu_0_instruction_master_granted_slave_onchip_memory2_s1 & cpu_0_instruction_master_requests_onchip_memory2_s1;

  //onchip_memory2_s1_any_continuerequest at least one master continues requesting, which is an e_mux
  assign onchip_memory2_s1_any_continuerequest = cpu_0_instruction_master_continuerequest |
    cpu_0_data_master_continuerequest;

  assign cpu_0_data_master_qualified_request_onchip_memory2_s1 = cpu_0_data_master_requests_onchip_memory2_s1 & ~((cpu_0_data_master_read & ((|cpu_0_data_master_read_data_valid_onchip_memory2_s1_shift_register))) | ((~cpu_0_data_master_waitrequest) & cpu_0_data_master_write) | cpu_0_instruction_master_arbiterlock);
  //cpu_0_data_master_read_data_valid_onchip_memory2_s1_shift_register_in mux for readlatency shift register, which is an e_mux
  assign cpu_0_data_master_read_data_valid_onchip_memory2_s1_shift_register_in = cpu_0_data_master_granted_onchip_memory2_s1 & cpu_0_data_master_read & ~onchip_memory2_s1_waits_for_read & ~(|cpu_0_data_master_read_data_valid_onchip_memory2_s1_shift_register);

  //shift register p1 cpu_0_data_master_read_data_valid_onchip_memory2_s1_shift_register in if flush, otherwise shift left, which is an e_mux
  assign p1_cpu_0_data_master_read_data_valid_onchip_memory2_s1_shift_register = {cpu_0_data_master_read_data_valid_onchip_memory2_s1_shift_register, cpu_0_data_master_read_data_valid_onchip_memory2_s1_shift_register_in};

  //cpu_0_data_master_read_data_valid_onchip_memory2_s1_shift_register for remembering which master asked for a fixed latency read, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_0_data_master_read_data_valid_onchip_memory2_s1_shift_register <= 0;
      else 
        cpu_0_data_master_read_data_valid_onchip_memory2_s1_shift_register <= p1_cpu_0_data_master_read_data_valid_onchip_memory2_s1_shift_register;
    end


  //local readdatavalid cpu_0_data_master_read_data_valid_onchip_memory2_s1, which is an e_mux
  assign cpu_0_data_master_read_data_valid_onchip_memory2_s1 = cpu_0_data_master_read_data_valid_onchip_memory2_s1_shift_register;

  //onchip_memory2_s1_writedata mux, which is an e_mux
  assign onchip_memory2_s1_writedata = cpu_0_data_master_writedata;

  //mux onchip_memory2_s1_clken, which is an e_mux
  assign onchip_memory2_s1_clken = 1'b1;

  assign cpu_0_instruction_master_requests_onchip_memory2_s1 = (({cpu_0_instruction_master_address_to_slave[23 : 12] , 12'b0} == 24'hb01000) & (cpu_0_instruction_master_read)) & cpu_0_instruction_master_read;
  //cpu_0/data_master granted onchip_memory2/s1 last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          last_cycle_cpu_0_data_master_granted_slave_onchip_memory2_s1 <= 0;
      else 
        last_cycle_cpu_0_data_master_granted_slave_onchip_memory2_s1 <= cpu_0_data_master_saved_grant_onchip_memory2_s1 ? 1 : (onchip_memory2_s1_arbitration_holdoff_internal | ~cpu_0_data_master_requests_onchip_memory2_s1) ? 0 : last_cycle_cpu_0_data_master_granted_slave_onchip_memory2_s1;
    end


  //cpu_0_data_master_continuerequest continued request, which is an e_mux
  assign cpu_0_data_master_continuerequest = last_cycle_cpu_0_data_master_granted_slave_onchip_memory2_s1 & cpu_0_data_master_requests_onchip_memory2_s1;

  assign cpu_0_instruction_master_qualified_request_onchip_memory2_s1 = cpu_0_instruction_master_requests_onchip_memory2_s1 & ~((cpu_0_instruction_master_read & ((1 < cpu_0_instruction_master_latency_counter))) | cpu_0_data_master_arbiterlock);
  //cpu_0_instruction_master_read_data_valid_onchip_memory2_s1_shift_register_in mux for readlatency shift register, which is an e_mux
  assign cpu_0_instruction_master_read_data_valid_onchip_memory2_s1_shift_register_in = cpu_0_instruction_master_granted_onchip_memory2_s1 & cpu_0_instruction_master_read & ~onchip_memory2_s1_waits_for_read;

  //shift register p1 cpu_0_instruction_master_read_data_valid_onchip_memory2_s1_shift_register in if flush, otherwise shift left, which is an e_mux
  assign p1_cpu_0_instruction_master_read_data_valid_onchip_memory2_s1_shift_register = {cpu_0_instruction_master_read_data_valid_onchip_memory2_s1_shift_register, cpu_0_instruction_master_read_data_valid_onchip_memory2_s1_shift_register_in};

  //cpu_0_instruction_master_read_data_valid_onchip_memory2_s1_shift_register for remembering which master asked for a fixed latency read, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_0_instruction_master_read_data_valid_onchip_memory2_s1_shift_register <= 0;
      else 
        cpu_0_instruction_master_read_data_valid_onchip_memory2_s1_shift_register <= p1_cpu_0_instruction_master_read_data_valid_onchip_memory2_s1_shift_register;
    end


  //local readdatavalid cpu_0_instruction_master_read_data_valid_onchip_memory2_s1, which is an e_mux
  assign cpu_0_instruction_master_read_data_valid_onchip_memory2_s1 = cpu_0_instruction_master_read_data_valid_onchip_memory2_s1_shift_register;

  //allow new arb cycle for onchip_memory2/s1, which is an e_assign
  assign onchip_memory2_s1_allow_new_arb_cycle = ~cpu_0_data_master_arbiterlock & ~cpu_0_instruction_master_arbiterlock;

  //cpu_0/instruction_master assignment into master qualified-requests vector for onchip_memory2/s1, which is an e_assign
  assign onchip_memory2_s1_master_qreq_vector[0] = cpu_0_instruction_master_qualified_request_onchip_memory2_s1;

  //cpu_0/instruction_master grant onchip_memory2/s1, which is an e_assign
  assign cpu_0_instruction_master_granted_onchip_memory2_s1 = onchip_memory2_s1_grant_vector[0];

  //cpu_0/instruction_master saved-grant onchip_memory2/s1, which is an e_assign
  assign cpu_0_instruction_master_saved_grant_onchip_memory2_s1 = onchip_memory2_s1_arb_winner[0] && cpu_0_instruction_master_requests_onchip_memory2_s1;

  //cpu_0/data_master assignment into master qualified-requests vector for onchip_memory2/s1, which is an e_assign
  assign onchip_memory2_s1_master_qreq_vector[1] = cpu_0_data_master_qualified_request_onchip_memory2_s1;

  //cpu_0/data_master grant onchip_memory2/s1, which is an e_assign
  assign cpu_0_data_master_granted_onchip_memory2_s1 = onchip_memory2_s1_grant_vector[1];

  //cpu_0/data_master saved-grant onchip_memory2/s1, which is an e_assign
  assign cpu_0_data_master_saved_grant_onchip_memory2_s1 = onchip_memory2_s1_arb_winner[1] && cpu_0_data_master_requests_onchip_memory2_s1;

  //onchip_memory2/s1 chosen-master double-vector, which is an e_assign
  assign onchip_memory2_s1_chosen_master_double_vector = {onchip_memory2_s1_master_qreq_vector, onchip_memory2_s1_master_qreq_vector} & ({~onchip_memory2_s1_master_qreq_vector, ~onchip_memory2_s1_master_qreq_vector} + onchip_memory2_s1_arb_addend);

  //stable onehot encoding of arb winner
  assign onchip_memory2_s1_arb_winner = (onchip_memory2_s1_allow_new_arb_cycle & | onchip_memory2_s1_grant_vector) ? onchip_memory2_s1_grant_vector : onchip_memory2_s1_saved_chosen_master_vector;

  //saved onchip_memory2_s1_grant_vector, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          onchip_memory2_s1_saved_chosen_master_vector <= 0;
      else if (onchip_memory2_s1_allow_new_arb_cycle)
          onchip_memory2_s1_saved_chosen_master_vector <= |onchip_memory2_s1_grant_vector ? onchip_memory2_s1_grant_vector : onchip_memory2_s1_saved_chosen_master_vector;
    end


  //onehot encoding of chosen master
  assign onchip_memory2_s1_grant_vector = {(onchip_memory2_s1_chosen_master_double_vector[1] | onchip_memory2_s1_chosen_master_double_vector[3]),
    (onchip_memory2_s1_chosen_master_double_vector[0] | onchip_memory2_s1_chosen_master_double_vector[2])};

  //onchip_memory2/s1 chosen master rotated left, which is an e_assign
  assign onchip_memory2_s1_chosen_master_rot_left = (onchip_memory2_s1_arb_winner << 1) ? (onchip_memory2_s1_arb_winner << 1) : 1;

  //onchip_memory2/s1's addend for next-master-grant
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          onchip_memory2_s1_arb_addend <= 1;
      else if (|onchip_memory2_s1_grant_vector)
          onchip_memory2_s1_arb_addend <= onchip_memory2_s1_end_xfer? onchip_memory2_s1_chosen_master_rot_left : onchip_memory2_s1_grant_vector;
    end


  //~onchip_memory2_s1_reset assignment, which is an e_assign
  assign onchip_memory2_s1_reset = ~reset_n;

  assign onchip_memory2_s1_chipselect = cpu_0_data_master_granted_onchip_memory2_s1 | cpu_0_instruction_master_granted_onchip_memory2_s1;
  //onchip_memory2_s1_firsttransfer first transaction, which is an e_assign
  assign onchip_memory2_s1_firsttransfer = onchip_memory2_s1_begins_xfer ? onchip_memory2_s1_unreg_firsttransfer : onchip_memory2_s1_reg_firsttransfer;

  //onchip_memory2_s1_unreg_firsttransfer first transaction, which is an e_assign
  assign onchip_memory2_s1_unreg_firsttransfer = ~(onchip_memory2_s1_slavearbiterlockenable & onchip_memory2_s1_any_continuerequest);

  //onchip_memory2_s1_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          onchip_memory2_s1_reg_firsttransfer <= 1'b1;
      else if (onchip_memory2_s1_begins_xfer)
          onchip_memory2_s1_reg_firsttransfer <= onchip_memory2_s1_unreg_firsttransfer;
    end


  //onchip_memory2_s1_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign onchip_memory2_s1_beginbursttransfer_internal = onchip_memory2_s1_begins_xfer;

  //onchip_memory2_s1_arbitration_holdoff_internal arbitration_holdoff, which is an e_assign
  assign onchip_memory2_s1_arbitration_holdoff_internal = onchip_memory2_s1_begins_xfer & onchip_memory2_s1_firsttransfer;

  //onchip_memory2_s1_write assignment, which is an e_mux
  assign onchip_memory2_s1_write = cpu_0_data_master_granted_onchip_memory2_s1 & cpu_0_data_master_write;

  assign shifted_address_to_onchip_memory2_s1_from_cpu_0_data_master = cpu_0_data_master_address_to_slave;
  //onchip_memory2_s1_address mux, which is an e_mux
  assign onchip_memory2_s1_address = (cpu_0_data_master_granted_onchip_memory2_s1)? (shifted_address_to_onchip_memory2_s1_from_cpu_0_data_master >> 2) :
    (shifted_address_to_onchip_memory2_s1_from_cpu_0_instruction_master >> 2);

  assign shifted_address_to_onchip_memory2_s1_from_cpu_0_instruction_master = cpu_0_instruction_master_address_to_slave;
  //d1_onchip_memory2_s1_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_onchip_memory2_s1_end_xfer <= 1;
      else 
        d1_onchip_memory2_s1_end_xfer <= onchip_memory2_s1_end_xfer;
    end


  //onchip_memory2_s1_waits_for_read in a cycle, which is an e_mux
  assign onchip_memory2_s1_waits_for_read = onchip_memory2_s1_in_a_read_cycle & 0;

  //onchip_memory2_s1_in_a_read_cycle assignment, which is an e_assign
  assign onchip_memory2_s1_in_a_read_cycle = (cpu_0_data_master_granted_onchip_memory2_s1 & cpu_0_data_master_read) | (cpu_0_instruction_master_granted_onchip_memory2_s1 & cpu_0_instruction_master_read);

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = onchip_memory2_s1_in_a_read_cycle;

  //onchip_memory2_s1_waits_for_write in a cycle, which is an e_mux
  assign onchip_memory2_s1_waits_for_write = onchip_memory2_s1_in_a_write_cycle & 0;

  //onchip_memory2_s1_in_a_write_cycle assignment, which is an e_assign
  assign onchip_memory2_s1_in_a_write_cycle = cpu_0_data_master_granted_onchip_memory2_s1 & cpu_0_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = onchip_memory2_s1_in_a_write_cycle;

  assign wait_for_onchip_memory2_s1_counter = 0;
  //onchip_memory2_s1_byteenable byte enable port mux, which is an e_mux
  assign onchip_memory2_s1_byteenable = (cpu_0_data_master_granted_onchip_memory2_s1)? cpu_0_data_master_byteenable :
    -1;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //onchip_memory2/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end


  //grant signals are active simultaneously, which is an e_process
  always @(posedge clk)
    begin
      if (cpu_0_data_master_granted_onchip_memory2_s1 + cpu_0_instruction_master_granted_onchip_memory2_s1 > 1)
        begin
          $write("%0d ns: > 1 of grant signals are active simultaneously", $time);
          $stop;
        end
    end


  //saved_grant signals are active simultaneously, which is an e_process
  always @(posedge clk)
    begin
      if (cpu_0_data_master_saved_grant_onchip_memory2_s1 + cpu_0_instruction_master_saved_grant_onchip_memory2_s1 > 1)
        begin
          $write("%0d ns: > 1 of saved_grant signals are active simultaneously", $time);
          $stop;
        end
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule


// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module sram_avalon_slave_0_arbitrator (
                                        // inputs:
                                         clk,
                                         cpu_0_data_master_address_to_slave,
                                         cpu_0_data_master_byteenable,
                                         cpu_0_data_master_dbs_address,
                                         cpu_0_data_master_dbs_write_16,
                                         cpu_0_data_master_no_byte_enables_and_last_term,
                                         cpu_0_data_master_read,
                                         cpu_0_data_master_write,
                                         cpu_0_instruction_master_address_to_slave,
                                         cpu_0_instruction_master_dbs_address,
                                         cpu_0_instruction_master_latency_counter,
                                         cpu_0_instruction_master_read,
                                         reset_n,
                                         sram_avalon_slave_0_readdata,

                                        // outputs:
                                         cpu_0_data_master_byteenable_sram_avalon_slave_0,
                                         cpu_0_data_master_granted_sram_avalon_slave_0,
                                         cpu_0_data_master_qualified_request_sram_avalon_slave_0,
                                         cpu_0_data_master_read_data_valid_sram_avalon_slave_0,
                                         cpu_0_data_master_requests_sram_avalon_slave_0,
                                         cpu_0_instruction_master_granted_sram_avalon_slave_0,
                                         cpu_0_instruction_master_qualified_request_sram_avalon_slave_0,
                                         cpu_0_instruction_master_read_data_valid_sram_avalon_slave_0,
                                         cpu_0_instruction_master_requests_sram_avalon_slave_0,
                                         d1_sram_avalon_slave_0_end_xfer,
                                         sram_avalon_slave_0_address,
                                         sram_avalon_slave_0_byteenable_n,
                                         sram_avalon_slave_0_chipselect_n,
                                         sram_avalon_slave_0_read_n,
                                         sram_avalon_slave_0_readdata_from_sa,
                                         sram_avalon_slave_0_reset_n,
                                         sram_avalon_slave_0_wait_counter_eq_0,
                                         sram_avalon_slave_0_write_n,
                                         sram_avalon_slave_0_writedata
                                      )
;

  output  [  1: 0] cpu_0_data_master_byteenable_sram_avalon_slave_0;
  output           cpu_0_data_master_granted_sram_avalon_slave_0;
  output           cpu_0_data_master_qualified_request_sram_avalon_slave_0;
  output           cpu_0_data_master_read_data_valid_sram_avalon_slave_0;
  output           cpu_0_data_master_requests_sram_avalon_slave_0;
  output           cpu_0_instruction_master_granted_sram_avalon_slave_0;
  output           cpu_0_instruction_master_qualified_request_sram_avalon_slave_0;
  output           cpu_0_instruction_master_read_data_valid_sram_avalon_slave_0;
  output           cpu_0_instruction_master_requests_sram_avalon_slave_0;
  output           d1_sram_avalon_slave_0_end_xfer;
  output  [ 17: 0] sram_avalon_slave_0_address;
  output  [  1: 0] sram_avalon_slave_0_byteenable_n;
  output           sram_avalon_slave_0_chipselect_n;
  output           sram_avalon_slave_0_read_n;
  output  [ 15: 0] sram_avalon_slave_0_readdata_from_sa;
  output           sram_avalon_slave_0_reset_n;
  output           sram_avalon_slave_0_wait_counter_eq_0;
  output           sram_avalon_slave_0_write_n;
  output  [ 15: 0] sram_avalon_slave_0_writedata;
  input            clk;
  input   [ 23: 0] cpu_0_data_master_address_to_slave;
  input   [  3: 0] cpu_0_data_master_byteenable;
  input   [  1: 0] cpu_0_data_master_dbs_address;
  input   [ 15: 0] cpu_0_data_master_dbs_write_16;
  input            cpu_0_data_master_no_byte_enables_and_last_term;
  input            cpu_0_data_master_read;
  input            cpu_0_data_master_write;
  input   [ 23: 0] cpu_0_instruction_master_address_to_slave;
  input   [  1: 0] cpu_0_instruction_master_dbs_address;
  input   [  1: 0] cpu_0_instruction_master_latency_counter;
  input            cpu_0_instruction_master_read;
  input            reset_n;
  input   [ 15: 0] sram_avalon_slave_0_readdata;

  wire             cpu_0_data_master_arbiterlock;
  wire             cpu_0_data_master_arbiterlock2;
  wire    [  1: 0] cpu_0_data_master_byteenable_sram_avalon_slave_0;
  wire    [  1: 0] cpu_0_data_master_byteenable_sram_avalon_slave_0_segment_0;
  wire    [  1: 0] cpu_0_data_master_byteenable_sram_avalon_slave_0_segment_1;
  wire             cpu_0_data_master_continuerequest;
  wire             cpu_0_data_master_granted_sram_avalon_slave_0;
  wire             cpu_0_data_master_qualified_request_sram_avalon_slave_0;
  wire             cpu_0_data_master_read_data_valid_sram_avalon_slave_0;
  wire             cpu_0_data_master_requests_sram_avalon_slave_0;
  wire             cpu_0_data_master_saved_grant_sram_avalon_slave_0;
  wire             cpu_0_instruction_master_arbiterlock;
  wire             cpu_0_instruction_master_arbiterlock2;
  wire             cpu_0_instruction_master_continuerequest;
  wire             cpu_0_instruction_master_granted_sram_avalon_slave_0;
  wire             cpu_0_instruction_master_qualified_request_sram_avalon_slave_0;
  wire             cpu_0_instruction_master_read_data_valid_sram_avalon_slave_0;
  wire             cpu_0_instruction_master_requests_sram_avalon_slave_0;
  wire             cpu_0_instruction_master_saved_grant_sram_avalon_slave_0;
  reg              d1_reasons_to_wait;
  reg              d1_sram_avalon_slave_0_end_xfer;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_sram_avalon_slave_0;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  reg              last_cycle_cpu_0_data_master_granted_slave_sram_avalon_slave_0;
  reg              last_cycle_cpu_0_instruction_master_granted_slave_sram_avalon_slave_0;
  wire    [ 23: 0] shifted_address_to_sram_avalon_slave_0_from_cpu_0_data_master;
  wire    [ 23: 0] shifted_address_to_sram_avalon_slave_0_from_cpu_0_instruction_master;
  wire    [ 17: 0] sram_avalon_slave_0_address;
  wire             sram_avalon_slave_0_allgrants;
  wire             sram_avalon_slave_0_allow_new_arb_cycle;
  wire             sram_avalon_slave_0_any_bursting_master_saved_grant;
  wire             sram_avalon_slave_0_any_continuerequest;
  reg     [  1: 0] sram_avalon_slave_0_arb_addend;
  wire             sram_avalon_slave_0_arb_counter_enable;
  reg     [  2: 0] sram_avalon_slave_0_arb_share_counter;
  wire    [  2: 0] sram_avalon_slave_0_arb_share_counter_next_value;
  wire    [  2: 0] sram_avalon_slave_0_arb_share_set_values;
  wire    [  1: 0] sram_avalon_slave_0_arb_winner;
  wire             sram_avalon_slave_0_arbitration_holdoff_internal;
  wire             sram_avalon_slave_0_beginbursttransfer_internal;
  wire             sram_avalon_slave_0_begins_xfer;
  wire    [  1: 0] sram_avalon_slave_0_byteenable_n;
  wire             sram_avalon_slave_0_chipselect_n;
  wire    [  3: 0] sram_avalon_slave_0_chosen_master_double_vector;
  wire    [  1: 0] sram_avalon_slave_0_chosen_master_rot_left;
  wire             sram_avalon_slave_0_counter_load_value;
  wire             sram_avalon_slave_0_end_xfer;
  wire             sram_avalon_slave_0_firsttransfer;
  wire    [  1: 0] sram_avalon_slave_0_grant_vector;
  wire             sram_avalon_slave_0_in_a_read_cycle;
  wire             sram_avalon_slave_0_in_a_write_cycle;
  wire    [  1: 0] sram_avalon_slave_0_master_qreq_vector;
  wire             sram_avalon_slave_0_non_bursting_master_requests;
  wire             sram_avalon_slave_0_read_n;
  wire    [ 15: 0] sram_avalon_slave_0_readdata_from_sa;
  reg              sram_avalon_slave_0_reg_firsttransfer;
  wire             sram_avalon_slave_0_reset_n;
  reg     [  1: 0] sram_avalon_slave_0_saved_chosen_master_vector;
  reg              sram_avalon_slave_0_slavearbiterlockenable;
  wire             sram_avalon_slave_0_slavearbiterlockenable2;
  wire             sram_avalon_slave_0_unreg_firsttransfer;
  reg              sram_avalon_slave_0_wait_counter;
  wire             sram_avalon_slave_0_wait_counter_eq_0;
  wire             sram_avalon_slave_0_waits_for_read;
  wire             sram_avalon_slave_0_waits_for_write;
  wire             sram_avalon_slave_0_write_n;
  wire    [ 15: 0] sram_avalon_slave_0_writedata;
  wire             wait_for_sram_avalon_slave_0_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~sram_avalon_slave_0_end_xfer;
    end


  assign sram_avalon_slave_0_begins_xfer = ~d1_reasons_to_wait & ((cpu_0_data_master_qualified_request_sram_avalon_slave_0 | cpu_0_instruction_master_qualified_request_sram_avalon_slave_0));
  //assign sram_avalon_slave_0_readdata_from_sa = sram_avalon_slave_0_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign sram_avalon_slave_0_readdata_from_sa = sram_avalon_slave_0_readdata;

  assign cpu_0_data_master_requests_sram_avalon_slave_0 = ({cpu_0_data_master_address_to_slave[23 : 19] , 19'b0} == 24'ha80000) & (cpu_0_data_master_read | cpu_0_data_master_write);
  //sram_avalon_slave_0_arb_share_counter set values, which is an e_mux
  assign sram_avalon_slave_0_arb_share_set_values = (cpu_0_data_master_granted_sram_avalon_slave_0)? 2 :
    (cpu_0_instruction_master_granted_sram_avalon_slave_0)? 2 :
    (cpu_0_data_master_granted_sram_avalon_slave_0)? 2 :
    (cpu_0_instruction_master_granted_sram_avalon_slave_0)? 2 :
    1;

  //sram_avalon_slave_0_non_bursting_master_requests mux, which is an e_mux
  assign sram_avalon_slave_0_non_bursting_master_requests = cpu_0_data_master_requests_sram_avalon_slave_0 |
    cpu_0_instruction_master_requests_sram_avalon_slave_0 |
    cpu_0_data_master_requests_sram_avalon_slave_0 |
    cpu_0_instruction_master_requests_sram_avalon_slave_0;

  //sram_avalon_slave_0_any_bursting_master_saved_grant mux, which is an e_mux
  assign sram_avalon_slave_0_any_bursting_master_saved_grant = 0;

  //sram_avalon_slave_0_arb_share_counter_next_value assignment, which is an e_assign
  assign sram_avalon_slave_0_arb_share_counter_next_value = sram_avalon_slave_0_firsttransfer ? (sram_avalon_slave_0_arb_share_set_values - 1) : |sram_avalon_slave_0_arb_share_counter ? (sram_avalon_slave_0_arb_share_counter - 1) : 0;

  //sram_avalon_slave_0_allgrants all slave grants, which is an e_mux
  assign sram_avalon_slave_0_allgrants = (|sram_avalon_slave_0_grant_vector) |
    (|sram_avalon_slave_0_grant_vector) |
    (|sram_avalon_slave_0_grant_vector) |
    (|sram_avalon_slave_0_grant_vector);

  //sram_avalon_slave_0_end_xfer assignment, which is an e_assign
  assign sram_avalon_slave_0_end_xfer = ~(sram_avalon_slave_0_waits_for_read | sram_avalon_slave_0_waits_for_write);

  //end_xfer_arb_share_counter_term_sram_avalon_slave_0 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_sram_avalon_slave_0 = sram_avalon_slave_0_end_xfer & (~sram_avalon_slave_0_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //sram_avalon_slave_0_arb_share_counter arbitration counter enable, which is an e_assign
  assign sram_avalon_slave_0_arb_counter_enable = (end_xfer_arb_share_counter_term_sram_avalon_slave_0 & sram_avalon_slave_0_allgrants) | (end_xfer_arb_share_counter_term_sram_avalon_slave_0 & ~sram_avalon_slave_0_non_bursting_master_requests);

  //sram_avalon_slave_0_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          sram_avalon_slave_0_arb_share_counter <= 0;
      else if (sram_avalon_slave_0_arb_counter_enable)
          sram_avalon_slave_0_arb_share_counter <= sram_avalon_slave_0_arb_share_counter_next_value;
    end


  //sram_avalon_slave_0_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          sram_avalon_slave_0_slavearbiterlockenable <= 0;
      else if ((|sram_avalon_slave_0_master_qreq_vector & end_xfer_arb_share_counter_term_sram_avalon_slave_0) | (end_xfer_arb_share_counter_term_sram_avalon_slave_0 & ~sram_avalon_slave_0_non_bursting_master_requests))
          sram_avalon_slave_0_slavearbiterlockenable <= |sram_avalon_slave_0_arb_share_counter_next_value;
    end


  //cpu_0/data_master sram/avalon_slave_0 arbiterlock, which is an e_assign
  assign cpu_0_data_master_arbiterlock = sram_avalon_slave_0_slavearbiterlockenable & cpu_0_data_master_continuerequest;

  //sram_avalon_slave_0_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign sram_avalon_slave_0_slavearbiterlockenable2 = |sram_avalon_slave_0_arb_share_counter_next_value;

  //cpu_0/data_master sram/avalon_slave_0 arbiterlock2, which is an e_assign
  assign cpu_0_data_master_arbiterlock2 = sram_avalon_slave_0_slavearbiterlockenable2 & cpu_0_data_master_continuerequest;

  //cpu_0/instruction_master sram/avalon_slave_0 arbiterlock, which is an e_assign
  assign cpu_0_instruction_master_arbiterlock = sram_avalon_slave_0_slavearbiterlockenable & cpu_0_instruction_master_continuerequest;

  //cpu_0/instruction_master sram/avalon_slave_0 arbiterlock2, which is an e_assign
  assign cpu_0_instruction_master_arbiterlock2 = sram_avalon_slave_0_slavearbiterlockenable2 & cpu_0_instruction_master_continuerequest;

  //cpu_0/instruction_master granted sram/avalon_slave_0 last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          last_cycle_cpu_0_instruction_master_granted_slave_sram_avalon_slave_0 <= 0;
      else 
        last_cycle_cpu_0_instruction_master_granted_slave_sram_avalon_slave_0 <= cpu_0_instruction_master_saved_grant_sram_avalon_slave_0 ? 1 : (sram_avalon_slave_0_arbitration_holdoff_internal | ~cpu_0_instruction_master_requests_sram_avalon_slave_0) ? 0 : last_cycle_cpu_0_instruction_master_granted_slave_sram_avalon_slave_0;
    end


  //cpu_0_instruction_master_continuerequest continued request, which is an e_mux
  assign cpu_0_instruction_master_continuerequest = last_cycle_cpu_0_instruction_master_granted_slave_sram_avalon_slave_0 & cpu_0_instruction_master_requests_sram_avalon_slave_0;

  //sram_avalon_slave_0_any_continuerequest at least one master continues requesting, which is an e_mux
  assign sram_avalon_slave_0_any_continuerequest = cpu_0_instruction_master_continuerequest |
    cpu_0_data_master_continuerequest;

  assign cpu_0_data_master_qualified_request_sram_avalon_slave_0 = cpu_0_data_master_requests_sram_avalon_slave_0 & ~(((cpu_0_data_master_no_byte_enables_and_last_term | !cpu_0_data_master_byteenable_sram_avalon_slave_0) & cpu_0_data_master_write) | cpu_0_instruction_master_arbiterlock);
  //sram_avalon_slave_0_writedata mux, which is an e_mux
  assign sram_avalon_slave_0_writedata = cpu_0_data_master_dbs_write_16;

  assign cpu_0_instruction_master_requests_sram_avalon_slave_0 = (({cpu_0_instruction_master_address_to_slave[23 : 19] , 19'b0} == 24'ha80000) & (cpu_0_instruction_master_read)) & cpu_0_instruction_master_read;
  //cpu_0/data_master granted sram/avalon_slave_0 last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          last_cycle_cpu_0_data_master_granted_slave_sram_avalon_slave_0 <= 0;
      else 
        last_cycle_cpu_0_data_master_granted_slave_sram_avalon_slave_0 <= cpu_0_data_master_saved_grant_sram_avalon_slave_0 ? 1 : (sram_avalon_slave_0_arbitration_holdoff_internal | ~cpu_0_data_master_requests_sram_avalon_slave_0) ? 0 : last_cycle_cpu_0_data_master_granted_slave_sram_avalon_slave_0;
    end


  //cpu_0_data_master_continuerequest continued request, which is an e_mux
  assign cpu_0_data_master_continuerequest = last_cycle_cpu_0_data_master_granted_slave_sram_avalon_slave_0 & cpu_0_data_master_requests_sram_avalon_slave_0;

  assign cpu_0_instruction_master_qualified_request_sram_avalon_slave_0 = cpu_0_instruction_master_requests_sram_avalon_slave_0 & ~((cpu_0_instruction_master_read & ((cpu_0_instruction_master_latency_counter != 0))) | cpu_0_data_master_arbiterlock);
  //local readdatavalid cpu_0_instruction_master_read_data_valid_sram_avalon_slave_0, which is an e_mux
  assign cpu_0_instruction_master_read_data_valid_sram_avalon_slave_0 = cpu_0_instruction_master_granted_sram_avalon_slave_0 & cpu_0_instruction_master_read & ~sram_avalon_slave_0_waits_for_read;

  //allow new arb cycle for sram/avalon_slave_0, which is an e_assign
  assign sram_avalon_slave_0_allow_new_arb_cycle = ~cpu_0_data_master_arbiterlock & ~cpu_0_instruction_master_arbiterlock;

  //cpu_0/instruction_master assignment into master qualified-requests vector for sram/avalon_slave_0, which is an e_assign
  assign sram_avalon_slave_0_master_qreq_vector[0] = cpu_0_instruction_master_qualified_request_sram_avalon_slave_0;

  //cpu_0/instruction_master grant sram/avalon_slave_0, which is an e_assign
  assign cpu_0_instruction_master_granted_sram_avalon_slave_0 = sram_avalon_slave_0_grant_vector[0];

  //cpu_0/instruction_master saved-grant sram/avalon_slave_0, which is an e_assign
  assign cpu_0_instruction_master_saved_grant_sram_avalon_slave_0 = sram_avalon_slave_0_arb_winner[0] && cpu_0_instruction_master_requests_sram_avalon_slave_0;

  //cpu_0/data_master assignment into master qualified-requests vector for sram/avalon_slave_0, which is an e_assign
  assign sram_avalon_slave_0_master_qreq_vector[1] = cpu_0_data_master_qualified_request_sram_avalon_slave_0;

  //cpu_0/data_master grant sram/avalon_slave_0, which is an e_assign
  assign cpu_0_data_master_granted_sram_avalon_slave_0 = sram_avalon_slave_0_grant_vector[1];

  //cpu_0/data_master saved-grant sram/avalon_slave_0, which is an e_assign
  assign cpu_0_data_master_saved_grant_sram_avalon_slave_0 = sram_avalon_slave_0_arb_winner[1] && cpu_0_data_master_requests_sram_avalon_slave_0;

  //sram/avalon_slave_0 chosen-master double-vector, which is an e_assign
  assign sram_avalon_slave_0_chosen_master_double_vector = {sram_avalon_slave_0_master_qreq_vector, sram_avalon_slave_0_master_qreq_vector} & ({~sram_avalon_slave_0_master_qreq_vector, ~sram_avalon_slave_0_master_qreq_vector} + sram_avalon_slave_0_arb_addend);

  //stable onehot encoding of arb winner
  assign sram_avalon_slave_0_arb_winner = (sram_avalon_slave_0_allow_new_arb_cycle & | sram_avalon_slave_0_grant_vector) ? sram_avalon_slave_0_grant_vector : sram_avalon_slave_0_saved_chosen_master_vector;

  //saved sram_avalon_slave_0_grant_vector, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          sram_avalon_slave_0_saved_chosen_master_vector <= 0;
      else if (sram_avalon_slave_0_allow_new_arb_cycle)
          sram_avalon_slave_0_saved_chosen_master_vector <= |sram_avalon_slave_0_grant_vector ? sram_avalon_slave_0_grant_vector : sram_avalon_slave_0_saved_chosen_master_vector;
    end


  //onehot encoding of chosen master
  assign sram_avalon_slave_0_grant_vector = {(sram_avalon_slave_0_chosen_master_double_vector[1] | sram_avalon_slave_0_chosen_master_double_vector[3]),
    (sram_avalon_slave_0_chosen_master_double_vector[0] | sram_avalon_slave_0_chosen_master_double_vector[2])};

  //sram/avalon_slave_0 chosen master rotated left, which is an e_assign
  assign sram_avalon_slave_0_chosen_master_rot_left = (sram_avalon_slave_0_arb_winner << 1) ? (sram_avalon_slave_0_arb_winner << 1) : 1;

  //sram/avalon_slave_0's addend for next-master-grant
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          sram_avalon_slave_0_arb_addend <= 1;
      else if (|sram_avalon_slave_0_grant_vector)
          sram_avalon_slave_0_arb_addend <= sram_avalon_slave_0_end_xfer? sram_avalon_slave_0_chosen_master_rot_left : sram_avalon_slave_0_grant_vector;
    end


  //sram_avalon_slave_0_reset_n assignment, which is an e_assign
  assign sram_avalon_slave_0_reset_n = reset_n;

  assign sram_avalon_slave_0_chipselect_n = ~(cpu_0_data_master_granted_sram_avalon_slave_0 | cpu_0_instruction_master_granted_sram_avalon_slave_0);
  //sram_avalon_slave_0_firsttransfer first transaction, which is an e_assign
  assign sram_avalon_slave_0_firsttransfer = sram_avalon_slave_0_begins_xfer ? sram_avalon_slave_0_unreg_firsttransfer : sram_avalon_slave_0_reg_firsttransfer;

  //sram_avalon_slave_0_unreg_firsttransfer first transaction, which is an e_assign
  assign sram_avalon_slave_0_unreg_firsttransfer = ~(sram_avalon_slave_0_slavearbiterlockenable & sram_avalon_slave_0_any_continuerequest);

  //sram_avalon_slave_0_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          sram_avalon_slave_0_reg_firsttransfer <= 1'b1;
      else if (sram_avalon_slave_0_begins_xfer)
          sram_avalon_slave_0_reg_firsttransfer <= sram_avalon_slave_0_unreg_firsttransfer;
    end


  //sram_avalon_slave_0_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign sram_avalon_slave_0_beginbursttransfer_internal = sram_avalon_slave_0_begins_xfer;

  //sram_avalon_slave_0_arbitration_holdoff_internal arbitration_holdoff, which is an e_assign
  assign sram_avalon_slave_0_arbitration_holdoff_internal = sram_avalon_slave_0_begins_xfer & sram_avalon_slave_0_firsttransfer;

  //~sram_avalon_slave_0_read_n assignment, which is an e_mux
  assign sram_avalon_slave_0_read_n = ~(((cpu_0_data_master_granted_sram_avalon_slave_0 & cpu_0_data_master_read) | (cpu_0_instruction_master_granted_sram_avalon_slave_0 & cpu_0_instruction_master_read))& ~sram_avalon_slave_0_begins_xfer);

  //~sram_avalon_slave_0_write_n assignment, which is an e_mux
  assign sram_avalon_slave_0_write_n = ~(((cpu_0_data_master_granted_sram_avalon_slave_0 & cpu_0_data_master_write)) & ~sram_avalon_slave_0_begins_xfer & (sram_avalon_slave_0_wait_counter >= 1));

  assign shifted_address_to_sram_avalon_slave_0_from_cpu_0_data_master = {cpu_0_data_master_address_to_slave >> 2,
    cpu_0_data_master_dbs_address[1],
    {1 {1'b0}}};

  //sram_avalon_slave_0_address mux, which is an e_mux
  assign sram_avalon_slave_0_address = (cpu_0_data_master_granted_sram_avalon_slave_0)? (shifted_address_to_sram_avalon_slave_0_from_cpu_0_data_master >> 1) :
    (shifted_address_to_sram_avalon_slave_0_from_cpu_0_instruction_master >> 1);

  assign shifted_address_to_sram_avalon_slave_0_from_cpu_0_instruction_master = {cpu_0_instruction_master_address_to_slave >> 2,
    cpu_0_instruction_master_dbs_address[1],
    {1 {1'b0}}};

  //d1_sram_avalon_slave_0_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_sram_avalon_slave_0_end_xfer <= 1;
      else 
        d1_sram_avalon_slave_0_end_xfer <= sram_avalon_slave_0_end_xfer;
    end


  //sram_avalon_slave_0_waits_for_read in a cycle, which is an e_mux
  assign sram_avalon_slave_0_waits_for_read = sram_avalon_slave_0_in_a_read_cycle & sram_avalon_slave_0_begins_xfer;

  //sram_avalon_slave_0_in_a_read_cycle assignment, which is an e_assign
  assign sram_avalon_slave_0_in_a_read_cycle = (cpu_0_data_master_granted_sram_avalon_slave_0 & cpu_0_data_master_read) | (cpu_0_instruction_master_granted_sram_avalon_slave_0 & cpu_0_instruction_master_read);

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = sram_avalon_slave_0_in_a_read_cycle;

  //sram_avalon_slave_0_waits_for_write in a cycle, which is an e_mux
  assign sram_avalon_slave_0_waits_for_write = sram_avalon_slave_0_in_a_write_cycle & wait_for_sram_avalon_slave_0_counter;

  //sram_avalon_slave_0_in_a_write_cycle assignment, which is an e_assign
  assign sram_avalon_slave_0_in_a_write_cycle = cpu_0_data_master_granted_sram_avalon_slave_0 & cpu_0_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = sram_avalon_slave_0_in_a_write_cycle;

  assign sram_avalon_slave_0_wait_counter_eq_0 = sram_avalon_slave_0_wait_counter == 0;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          sram_avalon_slave_0_wait_counter <= 0;
      else 
        sram_avalon_slave_0_wait_counter <= sram_avalon_slave_0_counter_load_value;
    end


  assign sram_avalon_slave_0_counter_load_value = ((sram_avalon_slave_0_in_a_write_cycle & sram_avalon_slave_0_begins_xfer))? 1 :
    (~sram_avalon_slave_0_wait_counter_eq_0)? sram_avalon_slave_0_wait_counter - 1 :
    0;

  assign wait_for_sram_avalon_slave_0_counter = sram_avalon_slave_0_begins_xfer | ~sram_avalon_slave_0_wait_counter_eq_0;
  //~sram_avalon_slave_0_byteenable_n byte enable port mux, which is an e_mux
  assign sram_avalon_slave_0_byteenable_n = ~((cpu_0_data_master_granted_sram_avalon_slave_0)? cpu_0_data_master_byteenable_sram_avalon_slave_0 :
    -1);

  assign {cpu_0_data_master_byteenable_sram_avalon_slave_0_segment_1,
cpu_0_data_master_byteenable_sram_avalon_slave_0_segment_0} = cpu_0_data_master_byteenable;
  assign cpu_0_data_master_byteenable_sram_avalon_slave_0 = ((cpu_0_data_master_dbs_address[1] == 0))? cpu_0_data_master_byteenable_sram_avalon_slave_0_segment_0 :
    cpu_0_data_master_byteenable_sram_avalon_slave_0_segment_1;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //sram/avalon_slave_0 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end


  //grant signals are active simultaneously, which is an e_process
  always @(posedge clk)
    begin
      if (cpu_0_data_master_granted_sram_avalon_slave_0 + cpu_0_instruction_master_granted_sram_avalon_slave_0 > 1)
        begin
          $write("%0d ns: > 1 of grant signals are active simultaneously", $time);
          $stop;
        end
    end


  //saved_grant signals are active simultaneously, which is an e_process
  always @(posedge clk)
    begin
      if (cpu_0_data_master_saved_grant_sram_avalon_slave_0 + cpu_0_instruction_master_saved_grant_sram_avalon_slave_0 > 1)
        begin
          $write("%0d ns: > 1 of saved_grant signals are active simultaneously", $time);
          $stop;
        end
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule


// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module sysid_0_control_slave_arbitrator (
                                          // inputs:
                                           clk,
                                           cpu_0_data_master_address_to_slave,
                                           cpu_0_data_master_read,
                                           cpu_0_data_master_write,
                                           reset_n,
                                           sysid_0_control_slave_readdata,

                                          // outputs:
                                           cpu_0_data_master_granted_sysid_0_control_slave,
                                           cpu_0_data_master_qualified_request_sysid_0_control_slave,
                                           cpu_0_data_master_read_data_valid_sysid_0_control_slave,
                                           cpu_0_data_master_requests_sysid_0_control_slave,
                                           d1_sysid_0_control_slave_end_xfer,
                                           sysid_0_control_slave_address,
                                           sysid_0_control_slave_readdata_from_sa,
                                           sysid_0_control_slave_reset_n
                                        )
;

  output           cpu_0_data_master_granted_sysid_0_control_slave;
  output           cpu_0_data_master_qualified_request_sysid_0_control_slave;
  output           cpu_0_data_master_read_data_valid_sysid_0_control_slave;
  output           cpu_0_data_master_requests_sysid_0_control_slave;
  output           d1_sysid_0_control_slave_end_xfer;
  output           sysid_0_control_slave_address;
  output  [ 31: 0] sysid_0_control_slave_readdata_from_sa;
  output           sysid_0_control_slave_reset_n;
  input            clk;
  input   [ 23: 0] cpu_0_data_master_address_to_slave;
  input            cpu_0_data_master_read;
  input            cpu_0_data_master_write;
  input            reset_n;
  input   [ 31: 0] sysid_0_control_slave_readdata;

  wire             cpu_0_data_master_arbiterlock;
  wire             cpu_0_data_master_arbiterlock2;
  wire             cpu_0_data_master_continuerequest;
  wire             cpu_0_data_master_granted_sysid_0_control_slave;
  wire             cpu_0_data_master_qualified_request_sysid_0_control_slave;
  wire             cpu_0_data_master_read_data_valid_sysid_0_control_slave;
  wire             cpu_0_data_master_requests_sysid_0_control_slave;
  wire             cpu_0_data_master_saved_grant_sysid_0_control_slave;
  reg              d1_reasons_to_wait;
  reg              d1_sysid_0_control_slave_end_xfer;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_sysid_0_control_slave;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire    [ 23: 0] shifted_address_to_sysid_0_control_slave_from_cpu_0_data_master;
  wire             sysid_0_control_slave_address;
  wire             sysid_0_control_slave_allgrants;
  wire             sysid_0_control_slave_allow_new_arb_cycle;
  wire             sysid_0_control_slave_any_bursting_master_saved_grant;
  wire             sysid_0_control_slave_any_continuerequest;
  wire             sysid_0_control_slave_arb_counter_enable;
  reg     [  2: 0] sysid_0_control_slave_arb_share_counter;
  wire    [  2: 0] sysid_0_control_slave_arb_share_counter_next_value;
  wire    [  2: 0] sysid_0_control_slave_arb_share_set_values;
  wire             sysid_0_control_slave_beginbursttransfer_internal;
  wire             sysid_0_control_slave_begins_xfer;
  wire             sysid_0_control_slave_end_xfer;
  wire             sysid_0_control_slave_firsttransfer;
  wire             sysid_0_control_slave_grant_vector;
  wire             sysid_0_control_slave_in_a_read_cycle;
  wire             sysid_0_control_slave_in_a_write_cycle;
  wire             sysid_0_control_slave_master_qreq_vector;
  wire             sysid_0_control_slave_non_bursting_master_requests;
  wire    [ 31: 0] sysid_0_control_slave_readdata_from_sa;
  reg              sysid_0_control_slave_reg_firsttransfer;
  wire             sysid_0_control_slave_reset_n;
  reg              sysid_0_control_slave_slavearbiterlockenable;
  wire             sysid_0_control_slave_slavearbiterlockenable2;
  wire             sysid_0_control_slave_unreg_firsttransfer;
  wire             sysid_0_control_slave_waits_for_read;
  wire             sysid_0_control_slave_waits_for_write;
  wire             wait_for_sysid_0_control_slave_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~sysid_0_control_slave_end_xfer;
    end


  assign sysid_0_control_slave_begins_xfer = ~d1_reasons_to_wait & ((cpu_0_data_master_qualified_request_sysid_0_control_slave));
  //assign sysid_0_control_slave_readdata_from_sa = sysid_0_control_slave_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign sysid_0_control_slave_readdata_from_sa = sysid_0_control_slave_readdata;

  assign cpu_0_data_master_requests_sysid_0_control_slave = (({cpu_0_data_master_address_to_slave[23 : 3] , 3'b0} == 24'hb04058) & (cpu_0_data_master_read | cpu_0_data_master_write)) & cpu_0_data_master_read;
  //sysid_0_control_slave_arb_share_counter set values, which is an e_mux
  assign sysid_0_control_slave_arb_share_set_values = 1;

  //sysid_0_control_slave_non_bursting_master_requests mux, which is an e_mux
  assign sysid_0_control_slave_non_bursting_master_requests = cpu_0_data_master_requests_sysid_0_control_slave;

  //sysid_0_control_slave_any_bursting_master_saved_grant mux, which is an e_mux
  assign sysid_0_control_slave_any_bursting_master_saved_grant = 0;

  //sysid_0_control_slave_arb_share_counter_next_value assignment, which is an e_assign
  assign sysid_0_control_slave_arb_share_counter_next_value = sysid_0_control_slave_firsttransfer ? (sysid_0_control_slave_arb_share_set_values - 1) : |sysid_0_control_slave_arb_share_counter ? (sysid_0_control_slave_arb_share_counter - 1) : 0;

  //sysid_0_control_slave_allgrants all slave grants, which is an e_mux
  assign sysid_0_control_slave_allgrants = |sysid_0_control_slave_grant_vector;

  //sysid_0_control_slave_end_xfer assignment, which is an e_assign
  assign sysid_0_control_slave_end_xfer = ~(sysid_0_control_slave_waits_for_read | sysid_0_control_slave_waits_for_write);

  //end_xfer_arb_share_counter_term_sysid_0_control_slave arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_sysid_0_control_slave = sysid_0_control_slave_end_xfer & (~sysid_0_control_slave_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //sysid_0_control_slave_arb_share_counter arbitration counter enable, which is an e_assign
  assign sysid_0_control_slave_arb_counter_enable = (end_xfer_arb_share_counter_term_sysid_0_control_slave & sysid_0_control_slave_allgrants) | (end_xfer_arb_share_counter_term_sysid_0_control_slave & ~sysid_0_control_slave_non_bursting_master_requests);

  //sysid_0_control_slave_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          sysid_0_control_slave_arb_share_counter <= 0;
      else if (sysid_0_control_slave_arb_counter_enable)
          sysid_0_control_slave_arb_share_counter <= sysid_0_control_slave_arb_share_counter_next_value;
    end


  //sysid_0_control_slave_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          sysid_0_control_slave_slavearbiterlockenable <= 0;
      else if ((|sysid_0_control_slave_master_qreq_vector & end_xfer_arb_share_counter_term_sysid_0_control_slave) | (end_xfer_arb_share_counter_term_sysid_0_control_slave & ~sysid_0_control_slave_non_bursting_master_requests))
          sysid_0_control_slave_slavearbiterlockenable <= |sysid_0_control_slave_arb_share_counter_next_value;
    end


  //cpu_0/data_master sysid_0/control_slave arbiterlock, which is an e_assign
  assign cpu_0_data_master_arbiterlock = sysid_0_control_slave_slavearbiterlockenable & cpu_0_data_master_continuerequest;

  //sysid_0_control_slave_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign sysid_0_control_slave_slavearbiterlockenable2 = |sysid_0_control_slave_arb_share_counter_next_value;

  //cpu_0/data_master sysid_0/control_slave arbiterlock2, which is an e_assign
  assign cpu_0_data_master_arbiterlock2 = sysid_0_control_slave_slavearbiterlockenable2 & cpu_0_data_master_continuerequest;

  //sysid_0_control_slave_any_continuerequest at least one master continues requesting, which is an e_assign
  assign sysid_0_control_slave_any_continuerequest = 1;

  //cpu_0_data_master_continuerequest continued request, which is an e_assign
  assign cpu_0_data_master_continuerequest = 1;

  assign cpu_0_data_master_qualified_request_sysid_0_control_slave = cpu_0_data_master_requests_sysid_0_control_slave;
  //master is always granted when requested
  assign cpu_0_data_master_granted_sysid_0_control_slave = cpu_0_data_master_qualified_request_sysid_0_control_slave;

  //cpu_0/data_master saved-grant sysid_0/control_slave, which is an e_assign
  assign cpu_0_data_master_saved_grant_sysid_0_control_slave = cpu_0_data_master_requests_sysid_0_control_slave;

  //allow new arb cycle for sysid_0/control_slave, which is an e_assign
  assign sysid_0_control_slave_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign sysid_0_control_slave_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign sysid_0_control_slave_master_qreq_vector = 1;

  //sysid_0_control_slave_reset_n assignment, which is an e_assign
  assign sysid_0_control_slave_reset_n = reset_n;

  //sysid_0_control_slave_firsttransfer first transaction, which is an e_assign
  assign sysid_0_control_slave_firsttransfer = sysid_0_control_slave_begins_xfer ? sysid_0_control_slave_unreg_firsttransfer : sysid_0_control_slave_reg_firsttransfer;

  //sysid_0_control_slave_unreg_firsttransfer first transaction, which is an e_assign
  assign sysid_0_control_slave_unreg_firsttransfer = ~(sysid_0_control_slave_slavearbiterlockenable & sysid_0_control_slave_any_continuerequest);

  //sysid_0_control_slave_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          sysid_0_control_slave_reg_firsttransfer <= 1'b1;
      else if (sysid_0_control_slave_begins_xfer)
          sysid_0_control_slave_reg_firsttransfer <= sysid_0_control_slave_unreg_firsttransfer;
    end


  //sysid_0_control_slave_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign sysid_0_control_slave_beginbursttransfer_internal = sysid_0_control_slave_begins_xfer;

  assign shifted_address_to_sysid_0_control_slave_from_cpu_0_data_master = cpu_0_data_master_address_to_slave;
  //sysid_0_control_slave_address mux, which is an e_mux
  assign sysid_0_control_slave_address = shifted_address_to_sysid_0_control_slave_from_cpu_0_data_master >> 2;

  //d1_sysid_0_control_slave_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_sysid_0_control_slave_end_xfer <= 1;
      else 
        d1_sysid_0_control_slave_end_xfer <= sysid_0_control_slave_end_xfer;
    end


  //sysid_0_control_slave_waits_for_read in a cycle, which is an e_mux
  assign sysid_0_control_slave_waits_for_read = sysid_0_control_slave_in_a_read_cycle & sysid_0_control_slave_begins_xfer;

  //sysid_0_control_slave_in_a_read_cycle assignment, which is an e_assign
  assign sysid_0_control_slave_in_a_read_cycle = cpu_0_data_master_granted_sysid_0_control_slave & cpu_0_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = sysid_0_control_slave_in_a_read_cycle;

  //sysid_0_control_slave_waits_for_write in a cycle, which is an e_mux
  assign sysid_0_control_slave_waits_for_write = sysid_0_control_slave_in_a_write_cycle & 0;

  //sysid_0_control_slave_in_a_write_cycle assignment, which is an e_assign
  assign sysid_0_control_slave_in_a_write_cycle = cpu_0_data_master_granted_sysid_0_control_slave & cpu_0_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = sysid_0_control_slave_in_a_write_cycle;

  assign wait_for_sysid_0_control_slave_counter = 0;

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //sysid_0/control_slave enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule


// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module timer_s1_arbitrator (
                             // inputs:
                              clk,
                              cpu_0_data_master_address_to_slave,
                              cpu_0_data_master_read,
                              cpu_0_data_master_waitrequest,
                              cpu_0_data_master_write,
                              cpu_0_data_master_writedata,
                              reset_n,
                              timer_s1_irq,
                              timer_s1_readdata,

                             // outputs:
                              cpu_0_data_master_granted_timer_s1,
                              cpu_0_data_master_qualified_request_timer_s1,
                              cpu_0_data_master_read_data_valid_timer_s1,
                              cpu_0_data_master_requests_timer_s1,
                              d1_timer_s1_end_xfer,
                              timer_s1_address,
                              timer_s1_chipselect,
                              timer_s1_irq_from_sa,
                              timer_s1_readdata_from_sa,
                              timer_s1_reset_n,
                              timer_s1_write_n,
                              timer_s1_writedata
                           )
;

  output           cpu_0_data_master_granted_timer_s1;
  output           cpu_0_data_master_qualified_request_timer_s1;
  output           cpu_0_data_master_read_data_valid_timer_s1;
  output           cpu_0_data_master_requests_timer_s1;
  output           d1_timer_s1_end_xfer;
  output  [  2: 0] timer_s1_address;
  output           timer_s1_chipselect;
  output           timer_s1_irq_from_sa;
  output  [ 15: 0] timer_s1_readdata_from_sa;
  output           timer_s1_reset_n;
  output           timer_s1_write_n;
  output  [ 15: 0] timer_s1_writedata;
  input            clk;
  input   [ 23: 0] cpu_0_data_master_address_to_slave;
  input            cpu_0_data_master_read;
  input            cpu_0_data_master_waitrequest;
  input            cpu_0_data_master_write;
  input   [ 31: 0] cpu_0_data_master_writedata;
  input            reset_n;
  input            timer_s1_irq;
  input   [ 15: 0] timer_s1_readdata;

  wire             cpu_0_data_master_arbiterlock;
  wire             cpu_0_data_master_arbiterlock2;
  wire             cpu_0_data_master_continuerequest;
  wire             cpu_0_data_master_granted_timer_s1;
  wire             cpu_0_data_master_qualified_request_timer_s1;
  wire             cpu_0_data_master_read_data_valid_timer_s1;
  wire             cpu_0_data_master_requests_timer_s1;
  wire             cpu_0_data_master_saved_grant_timer_s1;
  reg              d1_reasons_to_wait;
  reg              d1_timer_s1_end_xfer;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_timer_s1;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire    [ 23: 0] shifted_address_to_timer_s1_from_cpu_0_data_master;
  wire    [  2: 0] timer_s1_address;
  wire             timer_s1_allgrants;
  wire             timer_s1_allow_new_arb_cycle;
  wire             timer_s1_any_bursting_master_saved_grant;
  wire             timer_s1_any_continuerequest;
  wire             timer_s1_arb_counter_enable;
  reg     [  2: 0] timer_s1_arb_share_counter;
  wire    [  2: 0] timer_s1_arb_share_counter_next_value;
  wire    [  2: 0] timer_s1_arb_share_set_values;
  wire             timer_s1_beginbursttransfer_internal;
  wire             timer_s1_begins_xfer;
  wire             timer_s1_chipselect;
  wire             timer_s1_end_xfer;
  wire             timer_s1_firsttransfer;
  wire             timer_s1_grant_vector;
  wire             timer_s1_in_a_read_cycle;
  wire             timer_s1_in_a_write_cycle;
  wire             timer_s1_irq_from_sa;
  wire             timer_s1_master_qreq_vector;
  wire             timer_s1_non_bursting_master_requests;
  wire    [ 15: 0] timer_s1_readdata_from_sa;
  reg              timer_s1_reg_firsttransfer;
  wire             timer_s1_reset_n;
  reg              timer_s1_slavearbiterlockenable;
  wire             timer_s1_slavearbiterlockenable2;
  wire             timer_s1_unreg_firsttransfer;
  wire             timer_s1_waits_for_read;
  wire             timer_s1_waits_for_write;
  wire             timer_s1_write_n;
  wire    [ 15: 0] timer_s1_writedata;
  wire             wait_for_timer_s1_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~timer_s1_end_xfer;
    end


  assign timer_s1_begins_xfer = ~d1_reasons_to_wait & ((cpu_0_data_master_qualified_request_timer_s1));
  //assign timer_s1_readdata_from_sa = timer_s1_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign timer_s1_readdata_from_sa = timer_s1_readdata;

  assign cpu_0_data_master_requests_timer_s1 = ({cpu_0_data_master_address_to_slave[23 : 5] , 5'b0} == 24'hb04020) & (cpu_0_data_master_read | cpu_0_data_master_write);
  //timer_s1_arb_share_counter set values, which is an e_mux
  assign timer_s1_arb_share_set_values = 1;

  //timer_s1_non_bursting_master_requests mux, which is an e_mux
  assign timer_s1_non_bursting_master_requests = cpu_0_data_master_requests_timer_s1;

  //timer_s1_any_bursting_master_saved_grant mux, which is an e_mux
  assign timer_s1_any_bursting_master_saved_grant = 0;

  //timer_s1_arb_share_counter_next_value assignment, which is an e_assign
  assign timer_s1_arb_share_counter_next_value = timer_s1_firsttransfer ? (timer_s1_arb_share_set_values - 1) : |timer_s1_arb_share_counter ? (timer_s1_arb_share_counter - 1) : 0;

  //timer_s1_allgrants all slave grants, which is an e_mux
  assign timer_s1_allgrants = |timer_s1_grant_vector;

  //timer_s1_end_xfer assignment, which is an e_assign
  assign timer_s1_end_xfer = ~(timer_s1_waits_for_read | timer_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_timer_s1 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_timer_s1 = timer_s1_end_xfer & (~timer_s1_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //timer_s1_arb_share_counter arbitration counter enable, which is an e_assign
  assign timer_s1_arb_counter_enable = (end_xfer_arb_share_counter_term_timer_s1 & timer_s1_allgrants) | (end_xfer_arb_share_counter_term_timer_s1 & ~timer_s1_non_bursting_master_requests);

  //timer_s1_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          timer_s1_arb_share_counter <= 0;
      else if (timer_s1_arb_counter_enable)
          timer_s1_arb_share_counter <= timer_s1_arb_share_counter_next_value;
    end


  //timer_s1_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          timer_s1_slavearbiterlockenable <= 0;
      else if ((|timer_s1_master_qreq_vector & end_xfer_arb_share_counter_term_timer_s1) | (end_xfer_arb_share_counter_term_timer_s1 & ~timer_s1_non_bursting_master_requests))
          timer_s1_slavearbiterlockenable <= |timer_s1_arb_share_counter_next_value;
    end


  //cpu_0/data_master timer/s1 arbiterlock, which is an e_assign
  assign cpu_0_data_master_arbiterlock = timer_s1_slavearbiterlockenable & cpu_0_data_master_continuerequest;

  //timer_s1_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign timer_s1_slavearbiterlockenable2 = |timer_s1_arb_share_counter_next_value;

  //cpu_0/data_master timer/s1 arbiterlock2, which is an e_assign
  assign cpu_0_data_master_arbiterlock2 = timer_s1_slavearbiterlockenable2 & cpu_0_data_master_continuerequest;

  //timer_s1_any_continuerequest at least one master continues requesting, which is an e_assign
  assign timer_s1_any_continuerequest = 1;

  //cpu_0_data_master_continuerequest continued request, which is an e_assign
  assign cpu_0_data_master_continuerequest = 1;

  assign cpu_0_data_master_qualified_request_timer_s1 = cpu_0_data_master_requests_timer_s1 & ~(((~cpu_0_data_master_waitrequest) & cpu_0_data_master_write));
  //timer_s1_writedata mux, which is an e_mux
  assign timer_s1_writedata = cpu_0_data_master_writedata;

  //master is always granted when requested
  assign cpu_0_data_master_granted_timer_s1 = cpu_0_data_master_qualified_request_timer_s1;

  //cpu_0/data_master saved-grant timer/s1, which is an e_assign
  assign cpu_0_data_master_saved_grant_timer_s1 = cpu_0_data_master_requests_timer_s1;

  //allow new arb cycle for timer/s1, which is an e_assign
  assign timer_s1_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign timer_s1_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign timer_s1_master_qreq_vector = 1;

  //timer_s1_reset_n assignment, which is an e_assign
  assign timer_s1_reset_n = reset_n;

  assign timer_s1_chipselect = cpu_0_data_master_granted_timer_s1;
  //timer_s1_firsttransfer first transaction, which is an e_assign
  assign timer_s1_firsttransfer = timer_s1_begins_xfer ? timer_s1_unreg_firsttransfer : timer_s1_reg_firsttransfer;

  //timer_s1_unreg_firsttransfer first transaction, which is an e_assign
  assign timer_s1_unreg_firsttransfer = ~(timer_s1_slavearbiterlockenable & timer_s1_any_continuerequest);

  //timer_s1_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          timer_s1_reg_firsttransfer <= 1'b1;
      else if (timer_s1_begins_xfer)
          timer_s1_reg_firsttransfer <= timer_s1_unreg_firsttransfer;
    end


  //timer_s1_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign timer_s1_beginbursttransfer_internal = timer_s1_begins_xfer;

  //~timer_s1_write_n assignment, which is an e_mux
  assign timer_s1_write_n = ~(cpu_0_data_master_granted_timer_s1 & cpu_0_data_master_write);

  assign shifted_address_to_timer_s1_from_cpu_0_data_master = cpu_0_data_master_address_to_slave;
  //timer_s1_address mux, which is an e_mux
  assign timer_s1_address = shifted_address_to_timer_s1_from_cpu_0_data_master >> 2;

  //d1_timer_s1_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_timer_s1_end_xfer <= 1;
      else 
        d1_timer_s1_end_xfer <= timer_s1_end_xfer;
    end


  //timer_s1_waits_for_read in a cycle, which is an e_mux
  assign timer_s1_waits_for_read = timer_s1_in_a_read_cycle & timer_s1_begins_xfer;

  //timer_s1_in_a_read_cycle assignment, which is an e_assign
  assign timer_s1_in_a_read_cycle = cpu_0_data_master_granted_timer_s1 & cpu_0_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = timer_s1_in_a_read_cycle;

  //timer_s1_waits_for_write in a cycle, which is an e_mux
  assign timer_s1_waits_for_write = timer_s1_in_a_write_cycle & 0;

  //timer_s1_in_a_write_cycle assignment, which is an e_assign
  assign timer_s1_in_a_write_cycle = cpu_0_data_master_granted_timer_s1 & cpu_0_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = timer_s1_in_a_write_cycle;

  assign wait_for_timer_s1_counter = 0;
  //assign timer_s1_irq_from_sa = timer_s1_irq so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign timer_s1_irq_from_sa = timer_s1_irq;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //timer/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule


// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module tri_state_bridge_flash_avalon_slave_arbitrator (
                                                        // inputs:
                                                         clk,
                                                         cpu_0_data_master_address_to_slave,
                                                         cpu_0_data_master_byteenable,
                                                         cpu_0_data_master_dbs_address,
                                                         cpu_0_data_master_dbs_write_8,
                                                         cpu_0_data_master_no_byte_enables_and_last_term,
                                                         cpu_0_data_master_read,
                                                         cpu_0_data_master_write,
                                                         cpu_0_instruction_master_address_to_slave,
                                                         cpu_0_instruction_master_dbs_address,
                                                         cpu_0_instruction_master_latency_counter,
                                                         cpu_0_instruction_master_read,
                                                         reset_n,

                                                        // outputs:
                                                         cfi_flash_0_s1_wait_counter_eq_0,
                                                         cfi_flash_0_s1_wait_counter_eq_1,
                                                         cpu_0_data_master_byteenable_cfi_flash_0_s1,
                                                         cpu_0_data_master_granted_cfi_flash_0_s1,
                                                         cpu_0_data_master_qualified_request_cfi_flash_0_s1,
                                                         cpu_0_data_master_read_data_valid_cfi_flash_0_s1,
                                                         cpu_0_data_master_requests_cfi_flash_0_s1,
                                                         cpu_0_instruction_master_granted_cfi_flash_0_s1,
                                                         cpu_0_instruction_master_qualified_request_cfi_flash_0_s1,
                                                         cpu_0_instruction_master_read_data_valid_cfi_flash_0_s1,
                                                         cpu_0_instruction_master_requests_cfi_flash_0_s1,
                                                         d1_tri_state_bridge_flash_avalon_slave_end_xfer,
                                                         incoming_tri_state_bridge_flash_data,
                                                         incoming_tri_state_bridge_flash_data_with_Xs_converted_to_0,
                                                         registered_cpu_0_data_master_read_data_valid_cfi_flash_0_s1,
                                                         select_n_to_the_cfi_flash_0,
                                                         tri_state_bridge_flash_address,
                                                         tri_state_bridge_flash_data,
                                                         tri_state_bridge_flash_readn,
                                                         write_n_to_the_cfi_flash_0
                                                      )
;

  output           cfi_flash_0_s1_wait_counter_eq_0;
  output           cfi_flash_0_s1_wait_counter_eq_1;
  output           cpu_0_data_master_byteenable_cfi_flash_0_s1;
  output           cpu_0_data_master_granted_cfi_flash_0_s1;
  output           cpu_0_data_master_qualified_request_cfi_flash_0_s1;
  output           cpu_0_data_master_read_data_valid_cfi_flash_0_s1;
  output           cpu_0_data_master_requests_cfi_flash_0_s1;
  output           cpu_0_instruction_master_granted_cfi_flash_0_s1;
  output           cpu_0_instruction_master_qualified_request_cfi_flash_0_s1;
  output           cpu_0_instruction_master_read_data_valid_cfi_flash_0_s1;
  output           cpu_0_instruction_master_requests_cfi_flash_0_s1;
  output           d1_tri_state_bridge_flash_avalon_slave_end_xfer;
  output  [  7: 0] incoming_tri_state_bridge_flash_data;
  output  [  7: 0] incoming_tri_state_bridge_flash_data_with_Xs_converted_to_0;
  output           registered_cpu_0_data_master_read_data_valid_cfi_flash_0_s1;
  output           select_n_to_the_cfi_flash_0;
  output  [ 21: 0] tri_state_bridge_flash_address;
  inout   [  7: 0] tri_state_bridge_flash_data;
  output           tri_state_bridge_flash_readn;
  output           write_n_to_the_cfi_flash_0;
  input            clk;
  input   [ 23: 0] cpu_0_data_master_address_to_slave;
  input   [  3: 0] cpu_0_data_master_byteenable;
  input   [  1: 0] cpu_0_data_master_dbs_address;
  input   [  7: 0] cpu_0_data_master_dbs_write_8;
  input            cpu_0_data_master_no_byte_enables_and_last_term;
  input            cpu_0_data_master_read;
  input            cpu_0_data_master_write;
  input   [ 23: 0] cpu_0_instruction_master_address_to_slave;
  input   [  1: 0] cpu_0_instruction_master_dbs_address;
  input   [  1: 0] cpu_0_instruction_master_latency_counter;
  input            cpu_0_instruction_master_read;
  input            reset_n;

  wire    [  2: 0] cfi_flash_0_s1_counter_load_value;
  wire             cfi_flash_0_s1_in_a_read_cycle;
  wire             cfi_flash_0_s1_in_a_write_cycle;
  wire             cfi_flash_0_s1_pretend_byte_enable;
  reg     [  2: 0] cfi_flash_0_s1_wait_counter;
  wire             cfi_flash_0_s1_wait_counter_eq_0;
  wire             cfi_flash_0_s1_wait_counter_eq_1;
  wire             cfi_flash_0_s1_waits_for_read;
  wire             cfi_flash_0_s1_waits_for_write;
  wire             cfi_flash_0_s1_with_write_latency;
  wire             cpu_0_data_master_arbiterlock;
  wire             cpu_0_data_master_arbiterlock2;
  wire             cpu_0_data_master_byteenable_cfi_flash_0_s1;
  wire             cpu_0_data_master_byteenable_cfi_flash_0_s1_segment_0;
  wire             cpu_0_data_master_byteenable_cfi_flash_0_s1_segment_1;
  wire             cpu_0_data_master_byteenable_cfi_flash_0_s1_segment_2;
  wire             cpu_0_data_master_byteenable_cfi_flash_0_s1_segment_3;
  wire             cpu_0_data_master_continuerequest;
  wire             cpu_0_data_master_granted_cfi_flash_0_s1;
  wire             cpu_0_data_master_qualified_request_cfi_flash_0_s1;
  wire             cpu_0_data_master_read_data_valid_cfi_flash_0_s1;
  reg     [  1: 0] cpu_0_data_master_read_data_valid_cfi_flash_0_s1_shift_register;
  wire             cpu_0_data_master_read_data_valid_cfi_flash_0_s1_shift_register_in;
  wire             cpu_0_data_master_requests_cfi_flash_0_s1;
  wire             cpu_0_data_master_saved_grant_cfi_flash_0_s1;
  wire             cpu_0_instruction_master_arbiterlock;
  wire             cpu_0_instruction_master_arbiterlock2;
  wire             cpu_0_instruction_master_continuerequest;
  wire             cpu_0_instruction_master_granted_cfi_flash_0_s1;
  wire             cpu_0_instruction_master_qualified_request_cfi_flash_0_s1;
  wire             cpu_0_instruction_master_read_data_valid_cfi_flash_0_s1;
  reg     [  1: 0] cpu_0_instruction_master_read_data_valid_cfi_flash_0_s1_shift_register;
  wire             cpu_0_instruction_master_read_data_valid_cfi_flash_0_s1_shift_register_in;
  wire             cpu_0_instruction_master_requests_cfi_flash_0_s1;
  wire             cpu_0_instruction_master_saved_grant_cfi_flash_0_s1;
  reg              d1_in_a_write_cycle /* synthesis ALTERA_ATTRIBUTE = "FAST_OUTPUT_ENABLE_REGISTER=ON"  */;
  reg     [  7: 0] d1_outgoing_tri_state_bridge_flash_data /* synthesis ALTERA_ATTRIBUTE = "FAST_OUTPUT_REGISTER=ON"  */;
  reg              d1_reasons_to_wait;
  reg              d1_tri_state_bridge_flash_avalon_slave_end_xfer;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_tri_state_bridge_flash_avalon_slave;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  reg     [  7: 0] incoming_tri_state_bridge_flash_data /* synthesis ALTERA_ATTRIBUTE = "FAST_INPUT_REGISTER=ON"  */;
  wire             incoming_tri_state_bridge_flash_data_bit_0_is_x;
  wire             incoming_tri_state_bridge_flash_data_bit_1_is_x;
  wire             incoming_tri_state_bridge_flash_data_bit_2_is_x;
  wire             incoming_tri_state_bridge_flash_data_bit_3_is_x;
  wire             incoming_tri_state_bridge_flash_data_bit_4_is_x;
  wire             incoming_tri_state_bridge_flash_data_bit_5_is_x;
  wire             incoming_tri_state_bridge_flash_data_bit_6_is_x;
  wire             incoming_tri_state_bridge_flash_data_bit_7_is_x;
  wire    [  7: 0] incoming_tri_state_bridge_flash_data_with_Xs_converted_to_0;
  reg              last_cycle_cpu_0_data_master_granted_slave_cfi_flash_0_s1;
  reg              last_cycle_cpu_0_instruction_master_granted_slave_cfi_flash_0_s1;
  wire    [  7: 0] outgoing_tri_state_bridge_flash_data;
  wire    [  1: 0] p1_cpu_0_data_master_read_data_valid_cfi_flash_0_s1_shift_register;
  wire    [  1: 0] p1_cpu_0_instruction_master_read_data_valid_cfi_flash_0_s1_shift_register;
  wire             p1_select_n_to_the_cfi_flash_0;
  wire    [ 21: 0] p1_tri_state_bridge_flash_address;
  wire             p1_tri_state_bridge_flash_readn;
  wire             p1_write_n_to_the_cfi_flash_0;
  wire             registered_cpu_0_data_master_read_data_valid_cfi_flash_0_s1;
  reg              select_n_to_the_cfi_flash_0 /* synthesis ALTERA_ATTRIBUTE = "FAST_OUTPUT_REGISTER=ON"  */;
  wire             time_to_write;
  reg     [ 21: 0] tri_state_bridge_flash_address /* synthesis ALTERA_ATTRIBUTE = "FAST_OUTPUT_REGISTER=ON"  */;
  wire             tri_state_bridge_flash_avalon_slave_allgrants;
  wire             tri_state_bridge_flash_avalon_slave_allow_new_arb_cycle;
  wire             tri_state_bridge_flash_avalon_slave_any_bursting_master_saved_grant;
  wire             tri_state_bridge_flash_avalon_slave_any_continuerequest;
  reg     [  1: 0] tri_state_bridge_flash_avalon_slave_arb_addend;
  wire             tri_state_bridge_flash_avalon_slave_arb_counter_enable;
  reg     [  2: 0] tri_state_bridge_flash_avalon_slave_arb_share_counter;
  wire    [  2: 0] tri_state_bridge_flash_avalon_slave_arb_share_counter_next_value;
  wire    [  2: 0] tri_state_bridge_flash_avalon_slave_arb_share_set_values;
  wire    [  1: 0] tri_state_bridge_flash_avalon_slave_arb_winner;
  wire             tri_state_bridge_flash_avalon_slave_arbitration_holdoff_internal;
  wire             tri_state_bridge_flash_avalon_slave_beginbursttransfer_internal;
  wire             tri_state_bridge_flash_avalon_slave_begins_xfer;
  wire    [  3: 0] tri_state_bridge_flash_avalon_slave_chosen_master_double_vector;
  wire    [  1: 0] tri_state_bridge_flash_avalon_slave_chosen_master_rot_left;
  wire             tri_state_bridge_flash_avalon_slave_end_xfer;
  wire             tri_state_bridge_flash_avalon_slave_firsttransfer;
  wire    [  1: 0] tri_state_bridge_flash_avalon_slave_grant_vector;
  wire    [  1: 0] tri_state_bridge_flash_avalon_slave_master_qreq_vector;
  wire             tri_state_bridge_flash_avalon_slave_non_bursting_master_requests;
  wire             tri_state_bridge_flash_avalon_slave_read_pending;
  reg              tri_state_bridge_flash_avalon_slave_reg_firsttransfer;
  reg     [  1: 0] tri_state_bridge_flash_avalon_slave_saved_chosen_master_vector;
  reg              tri_state_bridge_flash_avalon_slave_slavearbiterlockenable;
  wire             tri_state_bridge_flash_avalon_slave_slavearbiterlockenable2;
  wire             tri_state_bridge_flash_avalon_slave_unreg_firsttransfer;
  wire             tri_state_bridge_flash_avalon_slave_write_pending;
  wire    [  7: 0] tri_state_bridge_flash_data;
  reg              tri_state_bridge_flash_readn /* synthesis ALTERA_ATTRIBUTE = "FAST_OUTPUT_REGISTER=ON"  */;
  wire             wait_for_cfi_flash_0_s1_counter;
  reg              write_n_to_the_cfi_flash_0 /* synthesis ALTERA_ATTRIBUTE = "FAST_OUTPUT_REGISTER=ON"  */;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~tri_state_bridge_flash_avalon_slave_end_xfer;
    end


  assign tri_state_bridge_flash_avalon_slave_begins_xfer = ~d1_reasons_to_wait & ((cpu_0_data_master_qualified_request_cfi_flash_0_s1 | cpu_0_instruction_master_qualified_request_cfi_flash_0_s1));
  assign cpu_0_data_master_requests_cfi_flash_0_s1 = ({cpu_0_data_master_address_to_slave[23 : 22] , 22'b0} == 24'h400000) & (cpu_0_data_master_read | cpu_0_data_master_write);
  //~select_n_to_the_cfi_flash_0 of type chipselect to ~p1_select_n_to_the_cfi_flash_0, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          select_n_to_the_cfi_flash_0 <= ~0;
      else 
        select_n_to_the_cfi_flash_0 <= p1_select_n_to_the_cfi_flash_0;
    end


  assign tri_state_bridge_flash_avalon_slave_write_pending = 0;
  //tri_state_bridge_flash/avalon_slave read pending calc, which is an e_assign
  assign tri_state_bridge_flash_avalon_slave_read_pending = 0;

  //registered rdv signal_name registered_cpu_0_data_master_read_data_valid_cfi_flash_0_s1 assignment, which is an e_assign
  assign registered_cpu_0_data_master_read_data_valid_cfi_flash_0_s1 = cpu_0_data_master_read_data_valid_cfi_flash_0_s1_shift_register[0];

  //tri_state_bridge_flash_avalon_slave_arb_share_counter set values, which is an e_mux
  assign tri_state_bridge_flash_avalon_slave_arb_share_set_values = (cpu_0_data_master_granted_cfi_flash_0_s1)? 4 :
    (cpu_0_instruction_master_granted_cfi_flash_0_s1)? 4 :
    (cpu_0_data_master_granted_cfi_flash_0_s1)? 4 :
    (cpu_0_instruction_master_granted_cfi_flash_0_s1)? 4 :
    1;

  //tri_state_bridge_flash_avalon_slave_non_bursting_master_requests mux, which is an e_mux
  assign tri_state_bridge_flash_avalon_slave_non_bursting_master_requests = cpu_0_data_master_requests_cfi_flash_0_s1 |
    cpu_0_instruction_master_requests_cfi_flash_0_s1 |
    cpu_0_data_master_requests_cfi_flash_0_s1 |
    cpu_0_instruction_master_requests_cfi_flash_0_s1;

  //tri_state_bridge_flash_avalon_slave_any_bursting_master_saved_grant mux, which is an e_mux
  assign tri_state_bridge_flash_avalon_slave_any_bursting_master_saved_grant = 0;

  //tri_state_bridge_flash_avalon_slave_arb_share_counter_next_value assignment, which is an e_assign
  assign tri_state_bridge_flash_avalon_slave_arb_share_counter_next_value = tri_state_bridge_flash_avalon_slave_firsttransfer ? (tri_state_bridge_flash_avalon_slave_arb_share_set_values - 1) : |tri_state_bridge_flash_avalon_slave_arb_share_counter ? (tri_state_bridge_flash_avalon_slave_arb_share_counter - 1) : 0;

  //tri_state_bridge_flash_avalon_slave_allgrants all slave grants, which is an e_mux
  assign tri_state_bridge_flash_avalon_slave_allgrants = (|tri_state_bridge_flash_avalon_slave_grant_vector) |
    (|tri_state_bridge_flash_avalon_slave_grant_vector) |
    (|tri_state_bridge_flash_avalon_slave_grant_vector) |
    (|tri_state_bridge_flash_avalon_slave_grant_vector);

  //tri_state_bridge_flash_avalon_slave_end_xfer assignment, which is an e_assign
  assign tri_state_bridge_flash_avalon_slave_end_xfer = ~(cfi_flash_0_s1_waits_for_read | cfi_flash_0_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_tri_state_bridge_flash_avalon_slave arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_tri_state_bridge_flash_avalon_slave = tri_state_bridge_flash_avalon_slave_end_xfer & (~tri_state_bridge_flash_avalon_slave_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //tri_state_bridge_flash_avalon_slave_arb_share_counter arbitration counter enable, which is an e_assign
  assign tri_state_bridge_flash_avalon_slave_arb_counter_enable = (end_xfer_arb_share_counter_term_tri_state_bridge_flash_avalon_slave & tri_state_bridge_flash_avalon_slave_allgrants) | (end_xfer_arb_share_counter_term_tri_state_bridge_flash_avalon_slave & ~tri_state_bridge_flash_avalon_slave_non_bursting_master_requests);

  //tri_state_bridge_flash_avalon_slave_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          tri_state_bridge_flash_avalon_slave_arb_share_counter <= 0;
      else if (tri_state_bridge_flash_avalon_slave_arb_counter_enable)
          tri_state_bridge_flash_avalon_slave_arb_share_counter <= tri_state_bridge_flash_avalon_slave_arb_share_counter_next_value;
    end


  //tri_state_bridge_flash_avalon_slave_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          tri_state_bridge_flash_avalon_slave_slavearbiterlockenable <= 0;
      else if ((|tri_state_bridge_flash_avalon_slave_master_qreq_vector & end_xfer_arb_share_counter_term_tri_state_bridge_flash_avalon_slave) | (end_xfer_arb_share_counter_term_tri_state_bridge_flash_avalon_slave & ~tri_state_bridge_flash_avalon_slave_non_bursting_master_requests))
          tri_state_bridge_flash_avalon_slave_slavearbiterlockenable <= |tri_state_bridge_flash_avalon_slave_arb_share_counter_next_value;
    end


  //cpu_0/data_master tri_state_bridge_flash/avalon_slave arbiterlock, which is an e_assign
  assign cpu_0_data_master_arbiterlock = tri_state_bridge_flash_avalon_slave_slavearbiterlockenable & cpu_0_data_master_continuerequest;

  //tri_state_bridge_flash_avalon_slave_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign tri_state_bridge_flash_avalon_slave_slavearbiterlockenable2 = |tri_state_bridge_flash_avalon_slave_arb_share_counter_next_value;

  //cpu_0/data_master tri_state_bridge_flash/avalon_slave arbiterlock2, which is an e_assign
  assign cpu_0_data_master_arbiterlock2 = tri_state_bridge_flash_avalon_slave_slavearbiterlockenable2 & cpu_0_data_master_continuerequest;

  //cpu_0/instruction_master tri_state_bridge_flash/avalon_slave arbiterlock, which is an e_assign
  assign cpu_0_instruction_master_arbiterlock = tri_state_bridge_flash_avalon_slave_slavearbiterlockenable & cpu_0_instruction_master_continuerequest;

  //cpu_0/instruction_master tri_state_bridge_flash/avalon_slave arbiterlock2, which is an e_assign
  assign cpu_0_instruction_master_arbiterlock2 = tri_state_bridge_flash_avalon_slave_slavearbiterlockenable2 & cpu_0_instruction_master_continuerequest;

  //cpu_0/instruction_master granted cfi_flash_0/s1 last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          last_cycle_cpu_0_instruction_master_granted_slave_cfi_flash_0_s1 <= 0;
      else 
        last_cycle_cpu_0_instruction_master_granted_slave_cfi_flash_0_s1 <= cpu_0_instruction_master_saved_grant_cfi_flash_0_s1 ? 1 : (tri_state_bridge_flash_avalon_slave_arbitration_holdoff_internal | ~cpu_0_instruction_master_requests_cfi_flash_0_s1) ? 0 : last_cycle_cpu_0_instruction_master_granted_slave_cfi_flash_0_s1;
    end


  //cpu_0_instruction_master_continuerequest continued request, which is an e_mux
  assign cpu_0_instruction_master_continuerequest = last_cycle_cpu_0_instruction_master_granted_slave_cfi_flash_0_s1 & cpu_0_instruction_master_requests_cfi_flash_0_s1;

  //tri_state_bridge_flash_avalon_slave_any_continuerequest at least one master continues requesting, which is an e_mux
  assign tri_state_bridge_flash_avalon_slave_any_continuerequest = cpu_0_instruction_master_continuerequest |
    cpu_0_data_master_continuerequest;

  assign cpu_0_data_master_qualified_request_cfi_flash_0_s1 = cpu_0_data_master_requests_cfi_flash_0_s1 & ~((cpu_0_data_master_read & (tri_state_bridge_flash_avalon_slave_write_pending | (tri_state_bridge_flash_avalon_slave_read_pending) | (|cpu_0_data_master_read_data_valid_cfi_flash_0_s1_shift_register))) | ((tri_state_bridge_flash_avalon_slave_read_pending | cpu_0_data_master_no_byte_enables_and_last_term | !cpu_0_data_master_byteenable_cfi_flash_0_s1) & cpu_0_data_master_write) | cpu_0_instruction_master_arbiterlock);
  //cpu_0_data_master_read_data_valid_cfi_flash_0_s1_shift_register_in mux for readlatency shift register, which is an e_mux
  assign cpu_0_data_master_read_data_valid_cfi_flash_0_s1_shift_register_in = cpu_0_data_master_granted_cfi_flash_0_s1 & cpu_0_data_master_read & ~cfi_flash_0_s1_waits_for_read & ~(|cpu_0_data_master_read_data_valid_cfi_flash_0_s1_shift_register);

  //shift register p1 cpu_0_data_master_read_data_valid_cfi_flash_0_s1_shift_register in if flush, otherwise shift left, which is an e_mux
  assign p1_cpu_0_data_master_read_data_valid_cfi_flash_0_s1_shift_register = {cpu_0_data_master_read_data_valid_cfi_flash_0_s1_shift_register, cpu_0_data_master_read_data_valid_cfi_flash_0_s1_shift_register_in};

  //cpu_0_data_master_read_data_valid_cfi_flash_0_s1_shift_register for remembering which master asked for a fixed latency read, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_0_data_master_read_data_valid_cfi_flash_0_s1_shift_register <= 0;
      else 
        cpu_0_data_master_read_data_valid_cfi_flash_0_s1_shift_register <= p1_cpu_0_data_master_read_data_valid_cfi_flash_0_s1_shift_register;
    end


  //local readdatavalid cpu_0_data_master_read_data_valid_cfi_flash_0_s1, which is an e_mux
  assign cpu_0_data_master_read_data_valid_cfi_flash_0_s1 = cpu_0_data_master_read_data_valid_cfi_flash_0_s1_shift_register[1];

  //tri_state_bridge_flash_data register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          incoming_tri_state_bridge_flash_data <= 0;
      else 
        incoming_tri_state_bridge_flash_data <= tri_state_bridge_flash_data;
    end


  //cfi_flash_0_s1_with_write_latency assignment, which is an e_assign
  assign cfi_flash_0_s1_with_write_latency = in_a_write_cycle & (cpu_0_data_master_qualified_request_cfi_flash_0_s1 | cpu_0_instruction_master_qualified_request_cfi_flash_0_s1);

  //time to write the data, which is an e_mux
  assign time_to_write = (cfi_flash_0_s1_with_write_latency)? 1 :
    0;

  //d1_outgoing_tri_state_bridge_flash_data register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_outgoing_tri_state_bridge_flash_data <= 0;
      else 
        d1_outgoing_tri_state_bridge_flash_data <= outgoing_tri_state_bridge_flash_data;
    end


  //write cycle delayed by 1, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_in_a_write_cycle <= 0;
      else 
        d1_in_a_write_cycle <= time_to_write;
    end


  //d1_outgoing_tri_state_bridge_flash_data tristate driver, which is an e_assign
  assign tri_state_bridge_flash_data = (d1_in_a_write_cycle)? d1_outgoing_tri_state_bridge_flash_data:{8{1'bz}};

  //outgoing_tri_state_bridge_flash_data mux, which is an e_mux
  assign outgoing_tri_state_bridge_flash_data = cpu_0_data_master_dbs_write_8;

  assign cpu_0_instruction_master_requests_cfi_flash_0_s1 = (({cpu_0_instruction_master_address_to_slave[23 : 22] , 22'b0} == 24'h400000) & (cpu_0_instruction_master_read)) & cpu_0_instruction_master_read;
  //cpu_0/data_master granted cfi_flash_0/s1 last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          last_cycle_cpu_0_data_master_granted_slave_cfi_flash_0_s1 <= 0;
      else 
        last_cycle_cpu_0_data_master_granted_slave_cfi_flash_0_s1 <= cpu_0_data_master_saved_grant_cfi_flash_0_s1 ? 1 : (tri_state_bridge_flash_avalon_slave_arbitration_holdoff_internal | ~cpu_0_data_master_requests_cfi_flash_0_s1) ? 0 : last_cycle_cpu_0_data_master_granted_slave_cfi_flash_0_s1;
    end


  //cpu_0_data_master_continuerequest continued request, which is an e_mux
  assign cpu_0_data_master_continuerequest = last_cycle_cpu_0_data_master_granted_slave_cfi_flash_0_s1 & cpu_0_data_master_requests_cfi_flash_0_s1;

  assign cpu_0_instruction_master_qualified_request_cfi_flash_0_s1 = cpu_0_instruction_master_requests_cfi_flash_0_s1 & ~((cpu_0_instruction_master_read & (tri_state_bridge_flash_avalon_slave_write_pending | (tri_state_bridge_flash_avalon_slave_read_pending) | (2 < cpu_0_instruction_master_latency_counter))) | cpu_0_data_master_arbiterlock);
  //cpu_0_instruction_master_read_data_valid_cfi_flash_0_s1_shift_register_in mux for readlatency shift register, which is an e_mux
  assign cpu_0_instruction_master_read_data_valid_cfi_flash_0_s1_shift_register_in = cpu_0_instruction_master_granted_cfi_flash_0_s1 & cpu_0_instruction_master_read & ~cfi_flash_0_s1_waits_for_read;

  //shift register p1 cpu_0_instruction_master_read_data_valid_cfi_flash_0_s1_shift_register in if flush, otherwise shift left, which is an e_mux
  assign p1_cpu_0_instruction_master_read_data_valid_cfi_flash_0_s1_shift_register = {cpu_0_instruction_master_read_data_valid_cfi_flash_0_s1_shift_register, cpu_0_instruction_master_read_data_valid_cfi_flash_0_s1_shift_register_in};

  //cpu_0_instruction_master_read_data_valid_cfi_flash_0_s1_shift_register for remembering which master asked for a fixed latency read, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_0_instruction_master_read_data_valid_cfi_flash_0_s1_shift_register <= 0;
      else 
        cpu_0_instruction_master_read_data_valid_cfi_flash_0_s1_shift_register <= p1_cpu_0_instruction_master_read_data_valid_cfi_flash_0_s1_shift_register;
    end


  //local readdatavalid cpu_0_instruction_master_read_data_valid_cfi_flash_0_s1, which is an e_mux
  assign cpu_0_instruction_master_read_data_valid_cfi_flash_0_s1 = cpu_0_instruction_master_read_data_valid_cfi_flash_0_s1_shift_register[1];

  //allow new arb cycle for tri_state_bridge_flash/avalon_slave, which is an e_assign
  assign tri_state_bridge_flash_avalon_slave_allow_new_arb_cycle = ~cpu_0_data_master_arbiterlock & ~cpu_0_instruction_master_arbiterlock;

  //cpu_0/instruction_master assignment into master qualified-requests vector for cfi_flash_0/s1, which is an e_assign
  assign tri_state_bridge_flash_avalon_slave_master_qreq_vector[0] = cpu_0_instruction_master_qualified_request_cfi_flash_0_s1;

  //cpu_0/instruction_master grant cfi_flash_0/s1, which is an e_assign
  assign cpu_0_instruction_master_granted_cfi_flash_0_s1 = tri_state_bridge_flash_avalon_slave_grant_vector[0];

  //cpu_0/instruction_master saved-grant cfi_flash_0/s1, which is an e_assign
  assign cpu_0_instruction_master_saved_grant_cfi_flash_0_s1 = tri_state_bridge_flash_avalon_slave_arb_winner[0] && cpu_0_instruction_master_requests_cfi_flash_0_s1;

  //cpu_0/data_master assignment into master qualified-requests vector for cfi_flash_0/s1, which is an e_assign
  assign tri_state_bridge_flash_avalon_slave_master_qreq_vector[1] = cpu_0_data_master_qualified_request_cfi_flash_0_s1;

  //cpu_0/data_master grant cfi_flash_0/s1, which is an e_assign
  assign cpu_0_data_master_granted_cfi_flash_0_s1 = tri_state_bridge_flash_avalon_slave_grant_vector[1];

  //cpu_0/data_master saved-grant cfi_flash_0/s1, which is an e_assign
  assign cpu_0_data_master_saved_grant_cfi_flash_0_s1 = tri_state_bridge_flash_avalon_slave_arb_winner[1] && cpu_0_data_master_requests_cfi_flash_0_s1;

  //tri_state_bridge_flash/avalon_slave chosen-master double-vector, which is an e_assign
  assign tri_state_bridge_flash_avalon_slave_chosen_master_double_vector = {tri_state_bridge_flash_avalon_slave_master_qreq_vector, tri_state_bridge_flash_avalon_slave_master_qreq_vector} & ({~tri_state_bridge_flash_avalon_slave_master_qreq_vector, ~tri_state_bridge_flash_avalon_slave_master_qreq_vector} + tri_state_bridge_flash_avalon_slave_arb_addend);

  //stable onehot encoding of arb winner
  assign tri_state_bridge_flash_avalon_slave_arb_winner = (tri_state_bridge_flash_avalon_slave_allow_new_arb_cycle & | tri_state_bridge_flash_avalon_slave_grant_vector) ? tri_state_bridge_flash_avalon_slave_grant_vector : tri_state_bridge_flash_avalon_slave_saved_chosen_master_vector;

  //saved tri_state_bridge_flash_avalon_slave_grant_vector, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          tri_state_bridge_flash_avalon_slave_saved_chosen_master_vector <= 0;
      else if (tri_state_bridge_flash_avalon_slave_allow_new_arb_cycle)
          tri_state_bridge_flash_avalon_slave_saved_chosen_master_vector <= |tri_state_bridge_flash_avalon_slave_grant_vector ? tri_state_bridge_flash_avalon_slave_grant_vector : tri_state_bridge_flash_avalon_slave_saved_chosen_master_vector;
    end


  //onehot encoding of chosen master
  assign tri_state_bridge_flash_avalon_slave_grant_vector = {(tri_state_bridge_flash_avalon_slave_chosen_master_double_vector[1] | tri_state_bridge_flash_avalon_slave_chosen_master_double_vector[3]),
    (tri_state_bridge_flash_avalon_slave_chosen_master_double_vector[0] | tri_state_bridge_flash_avalon_slave_chosen_master_double_vector[2])};

  //tri_state_bridge_flash/avalon_slave chosen master rotated left, which is an e_assign
  assign tri_state_bridge_flash_avalon_slave_chosen_master_rot_left = (tri_state_bridge_flash_avalon_slave_arb_winner << 1) ? (tri_state_bridge_flash_avalon_slave_arb_winner << 1) : 1;

  //tri_state_bridge_flash/avalon_slave's addend for next-master-grant
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          tri_state_bridge_flash_avalon_slave_arb_addend <= 1;
      else if (|tri_state_bridge_flash_avalon_slave_grant_vector)
          tri_state_bridge_flash_avalon_slave_arb_addend <= tri_state_bridge_flash_avalon_slave_end_xfer? tri_state_bridge_flash_avalon_slave_chosen_master_rot_left : tri_state_bridge_flash_avalon_slave_grant_vector;
    end


  assign p1_select_n_to_the_cfi_flash_0 = ~(cpu_0_data_master_granted_cfi_flash_0_s1 | cpu_0_instruction_master_granted_cfi_flash_0_s1);
  //tri_state_bridge_flash_avalon_slave_firsttransfer first transaction, which is an e_assign
  assign tri_state_bridge_flash_avalon_slave_firsttransfer = tri_state_bridge_flash_avalon_slave_begins_xfer ? tri_state_bridge_flash_avalon_slave_unreg_firsttransfer : tri_state_bridge_flash_avalon_slave_reg_firsttransfer;

  //tri_state_bridge_flash_avalon_slave_unreg_firsttransfer first transaction, which is an e_assign
  assign tri_state_bridge_flash_avalon_slave_unreg_firsttransfer = ~(tri_state_bridge_flash_avalon_slave_slavearbiterlockenable & tri_state_bridge_flash_avalon_slave_any_continuerequest);

  //tri_state_bridge_flash_avalon_slave_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          tri_state_bridge_flash_avalon_slave_reg_firsttransfer <= 1'b1;
      else if (tri_state_bridge_flash_avalon_slave_begins_xfer)
          tri_state_bridge_flash_avalon_slave_reg_firsttransfer <= tri_state_bridge_flash_avalon_slave_unreg_firsttransfer;
    end


  //tri_state_bridge_flash_avalon_slave_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign tri_state_bridge_flash_avalon_slave_beginbursttransfer_internal = tri_state_bridge_flash_avalon_slave_begins_xfer;

  //tri_state_bridge_flash_avalon_slave_arbitration_holdoff_internal arbitration_holdoff, which is an e_assign
  assign tri_state_bridge_flash_avalon_slave_arbitration_holdoff_internal = tri_state_bridge_flash_avalon_slave_begins_xfer & tri_state_bridge_flash_avalon_slave_firsttransfer;

  //~tri_state_bridge_flash_readn of type read to ~p1_tri_state_bridge_flash_readn, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          tri_state_bridge_flash_readn <= ~0;
      else 
        tri_state_bridge_flash_readn <= p1_tri_state_bridge_flash_readn;
    end


  //~p1_tri_state_bridge_flash_readn assignment, which is an e_mux
  assign p1_tri_state_bridge_flash_readn = ~(((cpu_0_data_master_granted_cfi_flash_0_s1 & cpu_0_data_master_read) | (cpu_0_instruction_master_granted_cfi_flash_0_s1 & cpu_0_instruction_master_read))& ~tri_state_bridge_flash_avalon_slave_begins_xfer & (cfi_flash_0_s1_wait_counter < 5));

  //~write_n_to_the_cfi_flash_0 of type write to ~p1_write_n_to_the_cfi_flash_0, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          write_n_to_the_cfi_flash_0 <= ~0;
      else 
        write_n_to_the_cfi_flash_0 <= p1_write_n_to_the_cfi_flash_0;
    end


  //~p1_write_n_to_the_cfi_flash_0 assignment, which is an e_mux
  assign p1_write_n_to_the_cfi_flash_0 = ~(((cpu_0_data_master_granted_cfi_flash_0_s1 & cpu_0_data_master_write)) & ~tri_state_bridge_flash_avalon_slave_begins_xfer & (cfi_flash_0_s1_wait_counter >= 2) & (cfi_flash_0_s1_wait_counter < 7) & cfi_flash_0_s1_pretend_byte_enable);

  //tri_state_bridge_flash_address of type address to p1_tri_state_bridge_flash_address, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          tri_state_bridge_flash_address <= 0;
      else 
        tri_state_bridge_flash_address <= p1_tri_state_bridge_flash_address;
    end


  //p1_tri_state_bridge_flash_address mux, which is an e_mux
  assign p1_tri_state_bridge_flash_address = (cpu_0_data_master_granted_cfi_flash_0_s1)? ({cpu_0_data_master_address_to_slave >> 2,
    cpu_0_data_master_dbs_address[1 : 0]}) :
    ({cpu_0_instruction_master_address_to_slave >> 2,
    cpu_0_instruction_master_dbs_address[1 : 0]});

  //d1_tri_state_bridge_flash_avalon_slave_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_tri_state_bridge_flash_avalon_slave_end_xfer <= 1;
      else 
        d1_tri_state_bridge_flash_avalon_slave_end_xfer <= tri_state_bridge_flash_avalon_slave_end_xfer;
    end


  //cfi_flash_0_s1_wait_counter_eq_1 assignment, which is an e_assign
  assign cfi_flash_0_s1_wait_counter_eq_1 = cfi_flash_0_s1_wait_counter == 1;

  //cfi_flash_0_s1_waits_for_read in a cycle, which is an e_mux
  assign cfi_flash_0_s1_waits_for_read = cfi_flash_0_s1_in_a_read_cycle & wait_for_cfi_flash_0_s1_counter;

  //cfi_flash_0_s1_in_a_read_cycle assignment, which is an e_assign
  assign cfi_flash_0_s1_in_a_read_cycle = (cpu_0_data_master_granted_cfi_flash_0_s1 & cpu_0_data_master_read) | (cpu_0_instruction_master_granted_cfi_flash_0_s1 & cpu_0_instruction_master_read);

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = cfi_flash_0_s1_in_a_read_cycle;

  //cfi_flash_0_s1_waits_for_write in a cycle, which is an e_mux
  assign cfi_flash_0_s1_waits_for_write = cfi_flash_0_s1_in_a_write_cycle & wait_for_cfi_flash_0_s1_counter;

  //cfi_flash_0_s1_in_a_write_cycle assignment, which is an e_assign
  assign cfi_flash_0_s1_in_a_write_cycle = cpu_0_data_master_granted_cfi_flash_0_s1 & cpu_0_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = cfi_flash_0_s1_in_a_write_cycle;

  assign cfi_flash_0_s1_wait_counter_eq_0 = cfi_flash_0_s1_wait_counter == 0;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cfi_flash_0_s1_wait_counter <= 0;
      else 
        cfi_flash_0_s1_wait_counter <= cfi_flash_0_s1_counter_load_value;
    end


  assign cfi_flash_0_s1_counter_load_value = ((cfi_flash_0_s1_in_a_write_cycle & tri_state_bridge_flash_avalon_slave_begins_xfer))? 7 :
    ((cfi_flash_0_s1_in_a_read_cycle & tri_state_bridge_flash_avalon_slave_begins_xfer))? 5 :
    (~cfi_flash_0_s1_wait_counter_eq_0)? cfi_flash_0_s1_wait_counter - 1 :
    0;

  assign wait_for_cfi_flash_0_s1_counter = tri_state_bridge_flash_avalon_slave_begins_xfer | ~cfi_flash_0_s1_wait_counter_eq_0;
  //cfi_flash_0_s1_pretend_byte_enable byte enable port mux, which is an e_mux
  assign cfi_flash_0_s1_pretend_byte_enable = (cpu_0_data_master_granted_cfi_flash_0_s1)? cpu_0_data_master_byteenable_cfi_flash_0_s1 :
    -1;

  assign {cpu_0_data_master_byteenable_cfi_flash_0_s1_segment_3,
cpu_0_data_master_byteenable_cfi_flash_0_s1_segment_2,
cpu_0_data_master_byteenable_cfi_flash_0_s1_segment_1,
cpu_0_data_master_byteenable_cfi_flash_0_s1_segment_0} = cpu_0_data_master_byteenable;
  assign cpu_0_data_master_byteenable_cfi_flash_0_s1 = ((cpu_0_data_master_dbs_address[1 : 0] == 0))? cpu_0_data_master_byteenable_cfi_flash_0_s1_segment_0 :
    ((cpu_0_data_master_dbs_address[1 : 0] == 1))? cpu_0_data_master_byteenable_cfi_flash_0_s1_segment_1 :
    ((cpu_0_data_master_dbs_address[1 : 0] == 2))? cpu_0_data_master_byteenable_cfi_flash_0_s1_segment_2 :
    cpu_0_data_master_byteenable_cfi_flash_0_s1_segment_3;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //incoming_tri_state_bridge_flash_data_bit_0_is_x x check, which is an e_assign_is_x
  assign incoming_tri_state_bridge_flash_data_bit_0_is_x = ^(incoming_tri_state_bridge_flash_data[0]) === 1'bx;

  //Crush incoming_tri_state_bridge_flash_data_with_Xs_converted_to_0[0] Xs to 0, which is an e_assign
  assign incoming_tri_state_bridge_flash_data_with_Xs_converted_to_0[0] = incoming_tri_state_bridge_flash_data_bit_0_is_x ? 1'b0 : incoming_tri_state_bridge_flash_data[0];

  //incoming_tri_state_bridge_flash_data_bit_1_is_x x check, which is an e_assign_is_x
  assign incoming_tri_state_bridge_flash_data_bit_1_is_x = ^(incoming_tri_state_bridge_flash_data[1]) === 1'bx;

  //Crush incoming_tri_state_bridge_flash_data_with_Xs_converted_to_0[1] Xs to 0, which is an e_assign
  assign incoming_tri_state_bridge_flash_data_with_Xs_converted_to_0[1] = incoming_tri_state_bridge_flash_data_bit_1_is_x ? 1'b0 : incoming_tri_state_bridge_flash_data[1];

  //incoming_tri_state_bridge_flash_data_bit_2_is_x x check, which is an e_assign_is_x
  assign incoming_tri_state_bridge_flash_data_bit_2_is_x = ^(incoming_tri_state_bridge_flash_data[2]) === 1'bx;

  //Crush incoming_tri_state_bridge_flash_data_with_Xs_converted_to_0[2] Xs to 0, which is an e_assign
  assign incoming_tri_state_bridge_flash_data_with_Xs_converted_to_0[2] = incoming_tri_state_bridge_flash_data_bit_2_is_x ? 1'b0 : incoming_tri_state_bridge_flash_data[2];

  //incoming_tri_state_bridge_flash_data_bit_3_is_x x check, which is an e_assign_is_x
  assign incoming_tri_state_bridge_flash_data_bit_3_is_x = ^(incoming_tri_state_bridge_flash_data[3]) === 1'bx;

  //Crush incoming_tri_state_bridge_flash_data_with_Xs_converted_to_0[3] Xs to 0, which is an e_assign
  assign incoming_tri_state_bridge_flash_data_with_Xs_converted_to_0[3] = incoming_tri_state_bridge_flash_data_bit_3_is_x ? 1'b0 : incoming_tri_state_bridge_flash_data[3];

  //incoming_tri_state_bridge_flash_data_bit_4_is_x x check, which is an e_assign_is_x
  assign incoming_tri_state_bridge_flash_data_bit_4_is_x = ^(incoming_tri_state_bridge_flash_data[4]) === 1'bx;

  //Crush incoming_tri_state_bridge_flash_data_with_Xs_converted_to_0[4] Xs to 0, which is an e_assign
  assign incoming_tri_state_bridge_flash_data_with_Xs_converted_to_0[4] = incoming_tri_state_bridge_flash_data_bit_4_is_x ? 1'b0 : incoming_tri_state_bridge_flash_data[4];

  //incoming_tri_state_bridge_flash_data_bit_5_is_x x check, which is an e_assign_is_x
  assign incoming_tri_state_bridge_flash_data_bit_5_is_x = ^(incoming_tri_state_bridge_flash_data[5]) === 1'bx;

  //Crush incoming_tri_state_bridge_flash_data_with_Xs_converted_to_0[5] Xs to 0, which is an e_assign
  assign incoming_tri_state_bridge_flash_data_with_Xs_converted_to_0[5] = incoming_tri_state_bridge_flash_data_bit_5_is_x ? 1'b0 : incoming_tri_state_bridge_flash_data[5];

  //incoming_tri_state_bridge_flash_data_bit_6_is_x x check, which is an e_assign_is_x
  assign incoming_tri_state_bridge_flash_data_bit_6_is_x = ^(incoming_tri_state_bridge_flash_data[6]) === 1'bx;

  //Crush incoming_tri_state_bridge_flash_data_with_Xs_converted_to_0[6] Xs to 0, which is an e_assign
  assign incoming_tri_state_bridge_flash_data_with_Xs_converted_to_0[6] = incoming_tri_state_bridge_flash_data_bit_6_is_x ? 1'b0 : incoming_tri_state_bridge_flash_data[6];

  //incoming_tri_state_bridge_flash_data_bit_7_is_x x check, which is an e_assign_is_x
  assign incoming_tri_state_bridge_flash_data_bit_7_is_x = ^(incoming_tri_state_bridge_flash_data[7]) === 1'bx;

  //Crush incoming_tri_state_bridge_flash_data_with_Xs_converted_to_0[7] Xs to 0, which is an e_assign
  assign incoming_tri_state_bridge_flash_data_with_Xs_converted_to_0[7] = incoming_tri_state_bridge_flash_data_bit_7_is_x ? 1'b0 : incoming_tri_state_bridge_flash_data[7];

  //cfi_flash_0/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end


  //grant signals are active simultaneously, which is an e_process
  always @(posedge clk)
    begin
      if (cpu_0_data_master_granted_cfi_flash_0_s1 + cpu_0_instruction_master_granted_cfi_flash_0_s1 > 1)
        begin
          $write("%0d ns: > 1 of grant signals are active simultaneously", $time);
          $stop;
        end
    end


  //saved_grant signals are active simultaneously, which is an e_process
  always @(posedge clk)
    begin
      if (cpu_0_data_master_saved_grant_cfi_flash_0_s1 + cpu_0_instruction_master_saved_grant_cfi_flash_0_s1 > 1)
        begin
          $write("%0d ns: > 1 of saved_grant signals are active simultaneously", $time);
          $stop;
        end
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on
//synthesis read_comments_as_HDL on
//  
//  assign incoming_tri_state_bridge_flash_data_with_Xs_converted_to_0 = incoming_tri_state_bridge_flash_data;
//
//synthesis read_comments_as_HDL off

endmodule


// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module tri_state_bridge_flash_bridge_arbitrator 
;



endmodule


// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module uart_s1_arbitrator (
                            // inputs:
                             clk,
                             cpu_0_data_master_address_to_slave,
                             cpu_0_data_master_read,
                             cpu_0_data_master_write,
                             cpu_0_data_master_writedata,
                             reset_n,
                             uart_s1_dataavailable,
                             uart_s1_irq,
                             uart_s1_readdata,
                             uart_s1_readyfordata,

                            // outputs:
                             cpu_0_data_master_granted_uart_s1,
                             cpu_0_data_master_qualified_request_uart_s1,
                             cpu_0_data_master_read_data_valid_uart_s1,
                             cpu_0_data_master_requests_uart_s1,
                             d1_uart_s1_end_xfer,
                             uart_s1_address,
                             uart_s1_begintransfer,
                             uart_s1_chipselect,
                             uart_s1_dataavailable_from_sa,
                             uart_s1_irq_from_sa,
                             uart_s1_read_n,
                             uart_s1_readdata_from_sa,
                             uart_s1_readyfordata_from_sa,
                             uart_s1_reset_n,
                             uart_s1_write_n,
                             uart_s1_writedata
                          )
;

  output           cpu_0_data_master_granted_uart_s1;
  output           cpu_0_data_master_qualified_request_uart_s1;
  output           cpu_0_data_master_read_data_valid_uart_s1;
  output           cpu_0_data_master_requests_uart_s1;
  output           d1_uart_s1_end_xfer;
  output  [  2: 0] uart_s1_address;
  output           uart_s1_begintransfer;
  output           uart_s1_chipselect;
  output           uart_s1_dataavailable_from_sa;
  output           uart_s1_irq_from_sa;
  output           uart_s1_read_n;
  output  [ 15: 0] uart_s1_readdata_from_sa;
  output           uart_s1_readyfordata_from_sa;
  output           uart_s1_reset_n;
  output           uart_s1_write_n;
  output  [ 15: 0] uart_s1_writedata;
  input            clk;
  input   [ 23: 0] cpu_0_data_master_address_to_slave;
  input            cpu_0_data_master_read;
  input            cpu_0_data_master_write;
  input   [ 31: 0] cpu_0_data_master_writedata;
  input            reset_n;
  input            uart_s1_dataavailable;
  input            uart_s1_irq;
  input   [ 15: 0] uart_s1_readdata;
  input            uart_s1_readyfordata;

  wire             cpu_0_data_master_arbiterlock;
  wire             cpu_0_data_master_arbiterlock2;
  wire             cpu_0_data_master_continuerequest;
  wire             cpu_0_data_master_granted_uart_s1;
  wire             cpu_0_data_master_qualified_request_uart_s1;
  wire             cpu_0_data_master_read_data_valid_uart_s1;
  wire             cpu_0_data_master_requests_uart_s1;
  wire             cpu_0_data_master_saved_grant_uart_s1;
  reg              d1_reasons_to_wait;
  reg              d1_uart_s1_end_xfer;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_uart_s1;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire    [ 23: 0] shifted_address_to_uart_s1_from_cpu_0_data_master;
  wire    [  2: 0] uart_s1_address;
  wire             uart_s1_allgrants;
  wire             uart_s1_allow_new_arb_cycle;
  wire             uart_s1_any_bursting_master_saved_grant;
  wire             uart_s1_any_continuerequest;
  wire             uart_s1_arb_counter_enable;
  reg     [  2: 0] uart_s1_arb_share_counter;
  wire    [  2: 0] uart_s1_arb_share_counter_next_value;
  wire    [  2: 0] uart_s1_arb_share_set_values;
  wire             uart_s1_beginbursttransfer_internal;
  wire             uart_s1_begins_xfer;
  wire             uart_s1_begintransfer;
  wire             uart_s1_chipselect;
  wire             uart_s1_dataavailable_from_sa;
  wire             uart_s1_end_xfer;
  wire             uart_s1_firsttransfer;
  wire             uart_s1_grant_vector;
  wire             uart_s1_in_a_read_cycle;
  wire             uart_s1_in_a_write_cycle;
  wire             uart_s1_irq_from_sa;
  wire             uart_s1_master_qreq_vector;
  wire             uart_s1_non_bursting_master_requests;
  wire             uart_s1_read_n;
  wire    [ 15: 0] uart_s1_readdata_from_sa;
  wire             uart_s1_readyfordata_from_sa;
  reg              uart_s1_reg_firsttransfer;
  wire             uart_s1_reset_n;
  reg              uart_s1_slavearbiterlockenable;
  wire             uart_s1_slavearbiterlockenable2;
  wire             uart_s1_unreg_firsttransfer;
  wire             uart_s1_waits_for_read;
  wire             uart_s1_waits_for_write;
  wire             uart_s1_write_n;
  wire    [ 15: 0] uart_s1_writedata;
  wire             wait_for_uart_s1_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~uart_s1_end_xfer;
    end


  assign uart_s1_begins_xfer = ~d1_reasons_to_wait & ((cpu_0_data_master_qualified_request_uart_s1));
  //assign uart_s1_readdata_from_sa = uart_s1_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign uart_s1_readdata_from_sa = uart_s1_readdata;

  assign cpu_0_data_master_requests_uart_s1 = ({cpu_0_data_master_address_to_slave[23 : 5] , 5'b0} == 24'hb04000) & (cpu_0_data_master_read | cpu_0_data_master_write);
  //assign uart_s1_dataavailable_from_sa = uart_s1_dataavailable so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign uart_s1_dataavailable_from_sa = uart_s1_dataavailable;

  //assign uart_s1_readyfordata_from_sa = uart_s1_readyfordata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign uart_s1_readyfordata_from_sa = uart_s1_readyfordata;

  //uart_s1_arb_share_counter set values, which is an e_mux
  assign uart_s1_arb_share_set_values = 1;

  //uart_s1_non_bursting_master_requests mux, which is an e_mux
  assign uart_s1_non_bursting_master_requests = cpu_0_data_master_requests_uart_s1;

  //uart_s1_any_bursting_master_saved_grant mux, which is an e_mux
  assign uart_s1_any_bursting_master_saved_grant = 0;

  //uart_s1_arb_share_counter_next_value assignment, which is an e_assign
  assign uart_s1_arb_share_counter_next_value = uart_s1_firsttransfer ? (uart_s1_arb_share_set_values - 1) : |uart_s1_arb_share_counter ? (uart_s1_arb_share_counter - 1) : 0;

  //uart_s1_allgrants all slave grants, which is an e_mux
  assign uart_s1_allgrants = |uart_s1_grant_vector;

  //uart_s1_end_xfer assignment, which is an e_assign
  assign uart_s1_end_xfer = ~(uart_s1_waits_for_read | uart_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_uart_s1 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_uart_s1 = uart_s1_end_xfer & (~uart_s1_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //uart_s1_arb_share_counter arbitration counter enable, which is an e_assign
  assign uart_s1_arb_counter_enable = (end_xfer_arb_share_counter_term_uart_s1 & uart_s1_allgrants) | (end_xfer_arb_share_counter_term_uart_s1 & ~uart_s1_non_bursting_master_requests);

  //uart_s1_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          uart_s1_arb_share_counter <= 0;
      else if (uart_s1_arb_counter_enable)
          uart_s1_arb_share_counter <= uart_s1_arb_share_counter_next_value;
    end


  //uart_s1_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          uart_s1_slavearbiterlockenable <= 0;
      else if ((|uart_s1_master_qreq_vector & end_xfer_arb_share_counter_term_uart_s1) | (end_xfer_arb_share_counter_term_uart_s1 & ~uart_s1_non_bursting_master_requests))
          uart_s1_slavearbiterlockenable <= |uart_s1_arb_share_counter_next_value;
    end


  //cpu_0/data_master uart/s1 arbiterlock, which is an e_assign
  assign cpu_0_data_master_arbiterlock = uart_s1_slavearbiterlockenable & cpu_0_data_master_continuerequest;

  //uart_s1_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign uart_s1_slavearbiterlockenable2 = |uart_s1_arb_share_counter_next_value;

  //cpu_0/data_master uart/s1 arbiterlock2, which is an e_assign
  assign cpu_0_data_master_arbiterlock2 = uart_s1_slavearbiterlockenable2 & cpu_0_data_master_continuerequest;

  //uart_s1_any_continuerequest at least one master continues requesting, which is an e_assign
  assign uart_s1_any_continuerequest = 1;

  //cpu_0_data_master_continuerequest continued request, which is an e_assign
  assign cpu_0_data_master_continuerequest = 1;

  assign cpu_0_data_master_qualified_request_uart_s1 = cpu_0_data_master_requests_uart_s1;
  //uart_s1_writedata mux, which is an e_mux
  assign uart_s1_writedata = cpu_0_data_master_writedata;

  //master is always granted when requested
  assign cpu_0_data_master_granted_uart_s1 = cpu_0_data_master_qualified_request_uart_s1;

  //cpu_0/data_master saved-grant uart/s1, which is an e_assign
  assign cpu_0_data_master_saved_grant_uart_s1 = cpu_0_data_master_requests_uart_s1;

  //allow new arb cycle for uart/s1, which is an e_assign
  assign uart_s1_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign uart_s1_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign uart_s1_master_qreq_vector = 1;

  assign uart_s1_begintransfer = uart_s1_begins_xfer;
  //uart_s1_reset_n assignment, which is an e_assign
  assign uart_s1_reset_n = reset_n;

  assign uart_s1_chipselect = cpu_0_data_master_granted_uart_s1;
  //uart_s1_firsttransfer first transaction, which is an e_assign
  assign uart_s1_firsttransfer = uart_s1_begins_xfer ? uart_s1_unreg_firsttransfer : uart_s1_reg_firsttransfer;

  //uart_s1_unreg_firsttransfer first transaction, which is an e_assign
  assign uart_s1_unreg_firsttransfer = ~(uart_s1_slavearbiterlockenable & uart_s1_any_continuerequest);

  //uart_s1_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          uart_s1_reg_firsttransfer <= 1'b1;
      else if (uart_s1_begins_xfer)
          uart_s1_reg_firsttransfer <= uart_s1_unreg_firsttransfer;
    end


  //uart_s1_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign uart_s1_beginbursttransfer_internal = uart_s1_begins_xfer;

  //~uart_s1_read_n assignment, which is an e_mux
  assign uart_s1_read_n = ~(cpu_0_data_master_granted_uart_s1 & cpu_0_data_master_read);

  //~uart_s1_write_n assignment, which is an e_mux
  assign uart_s1_write_n = ~(cpu_0_data_master_granted_uart_s1 & cpu_0_data_master_write);

  assign shifted_address_to_uart_s1_from_cpu_0_data_master = cpu_0_data_master_address_to_slave;
  //uart_s1_address mux, which is an e_mux
  assign uart_s1_address = shifted_address_to_uart_s1_from_cpu_0_data_master >> 2;

  //d1_uart_s1_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_uart_s1_end_xfer <= 1;
      else 
        d1_uart_s1_end_xfer <= uart_s1_end_xfer;
    end


  //uart_s1_waits_for_read in a cycle, which is an e_mux
  assign uart_s1_waits_for_read = uart_s1_in_a_read_cycle & uart_s1_begins_xfer;

  //uart_s1_in_a_read_cycle assignment, which is an e_assign
  assign uart_s1_in_a_read_cycle = cpu_0_data_master_granted_uart_s1 & cpu_0_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = uart_s1_in_a_read_cycle;

  //uart_s1_waits_for_write in a cycle, which is an e_mux
  assign uart_s1_waits_for_write = uart_s1_in_a_write_cycle & uart_s1_begins_xfer;

  //uart_s1_in_a_write_cycle assignment, which is an e_assign
  assign uart_s1_in_a_write_cycle = cpu_0_data_master_granted_uart_s1 & cpu_0_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = uart_s1_in_a_write_cycle;

  assign wait_for_uart_s1_counter = 0;
  //assign uart_s1_irq_from_sa = uart_s1_irq so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign uart_s1_irq_from_sa = uart_s1_irq;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //uart/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule


// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module vga_0_avalon_slave_0_arbitrator (
                                         // inputs:
                                          clk,
                                          cpu_0_data_master_address_to_slave,
                                          cpu_0_data_master_read,
                                          cpu_0_data_master_write,
                                          cpu_0_data_master_writedata,
                                          reset_n,
                                          vga_0_avalon_slave_0_readdata,

                                         // outputs:
                                          cpu_0_data_master_granted_vga_0_avalon_slave_0,
                                          cpu_0_data_master_qualified_request_vga_0_avalon_slave_0,
                                          cpu_0_data_master_read_data_valid_vga_0_avalon_slave_0,
                                          cpu_0_data_master_requests_vga_0_avalon_slave_0,
                                          d1_vga_0_avalon_slave_0_end_xfer,
                                          vga_0_avalon_slave_0_address,
                                          vga_0_avalon_slave_0_chipselect,
                                          vga_0_avalon_slave_0_read,
                                          vga_0_avalon_slave_0_readdata_from_sa,
                                          vga_0_avalon_slave_0_reset_n,
                                          vga_0_avalon_slave_0_wait_counter_eq_0,
                                          vga_0_avalon_slave_0_write,
                                          vga_0_avalon_slave_0_writedata
                                       )
;

  output           cpu_0_data_master_granted_vga_0_avalon_slave_0;
  output           cpu_0_data_master_qualified_request_vga_0_avalon_slave_0;
  output           cpu_0_data_master_read_data_valid_vga_0_avalon_slave_0;
  output           cpu_0_data_master_requests_vga_0_avalon_slave_0;
  output           d1_vga_0_avalon_slave_0_end_xfer;
  output  [ 18: 0] vga_0_avalon_slave_0_address;
  output           vga_0_avalon_slave_0_chipselect;
  output           vga_0_avalon_slave_0_read;
  output  [ 15: 0] vga_0_avalon_slave_0_readdata_from_sa;
  output           vga_0_avalon_slave_0_reset_n;
  output           vga_0_avalon_slave_0_wait_counter_eq_0;
  output           vga_0_avalon_slave_0_write;
  output  [ 15: 0] vga_0_avalon_slave_0_writedata;
  input            clk;
  input   [ 23: 0] cpu_0_data_master_address_to_slave;
  input            cpu_0_data_master_read;
  input            cpu_0_data_master_write;
  input   [ 31: 0] cpu_0_data_master_writedata;
  input            reset_n;
  input   [ 15: 0] vga_0_avalon_slave_0_readdata;

  wire             cpu_0_data_master_arbiterlock;
  wire             cpu_0_data_master_arbiterlock2;
  wire             cpu_0_data_master_continuerequest;
  wire             cpu_0_data_master_granted_vga_0_avalon_slave_0;
  wire             cpu_0_data_master_qualified_request_vga_0_avalon_slave_0;
  wire             cpu_0_data_master_read_data_valid_vga_0_avalon_slave_0;
  wire             cpu_0_data_master_requests_vga_0_avalon_slave_0;
  wire             cpu_0_data_master_saved_grant_vga_0_avalon_slave_0;
  reg              d1_reasons_to_wait;
  reg              d1_vga_0_avalon_slave_0_end_xfer;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_vga_0_avalon_slave_0;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire    [ 23: 0] shifted_address_to_vga_0_avalon_slave_0_from_cpu_0_data_master;
  wire    [ 18: 0] vga_0_avalon_slave_0_address;
  wire             vga_0_avalon_slave_0_allgrants;
  wire             vga_0_avalon_slave_0_allow_new_arb_cycle;
  wire             vga_0_avalon_slave_0_any_bursting_master_saved_grant;
  wire             vga_0_avalon_slave_0_any_continuerequest;
  wire             vga_0_avalon_slave_0_arb_counter_enable;
  reg     [  2: 0] vga_0_avalon_slave_0_arb_share_counter;
  wire    [  2: 0] vga_0_avalon_slave_0_arb_share_counter_next_value;
  wire    [  2: 0] vga_0_avalon_slave_0_arb_share_set_values;
  wire             vga_0_avalon_slave_0_beginbursttransfer_internal;
  wire             vga_0_avalon_slave_0_begins_xfer;
  wire             vga_0_avalon_slave_0_chipselect;
  wire             vga_0_avalon_slave_0_counter_load_value;
  wire             vga_0_avalon_slave_0_end_xfer;
  wire             vga_0_avalon_slave_0_firsttransfer;
  wire             vga_0_avalon_slave_0_grant_vector;
  wire             vga_0_avalon_slave_0_in_a_read_cycle;
  wire             vga_0_avalon_slave_0_in_a_write_cycle;
  wire             vga_0_avalon_slave_0_master_qreq_vector;
  wire             vga_0_avalon_slave_0_non_bursting_master_requests;
  wire             vga_0_avalon_slave_0_read;
  wire    [ 15: 0] vga_0_avalon_slave_0_readdata_from_sa;
  reg              vga_0_avalon_slave_0_reg_firsttransfer;
  wire             vga_0_avalon_slave_0_reset_n;
  reg              vga_0_avalon_slave_0_slavearbiterlockenable;
  wire             vga_0_avalon_slave_0_slavearbiterlockenable2;
  wire             vga_0_avalon_slave_0_unreg_firsttransfer;
  reg              vga_0_avalon_slave_0_wait_counter;
  wire             vga_0_avalon_slave_0_wait_counter_eq_0;
  wire             vga_0_avalon_slave_0_waits_for_read;
  wire             vga_0_avalon_slave_0_waits_for_write;
  wire             vga_0_avalon_slave_0_write;
  wire    [ 15: 0] vga_0_avalon_slave_0_writedata;
  wire             wait_for_vga_0_avalon_slave_0_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~vga_0_avalon_slave_0_end_xfer;
    end


  assign vga_0_avalon_slave_0_begins_xfer = ~d1_reasons_to_wait & ((cpu_0_data_master_qualified_request_vga_0_avalon_slave_0));
  //assign vga_0_avalon_slave_0_readdata_from_sa = vga_0_avalon_slave_0_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign vga_0_avalon_slave_0_readdata_from_sa = vga_0_avalon_slave_0_readdata;

  assign cpu_0_data_master_requests_vga_0_avalon_slave_0 = ({cpu_0_data_master_address_to_slave[23 : 21] , 21'b0} == 24'h800000) & (cpu_0_data_master_read | cpu_0_data_master_write);
  //vga_0_avalon_slave_0_arb_share_counter set values, which is an e_mux
  assign vga_0_avalon_slave_0_arb_share_set_values = 1;

  //vga_0_avalon_slave_0_non_bursting_master_requests mux, which is an e_mux
  assign vga_0_avalon_slave_0_non_bursting_master_requests = cpu_0_data_master_requests_vga_0_avalon_slave_0;

  //vga_0_avalon_slave_0_any_bursting_master_saved_grant mux, which is an e_mux
  assign vga_0_avalon_slave_0_any_bursting_master_saved_grant = 0;

  //vga_0_avalon_slave_0_arb_share_counter_next_value assignment, which is an e_assign
  assign vga_0_avalon_slave_0_arb_share_counter_next_value = vga_0_avalon_slave_0_firsttransfer ? (vga_0_avalon_slave_0_arb_share_set_values - 1) : |vga_0_avalon_slave_0_arb_share_counter ? (vga_0_avalon_slave_0_arb_share_counter - 1) : 0;

  //vga_0_avalon_slave_0_allgrants all slave grants, which is an e_mux
  assign vga_0_avalon_slave_0_allgrants = |vga_0_avalon_slave_0_grant_vector;

  //vga_0_avalon_slave_0_end_xfer assignment, which is an e_assign
  assign vga_0_avalon_slave_0_end_xfer = ~(vga_0_avalon_slave_0_waits_for_read | vga_0_avalon_slave_0_waits_for_write);

  //end_xfer_arb_share_counter_term_vga_0_avalon_slave_0 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_vga_0_avalon_slave_0 = vga_0_avalon_slave_0_end_xfer & (~vga_0_avalon_slave_0_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //vga_0_avalon_slave_0_arb_share_counter arbitration counter enable, which is an e_assign
  assign vga_0_avalon_slave_0_arb_counter_enable = (end_xfer_arb_share_counter_term_vga_0_avalon_slave_0 & vga_0_avalon_slave_0_allgrants) | (end_xfer_arb_share_counter_term_vga_0_avalon_slave_0 & ~vga_0_avalon_slave_0_non_bursting_master_requests);

  //vga_0_avalon_slave_0_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          vga_0_avalon_slave_0_arb_share_counter <= 0;
      else if (vga_0_avalon_slave_0_arb_counter_enable)
          vga_0_avalon_slave_0_arb_share_counter <= vga_0_avalon_slave_0_arb_share_counter_next_value;
    end


  //vga_0_avalon_slave_0_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          vga_0_avalon_slave_0_slavearbiterlockenable <= 0;
      else if ((|vga_0_avalon_slave_0_master_qreq_vector & end_xfer_arb_share_counter_term_vga_0_avalon_slave_0) | (end_xfer_arb_share_counter_term_vga_0_avalon_slave_0 & ~vga_0_avalon_slave_0_non_bursting_master_requests))
          vga_0_avalon_slave_0_slavearbiterlockenable <= |vga_0_avalon_slave_0_arb_share_counter_next_value;
    end


  //cpu_0/data_master vga_0/avalon_slave_0 arbiterlock, which is an e_assign
  assign cpu_0_data_master_arbiterlock = vga_0_avalon_slave_0_slavearbiterlockenable & cpu_0_data_master_continuerequest;

  //vga_0_avalon_slave_0_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign vga_0_avalon_slave_0_slavearbiterlockenable2 = |vga_0_avalon_slave_0_arb_share_counter_next_value;

  //cpu_0/data_master vga_0/avalon_slave_0 arbiterlock2, which is an e_assign
  assign cpu_0_data_master_arbiterlock2 = vga_0_avalon_slave_0_slavearbiterlockenable2 & cpu_0_data_master_continuerequest;

  //vga_0_avalon_slave_0_any_continuerequest at least one master continues requesting, which is an e_assign
  assign vga_0_avalon_slave_0_any_continuerequest = 1;

  //cpu_0_data_master_continuerequest continued request, which is an e_assign
  assign cpu_0_data_master_continuerequest = 1;

  assign cpu_0_data_master_qualified_request_vga_0_avalon_slave_0 = cpu_0_data_master_requests_vga_0_avalon_slave_0;
  //vga_0_avalon_slave_0_writedata mux, which is an e_mux
  assign vga_0_avalon_slave_0_writedata = cpu_0_data_master_writedata;

  //master is always granted when requested
  assign cpu_0_data_master_granted_vga_0_avalon_slave_0 = cpu_0_data_master_qualified_request_vga_0_avalon_slave_0;

  //cpu_0/data_master saved-grant vga_0/avalon_slave_0, which is an e_assign
  assign cpu_0_data_master_saved_grant_vga_0_avalon_slave_0 = cpu_0_data_master_requests_vga_0_avalon_slave_0;

  //allow new arb cycle for vga_0/avalon_slave_0, which is an e_assign
  assign vga_0_avalon_slave_0_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign vga_0_avalon_slave_0_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign vga_0_avalon_slave_0_master_qreq_vector = 1;

  //vga_0_avalon_slave_0_reset_n assignment, which is an e_assign
  assign vga_0_avalon_slave_0_reset_n = reset_n;

  assign vga_0_avalon_slave_0_chipselect = cpu_0_data_master_granted_vga_0_avalon_slave_0;
  //vga_0_avalon_slave_0_firsttransfer first transaction, which is an e_assign
  assign vga_0_avalon_slave_0_firsttransfer = vga_0_avalon_slave_0_begins_xfer ? vga_0_avalon_slave_0_unreg_firsttransfer : vga_0_avalon_slave_0_reg_firsttransfer;

  //vga_0_avalon_slave_0_unreg_firsttransfer first transaction, which is an e_assign
  assign vga_0_avalon_slave_0_unreg_firsttransfer = ~(vga_0_avalon_slave_0_slavearbiterlockenable & vga_0_avalon_slave_0_any_continuerequest);

  //vga_0_avalon_slave_0_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          vga_0_avalon_slave_0_reg_firsttransfer <= 1'b1;
      else if (vga_0_avalon_slave_0_begins_xfer)
          vga_0_avalon_slave_0_reg_firsttransfer <= vga_0_avalon_slave_0_unreg_firsttransfer;
    end


  //vga_0_avalon_slave_0_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign vga_0_avalon_slave_0_beginbursttransfer_internal = vga_0_avalon_slave_0_begins_xfer;

  //vga_0_avalon_slave_0_read assignment, which is an e_mux
  assign vga_0_avalon_slave_0_read = ((cpu_0_data_master_granted_vga_0_avalon_slave_0 & cpu_0_data_master_read))& ~vga_0_avalon_slave_0_begins_xfer;

  //vga_0_avalon_slave_0_write assignment, which is an e_mux
  assign vga_0_avalon_slave_0_write = ((cpu_0_data_master_granted_vga_0_avalon_slave_0 & cpu_0_data_master_write)) & ~vga_0_avalon_slave_0_begins_xfer & (vga_0_avalon_slave_0_wait_counter >= 1);

  assign shifted_address_to_vga_0_avalon_slave_0_from_cpu_0_data_master = cpu_0_data_master_address_to_slave;
  //vga_0_avalon_slave_0_address mux, which is an e_mux
  assign vga_0_avalon_slave_0_address = shifted_address_to_vga_0_avalon_slave_0_from_cpu_0_data_master >> 2;

  //d1_vga_0_avalon_slave_0_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_vga_0_avalon_slave_0_end_xfer <= 1;
      else 
        d1_vga_0_avalon_slave_0_end_xfer <= vga_0_avalon_slave_0_end_xfer;
    end


  //vga_0_avalon_slave_0_waits_for_read in a cycle, which is an e_mux
  assign vga_0_avalon_slave_0_waits_for_read = vga_0_avalon_slave_0_in_a_read_cycle & vga_0_avalon_slave_0_begins_xfer;

  //vga_0_avalon_slave_0_in_a_read_cycle assignment, which is an e_assign
  assign vga_0_avalon_slave_0_in_a_read_cycle = cpu_0_data_master_granted_vga_0_avalon_slave_0 & cpu_0_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = vga_0_avalon_slave_0_in_a_read_cycle;

  //vga_0_avalon_slave_0_waits_for_write in a cycle, which is an e_mux
  assign vga_0_avalon_slave_0_waits_for_write = vga_0_avalon_slave_0_in_a_write_cycle & wait_for_vga_0_avalon_slave_0_counter;

  //vga_0_avalon_slave_0_in_a_write_cycle assignment, which is an e_assign
  assign vga_0_avalon_slave_0_in_a_write_cycle = cpu_0_data_master_granted_vga_0_avalon_slave_0 & cpu_0_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = vga_0_avalon_slave_0_in_a_write_cycle;

  assign vga_0_avalon_slave_0_wait_counter_eq_0 = vga_0_avalon_slave_0_wait_counter == 0;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          vga_0_avalon_slave_0_wait_counter <= 0;
      else 
        vga_0_avalon_slave_0_wait_counter <= vga_0_avalon_slave_0_counter_load_value;
    end


  assign vga_0_avalon_slave_0_counter_load_value = ((vga_0_avalon_slave_0_in_a_write_cycle & vga_0_avalon_slave_0_begins_xfer))? 1 :
    (~vga_0_avalon_slave_0_wait_counter_eq_0)? vga_0_avalon_slave_0_wait_counter - 1 :
    0;

  assign wait_for_vga_0_avalon_slave_0_counter = vga_0_avalon_slave_0_begins_xfer | ~vga_0_avalon_slave_0_wait_counter_eq_0;

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //vga_0/avalon_slave_0 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule


// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module DE2_SoPC_reset_clk_50_domain_synch_module (
                                                   // inputs:
                                                    clk,
                                                    data_in,
                                                    reset_n,

                                                   // outputs:
                                                    data_out
                                                 )
;

  output           data_out;
  input            clk;
  input            data_in;
  input            reset_n;

  reg              data_in_d1 /* synthesis ALTERA_ATTRIBUTE = "{-from \"*\"} CUT=ON ; PRESERVE_REGISTER=ON ; SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  reg              data_out /* synthesis ALTERA_ATTRIBUTE = "PRESERVE_REGISTER=ON ; SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          data_in_d1 <= 0;
      else 
        data_in_d1 <= data_in;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          data_out <= 0;
      else 
        data_out <= data_in_d1;
    end



endmodule


// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module DE2_SoPC (
                  // 1) global signals:
                   clk_50,
                   reset_n,

                  // the_lcd
                   LCD_E_from_the_lcd,
                   LCD_RS_from_the_lcd,
                   LCD_RW_from_the_lcd,
                   LCD_data_to_and_from_the_lcd,

                  // the_sram
                   SRAM_ADDR_from_the_sram,
                   SRAM_CE_N_from_the_sram,
                   SRAM_DQ_to_and_from_the_sram,
                   SRAM_LB_N_from_the_sram,
                   SRAM_OE_N_from_the_sram,
                   SRAM_UB_N_from_the_sram,
                   SRAM_WE_N_from_the_sram,

                  // the_tri_state_bridge_flash_avalon_slave
                   select_n_to_the_cfi_flash_0,
                   tri_state_bridge_flash_address,
                   tri_state_bridge_flash_data,
                   tri_state_bridge_flash_readn,
                   write_n_to_the_cfi_flash_0,

                  // the_uart
                   rxd_to_the_uart,
                   txd_from_the_uart,

                  // the_vga_0
                   VGA_BLANK_from_the_vga_0,
                   VGA_B_from_the_vga_0,
                   VGA_CLK_from_the_vga_0,
                   VGA_G_from_the_vga_0,
                   VGA_HS_from_the_vga_0,
                   VGA_R_from_the_vga_0,
                   VGA_SYNC_from_the_vga_0,
                   VGA_VS_from_the_vga_0,
                   iCLK_25_to_the_vga_0
                )
;

  output           LCD_E_from_the_lcd;
  output           LCD_RS_from_the_lcd;
  output           LCD_RW_from_the_lcd;
  inout   [  7: 0] LCD_data_to_and_from_the_lcd;
  output  [ 17: 0] SRAM_ADDR_from_the_sram;
  output           SRAM_CE_N_from_the_sram;
  inout   [ 15: 0] SRAM_DQ_to_and_from_the_sram;
  output           SRAM_LB_N_from_the_sram;
  output           SRAM_OE_N_from_the_sram;
  output           SRAM_UB_N_from_the_sram;
  output           SRAM_WE_N_from_the_sram;
  output           VGA_BLANK_from_the_vga_0;
  output  [  9: 0] VGA_B_from_the_vga_0;
  output           VGA_CLK_from_the_vga_0;
  output  [  9: 0] VGA_G_from_the_vga_0;
  output           VGA_HS_from_the_vga_0;
  output  [  9: 0] VGA_R_from_the_vga_0;
  output           VGA_SYNC_from_the_vga_0;
  output           VGA_VS_from_the_vga_0;
  output           select_n_to_the_cfi_flash_0;
  output  [ 21: 0] tri_state_bridge_flash_address;
  inout   [  7: 0] tri_state_bridge_flash_data;
  output           tri_state_bridge_flash_readn;
  output           txd_from_the_uart;
  output           write_n_to_the_cfi_flash_0;
  input            clk_50;
  input            iCLK_25_to_the_vga_0;
  input            reset_n;
  input            rxd_to_the_uart;

  wire             LCD_E_from_the_lcd;
  wire             LCD_RS_from_the_lcd;
  wire             LCD_RW_from_the_lcd;
  wire    [  7: 0] LCD_data_to_and_from_the_lcd;
  wire    [ 17: 0] SRAM_ADDR_from_the_sram;
  wire             SRAM_CE_N_from_the_sram;
  wire    [ 15: 0] SRAM_DQ_to_and_from_the_sram;
  wire             SRAM_LB_N_from_the_sram;
  wire             SRAM_OE_N_from_the_sram;
  wire             SRAM_UB_N_from_the_sram;
  wire             SRAM_WE_N_from_the_sram;
  wire             VGA_BLANK_from_the_vga_0;
  wire    [  9: 0] VGA_B_from_the_vga_0;
  wire             VGA_CLK_from_the_vga_0;
  wire    [  9: 0] VGA_G_from_the_vga_0;
  wire             VGA_HS_from_the_vga_0;
  wire    [  9: 0] VGA_R_from_the_vga_0;
  wire             VGA_SYNC_from_the_vga_0;
  wire             VGA_VS_from_the_vga_0;
  wire             cfi_flash_0_s1_wait_counter_eq_0;
  wire             cfi_flash_0_s1_wait_counter_eq_1;
  wire             clk_50_reset_n;
  wire    [ 23: 0] cpu_0_data_master_address;
  wire    [ 23: 0] cpu_0_data_master_address_to_slave;
  wire    [  3: 0] cpu_0_data_master_byteenable;
  wire             cpu_0_data_master_byteenable_cfi_flash_0_s1;
  wire    [  1: 0] cpu_0_data_master_byteenable_sram_avalon_slave_0;
  wire    [  1: 0] cpu_0_data_master_dbs_address;
  wire    [ 15: 0] cpu_0_data_master_dbs_write_16;
  wire    [  7: 0] cpu_0_data_master_dbs_write_8;
  wire             cpu_0_data_master_debugaccess;
  wire             cpu_0_data_master_granted_cfi_flash_0_s1;
  wire             cpu_0_data_master_granted_cpu_0_jtag_debug_module;
  wire             cpu_0_data_master_granted_epcs_epcs_control_port;
  wire             cpu_0_data_master_granted_jtag_uart_avalon_jtag_slave;
  wire             cpu_0_data_master_granted_lcd_control_slave;
  wire             cpu_0_data_master_granted_onchip_memory2_s1;
  wire             cpu_0_data_master_granted_sram_avalon_slave_0;
  wire             cpu_0_data_master_granted_sysid_0_control_slave;
  wire             cpu_0_data_master_granted_timer_s1;
  wire             cpu_0_data_master_granted_uart_s1;
  wire             cpu_0_data_master_granted_vga_0_avalon_slave_0;
  wire    [ 31: 0] cpu_0_data_master_irq;
  wire             cpu_0_data_master_no_byte_enables_and_last_term;
  wire             cpu_0_data_master_qualified_request_cfi_flash_0_s1;
  wire             cpu_0_data_master_qualified_request_cpu_0_jtag_debug_module;
  wire             cpu_0_data_master_qualified_request_epcs_epcs_control_port;
  wire             cpu_0_data_master_qualified_request_jtag_uart_avalon_jtag_slave;
  wire             cpu_0_data_master_qualified_request_lcd_control_slave;
  wire             cpu_0_data_master_qualified_request_onchip_memory2_s1;
  wire             cpu_0_data_master_qualified_request_sram_avalon_slave_0;
  wire             cpu_0_data_master_qualified_request_sysid_0_control_slave;
  wire             cpu_0_data_master_qualified_request_timer_s1;
  wire             cpu_0_data_master_qualified_request_uart_s1;
  wire             cpu_0_data_master_qualified_request_vga_0_avalon_slave_0;
  wire             cpu_0_data_master_read;
  wire             cpu_0_data_master_read_data_valid_cfi_flash_0_s1;
  wire             cpu_0_data_master_read_data_valid_cpu_0_jtag_debug_module;
  wire             cpu_0_data_master_read_data_valid_epcs_epcs_control_port;
  wire             cpu_0_data_master_read_data_valid_jtag_uart_avalon_jtag_slave;
  wire             cpu_0_data_master_read_data_valid_lcd_control_slave;
  wire             cpu_0_data_master_read_data_valid_onchip_memory2_s1;
  wire             cpu_0_data_master_read_data_valid_sram_avalon_slave_0;
  wire             cpu_0_data_master_read_data_valid_sysid_0_control_slave;
  wire             cpu_0_data_master_read_data_valid_timer_s1;
  wire             cpu_0_data_master_read_data_valid_uart_s1;
  wire             cpu_0_data_master_read_data_valid_vga_0_avalon_slave_0;
  wire    [ 31: 0] cpu_0_data_master_readdata;
  wire             cpu_0_data_master_requests_cfi_flash_0_s1;
  wire             cpu_0_data_master_requests_cpu_0_jtag_debug_module;
  wire             cpu_0_data_master_requests_epcs_epcs_control_port;
  wire             cpu_0_data_master_requests_jtag_uart_avalon_jtag_slave;
  wire             cpu_0_data_master_requests_lcd_control_slave;
  wire             cpu_0_data_master_requests_onchip_memory2_s1;
  wire             cpu_0_data_master_requests_sram_avalon_slave_0;
  wire             cpu_0_data_master_requests_sysid_0_control_slave;
  wire             cpu_0_data_master_requests_timer_s1;
  wire             cpu_0_data_master_requests_uart_s1;
  wire             cpu_0_data_master_requests_vga_0_avalon_slave_0;
  wire             cpu_0_data_master_waitrequest;
  wire             cpu_0_data_master_write;
  wire    [ 31: 0] cpu_0_data_master_writedata;
  wire    [ 23: 0] cpu_0_instruction_master_address;
  wire    [ 23: 0] cpu_0_instruction_master_address_to_slave;
  wire    [  1: 0] cpu_0_instruction_master_dbs_address;
  wire             cpu_0_instruction_master_granted_cfi_flash_0_s1;
  wire             cpu_0_instruction_master_granted_cpu_0_jtag_debug_module;
  wire             cpu_0_instruction_master_granted_epcs_epcs_control_port;
  wire             cpu_0_instruction_master_granted_onchip_memory2_s1;
  wire             cpu_0_instruction_master_granted_sram_avalon_slave_0;
  wire    [  1: 0] cpu_0_instruction_master_latency_counter;
  wire             cpu_0_instruction_master_qualified_request_cfi_flash_0_s1;
  wire             cpu_0_instruction_master_qualified_request_cpu_0_jtag_debug_module;
  wire             cpu_0_instruction_master_qualified_request_epcs_epcs_control_port;
  wire             cpu_0_instruction_master_qualified_request_onchip_memory2_s1;
  wire             cpu_0_instruction_master_qualified_request_sram_avalon_slave_0;
  wire             cpu_0_instruction_master_read;
  wire             cpu_0_instruction_master_read_data_valid_cfi_flash_0_s1;
  wire             cpu_0_instruction_master_read_data_valid_cpu_0_jtag_debug_module;
  wire             cpu_0_instruction_master_read_data_valid_epcs_epcs_control_port;
  wire             cpu_0_instruction_master_read_data_valid_onchip_memory2_s1;
  wire             cpu_0_instruction_master_read_data_valid_sram_avalon_slave_0;
  wire    [ 31: 0] cpu_0_instruction_master_readdata;
  wire             cpu_0_instruction_master_readdatavalid;
  wire             cpu_0_instruction_master_requests_cfi_flash_0_s1;
  wire             cpu_0_instruction_master_requests_cpu_0_jtag_debug_module;
  wire             cpu_0_instruction_master_requests_epcs_epcs_control_port;
  wire             cpu_0_instruction_master_requests_onchip_memory2_s1;
  wire             cpu_0_instruction_master_requests_sram_avalon_slave_0;
  wire             cpu_0_instruction_master_waitrequest;
  wire    [  8: 0] cpu_0_jtag_debug_module_address;
  wire             cpu_0_jtag_debug_module_begintransfer;
  wire    [  3: 0] cpu_0_jtag_debug_module_byteenable;
  wire             cpu_0_jtag_debug_module_chipselect;
  wire             cpu_0_jtag_debug_module_debugaccess;
  wire    [ 31: 0] cpu_0_jtag_debug_module_readdata;
  wire    [ 31: 0] cpu_0_jtag_debug_module_readdata_from_sa;
  wire             cpu_0_jtag_debug_module_reset_n;
  wire             cpu_0_jtag_debug_module_resetrequest;
  wire             cpu_0_jtag_debug_module_resetrequest_from_sa;
  wire             cpu_0_jtag_debug_module_write;
  wire    [ 31: 0] cpu_0_jtag_debug_module_writedata;
  wire             d1_cpu_0_jtag_debug_module_end_xfer;
  wire             d1_epcs_epcs_control_port_end_xfer;
  wire             d1_jtag_uart_avalon_jtag_slave_end_xfer;
  wire             d1_lcd_control_slave_end_xfer;
  wire             d1_onchip_memory2_s1_end_xfer;
  wire             d1_sram_avalon_slave_0_end_xfer;
  wire             d1_sysid_0_control_slave_end_xfer;
  wire             d1_timer_s1_end_xfer;
  wire             d1_tri_state_bridge_flash_avalon_slave_end_xfer;
  wire             d1_uart_s1_end_xfer;
  wire             d1_vga_0_avalon_slave_0_end_xfer;
  wire    [  8: 0] epcs_epcs_control_port_address;
  wire             epcs_epcs_control_port_chipselect;
  wire             epcs_epcs_control_port_dataavailable;
  wire             epcs_epcs_control_port_dataavailable_from_sa;
  wire             epcs_epcs_control_port_endofpacket;
  wire             epcs_epcs_control_port_endofpacket_from_sa;
  wire             epcs_epcs_control_port_irq;
  wire             epcs_epcs_control_port_irq_from_sa;
  wire             epcs_epcs_control_port_read_n;
  wire    [ 31: 0] epcs_epcs_control_port_readdata;
  wire    [ 31: 0] epcs_epcs_control_port_readdata_from_sa;
  wire             epcs_epcs_control_port_readyfordata;
  wire             epcs_epcs_control_port_readyfordata_from_sa;
  wire             epcs_epcs_control_port_reset_n;
  wire             epcs_epcs_control_port_write_n;
  wire    [ 31: 0] epcs_epcs_control_port_writedata;
  wire    [  7: 0] incoming_tri_state_bridge_flash_data;
  wire    [  7: 0] incoming_tri_state_bridge_flash_data_with_Xs_converted_to_0;
  wire             jtag_uart_avalon_jtag_slave_address;
  wire             jtag_uart_avalon_jtag_slave_chipselect;
  wire             jtag_uart_avalon_jtag_slave_dataavailable;
  wire             jtag_uart_avalon_jtag_slave_dataavailable_from_sa;
  wire             jtag_uart_avalon_jtag_slave_irq;
  wire             jtag_uart_avalon_jtag_slave_irq_from_sa;
  wire             jtag_uart_avalon_jtag_slave_read_n;
  wire    [ 31: 0] jtag_uart_avalon_jtag_slave_readdata;
  wire    [ 31: 0] jtag_uart_avalon_jtag_slave_readdata_from_sa;
  wire             jtag_uart_avalon_jtag_slave_readyfordata;
  wire             jtag_uart_avalon_jtag_slave_readyfordata_from_sa;
  wire             jtag_uart_avalon_jtag_slave_reset_n;
  wire             jtag_uart_avalon_jtag_slave_waitrequest;
  wire             jtag_uart_avalon_jtag_slave_waitrequest_from_sa;
  wire             jtag_uart_avalon_jtag_slave_write_n;
  wire    [ 31: 0] jtag_uart_avalon_jtag_slave_writedata;
  wire    [  1: 0] lcd_control_slave_address;
  wire             lcd_control_slave_begintransfer;
  wire             lcd_control_slave_read;
  wire    [  7: 0] lcd_control_slave_readdata;
  wire    [  7: 0] lcd_control_slave_readdata_from_sa;
  wire             lcd_control_slave_reset_n;
  wire             lcd_control_slave_wait_counter_eq_0;
  wire             lcd_control_slave_wait_counter_eq_1;
  wire             lcd_control_slave_write;
  wire    [  7: 0] lcd_control_slave_writedata;
  wire    [  9: 0] onchip_memory2_s1_address;
  wire    [  3: 0] onchip_memory2_s1_byteenable;
  wire             onchip_memory2_s1_chipselect;
  wire             onchip_memory2_s1_clken;
  wire    [ 31: 0] onchip_memory2_s1_readdata;
  wire    [ 31: 0] onchip_memory2_s1_readdata_from_sa;
  wire             onchip_memory2_s1_reset;
  wire             onchip_memory2_s1_write;
  wire    [ 31: 0] onchip_memory2_s1_writedata;
  wire             registered_cpu_0_data_master_read_data_valid_cfi_flash_0_s1;
  wire             registered_cpu_0_data_master_read_data_valid_onchip_memory2_s1;
  wire             reset_n_sources;
  wire             select_n_to_the_cfi_flash_0;
  wire    [ 17: 0] sram_avalon_slave_0_address;
  wire    [  1: 0] sram_avalon_slave_0_byteenable_n;
  wire             sram_avalon_slave_0_chipselect_n;
  wire             sram_avalon_slave_0_read_n;
  wire    [ 15: 0] sram_avalon_slave_0_readdata;
  wire    [ 15: 0] sram_avalon_slave_0_readdata_from_sa;
  wire             sram_avalon_slave_0_reset_n;
  wire             sram_avalon_slave_0_wait_counter_eq_0;
  wire             sram_avalon_slave_0_write_n;
  wire    [ 15: 0] sram_avalon_slave_0_writedata;
  wire             sysid_0_control_slave_address;
  wire             sysid_0_control_slave_clock;
  wire    [ 31: 0] sysid_0_control_slave_readdata;
  wire    [ 31: 0] sysid_0_control_slave_readdata_from_sa;
  wire             sysid_0_control_slave_reset_n;
  wire    [  2: 0] timer_s1_address;
  wire             timer_s1_chipselect;
  wire             timer_s1_irq;
  wire             timer_s1_irq_from_sa;
  wire    [ 15: 0] timer_s1_readdata;
  wire    [ 15: 0] timer_s1_readdata_from_sa;
  wire             timer_s1_reset_n;
  wire             timer_s1_write_n;
  wire    [ 15: 0] timer_s1_writedata;
  wire    [ 21: 0] tri_state_bridge_flash_address;
  wire    [  7: 0] tri_state_bridge_flash_data;
  wire             tri_state_bridge_flash_readn;
  wire             txd_from_the_uart;
  wire    [  2: 0] uart_s1_address;
  wire             uart_s1_begintransfer;
  wire             uart_s1_chipselect;
  wire             uart_s1_dataavailable;
  wire             uart_s1_dataavailable_from_sa;
  wire             uart_s1_irq;
  wire             uart_s1_irq_from_sa;
  wire             uart_s1_read_n;
  wire    [ 15: 0] uart_s1_readdata;
  wire    [ 15: 0] uart_s1_readdata_from_sa;
  wire             uart_s1_readyfordata;
  wire             uart_s1_readyfordata_from_sa;
  wire             uart_s1_reset_n;
  wire             uart_s1_write_n;
  wire    [ 15: 0] uart_s1_writedata;
  wire    [ 18: 0] vga_0_avalon_slave_0_address;
  wire             vga_0_avalon_slave_0_chipselect;
  wire             vga_0_avalon_slave_0_read;
  wire    [ 15: 0] vga_0_avalon_slave_0_readdata;
  wire    [ 15: 0] vga_0_avalon_slave_0_readdata_from_sa;
  wire             vga_0_avalon_slave_0_reset_n;
  wire             vga_0_avalon_slave_0_wait_counter_eq_0;
  wire             vga_0_avalon_slave_0_write;
  wire    [ 15: 0] vga_0_avalon_slave_0_writedata;
  wire             write_n_to_the_cfi_flash_0;
  cpu_0_jtag_debug_module_arbitrator the_cpu_0_jtag_debug_module
    (
      .clk                                                                (clk_50),
      .cpu_0_data_master_address_to_slave                                 (cpu_0_data_master_address_to_slave),
      .cpu_0_data_master_byteenable                                       (cpu_0_data_master_byteenable),
      .cpu_0_data_master_debugaccess                                      (cpu_0_data_master_debugaccess),
      .cpu_0_data_master_granted_cpu_0_jtag_debug_module                  (cpu_0_data_master_granted_cpu_0_jtag_debug_module),
      .cpu_0_data_master_qualified_request_cpu_0_jtag_debug_module        (cpu_0_data_master_qualified_request_cpu_0_jtag_debug_module),
      .cpu_0_data_master_read                                             (cpu_0_data_master_read),
      .cpu_0_data_master_read_data_valid_cpu_0_jtag_debug_module          (cpu_0_data_master_read_data_valid_cpu_0_jtag_debug_module),
      .cpu_0_data_master_requests_cpu_0_jtag_debug_module                 (cpu_0_data_master_requests_cpu_0_jtag_debug_module),
      .cpu_0_data_master_waitrequest                                      (cpu_0_data_master_waitrequest),
      .cpu_0_data_master_write                                            (cpu_0_data_master_write),
      .cpu_0_data_master_writedata                                        (cpu_0_data_master_writedata),
      .cpu_0_instruction_master_address_to_slave                          (cpu_0_instruction_master_address_to_slave),
      .cpu_0_instruction_master_granted_cpu_0_jtag_debug_module           (cpu_0_instruction_master_granted_cpu_0_jtag_debug_module),
      .cpu_0_instruction_master_latency_counter                           (cpu_0_instruction_master_latency_counter),
      .cpu_0_instruction_master_qualified_request_cpu_0_jtag_debug_module (cpu_0_instruction_master_qualified_request_cpu_0_jtag_debug_module),
      .cpu_0_instruction_master_read                                      (cpu_0_instruction_master_read),
      .cpu_0_instruction_master_read_data_valid_cpu_0_jtag_debug_module   (cpu_0_instruction_master_read_data_valid_cpu_0_jtag_debug_module),
      .cpu_0_instruction_master_requests_cpu_0_jtag_debug_module          (cpu_0_instruction_master_requests_cpu_0_jtag_debug_module),
      .cpu_0_jtag_debug_module_address                                    (cpu_0_jtag_debug_module_address),
      .cpu_0_jtag_debug_module_begintransfer                              (cpu_0_jtag_debug_module_begintransfer),
      .cpu_0_jtag_debug_module_byteenable                                 (cpu_0_jtag_debug_module_byteenable),
      .cpu_0_jtag_debug_module_chipselect                                 (cpu_0_jtag_debug_module_chipselect),
      .cpu_0_jtag_debug_module_debugaccess                                (cpu_0_jtag_debug_module_debugaccess),
      .cpu_0_jtag_debug_module_readdata                                   (cpu_0_jtag_debug_module_readdata),
      .cpu_0_jtag_debug_module_readdata_from_sa                           (cpu_0_jtag_debug_module_readdata_from_sa),
      .cpu_0_jtag_debug_module_reset_n                                    (cpu_0_jtag_debug_module_reset_n),
      .cpu_0_jtag_debug_module_resetrequest                               (cpu_0_jtag_debug_module_resetrequest),
      .cpu_0_jtag_debug_module_resetrequest_from_sa                       (cpu_0_jtag_debug_module_resetrequest_from_sa),
      .cpu_0_jtag_debug_module_write                                      (cpu_0_jtag_debug_module_write),
      .cpu_0_jtag_debug_module_writedata                                  (cpu_0_jtag_debug_module_writedata),
      .d1_cpu_0_jtag_debug_module_end_xfer                                (d1_cpu_0_jtag_debug_module_end_xfer),
      .reset_n                                                            (clk_50_reset_n)
    );

  cpu_0_data_master_arbitrator the_cpu_0_data_master
    (
      .cfi_flash_0_s1_wait_counter_eq_0                                (cfi_flash_0_s1_wait_counter_eq_0),
      .cfi_flash_0_s1_wait_counter_eq_1                                (cfi_flash_0_s1_wait_counter_eq_1),
      .clk                                                             (clk_50),
      .cpu_0_data_master_address                                       (cpu_0_data_master_address),
      .cpu_0_data_master_address_to_slave                              (cpu_0_data_master_address_to_slave),
      .cpu_0_data_master_byteenable_cfi_flash_0_s1                     (cpu_0_data_master_byteenable_cfi_flash_0_s1),
      .cpu_0_data_master_byteenable_sram_avalon_slave_0                (cpu_0_data_master_byteenable_sram_avalon_slave_0),
      .cpu_0_data_master_dbs_address                                   (cpu_0_data_master_dbs_address),
      .cpu_0_data_master_dbs_write_16                                  (cpu_0_data_master_dbs_write_16),
      .cpu_0_data_master_dbs_write_8                                   (cpu_0_data_master_dbs_write_8),
      .cpu_0_data_master_granted_cfi_flash_0_s1                        (cpu_0_data_master_granted_cfi_flash_0_s1),
      .cpu_0_data_master_granted_cpu_0_jtag_debug_module               (cpu_0_data_master_granted_cpu_0_jtag_debug_module),
      .cpu_0_data_master_granted_epcs_epcs_control_port                (cpu_0_data_master_granted_epcs_epcs_control_port),
      .cpu_0_data_master_granted_jtag_uart_avalon_jtag_slave           (cpu_0_data_master_granted_jtag_uart_avalon_jtag_slave),
      .cpu_0_data_master_granted_lcd_control_slave                     (cpu_0_data_master_granted_lcd_control_slave),
      .cpu_0_data_master_granted_onchip_memory2_s1                     (cpu_0_data_master_granted_onchip_memory2_s1),
      .cpu_0_data_master_granted_sram_avalon_slave_0                   (cpu_0_data_master_granted_sram_avalon_slave_0),
      .cpu_0_data_master_granted_sysid_0_control_slave                 (cpu_0_data_master_granted_sysid_0_control_slave),
      .cpu_0_data_master_granted_timer_s1                              (cpu_0_data_master_granted_timer_s1),
      .cpu_0_data_master_granted_uart_s1                               (cpu_0_data_master_granted_uart_s1),
      .cpu_0_data_master_granted_vga_0_avalon_slave_0                  (cpu_0_data_master_granted_vga_0_avalon_slave_0),
      .cpu_0_data_master_irq                                           (cpu_0_data_master_irq),
      .cpu_0_data_master_no_byte_enables_and_last_term                 (cpu_0_data_master_no_byte_enables_and_last_term),
      .cpu_0_data_master_qualified_request_cfi_flash_0_s1              (cpu_0_data_master_qualified_request_cfi_flash_0_s1),
      .cpu_0_data_master_qualified_request_cpu_0_jtag_debug_module     (cpu_0_data_master_qualified_request_cpu_0_jtag_debug_module),
      .cpu_0_data_master_qualified_request_epcs_epcs_control_port      (cpu_0_data_master_qualified_request_epcs_epcs_control_port),
      .cpu_0_data_master_qualified_request_jtag_uart_avalon_jtag_slave (cpu_0_data_master_qualified_request_jtag_uart_avalon_jtag_slave),
      .cpu_0_data_master_qualified_request_lcd_control_slave           (cpu_0_data_master_qualified_request_lcd_control_slave),
      .cpu_0_data_master_qualified_request_onchip_memory2_s1           (cpu_0_data_master_qualified_request_onchip_memory2_s1),
      .cpu_0_data_master_qualified_request_sram_avalon_slave_0         (cpu_0_data_master_qualified_request_sram_avalon_slave_0),
      .cpu_0_data_master_qualified_request_sysid_0_control_slave       (cpu_0_data_master_qualified_request_sysid_0_control_slave),
      .cpu_0_data_master_qualified_request_timer_s1                    (cpu_0_data_master_qualified_request_timer_s1),
      .cpu_0_data_master_qualified_request_uart_s1                     (cpu_0_data_master_qualified_request_uart_s1),
      .cpu_0_data_master_qualified_request_vga_0_avalon_slave_0        (cpu_0_data_master_qualified_request_vga_0_avalon_slave_0),
      .cpu_0_data_master_read                                          (cpu_0_data_master_read),
      .cpu_0_data_master_read_data_valid_cfi_flash_0_s1                (cpu_0_data_master_read_data_valid_cfi_flash_0_s1),
      .cpu_0_data_master_read_data_valid_cpu_0_jtag_debug_module       (cpu_0_data_master_read_data_valid_cpu_0_jtag_debug_module),
      .cpu_0_data_master_read_data_valid_epcs_epcs_control_port        (cpu_0_data_master_read_data_valid_epcs_epcs_control_port),
      .cpu_0_data_master_read_data_valid_jtag_uart_avalon_jtag_slave   (cpu_0_data_master_read_data_valid_jtag_uart_avalon_jtag_slave),
      .cpu_0_data_master_read_data_valid_lcd_control_slave             (cpu_0_data_master_read_data_valid_lcd_control_slave),
      .cpu_0_data_master_read_data_valid_onchip_memory2_s1             (cpu_0_data_master_read_data_valid_onchip_memory2_s1),
      .cpu_0_data_master_read_data_valid_sram_avalon_slave_0           (cpu_0_data_master_read_data_valid_sram_avalon_slave_0),
      .cpu_0_data_master_read_data_valid_sysid_0_control_slave         (cpu_0_data_master_read_data_valid_sysid_0_control_slave),
      .cpu_0_data_master_read_data_valid_timer_s1                      (cpu_0_data_master_read_data_valid_timer_s1),
      .cpu_0_data_master_read_data_valid_uart_s1                       (cpu_0_data_master_read_data_valid_uart_s1),
      .cpu_0_data_master_read_data_valid_vga_0_avalon_slave_0          (cpu_0_data_master_read_data_valid_vga_0_avalon_slave_0),
      .cpu_0_data_master_readdata                                      (cpu_0_data_master_readdata),
      .cpu_0_data_master_requests_cfi_flash_0_s1                       (cpu_0_data_master_requests_cfi_flash_0_s1),
      .cpu_0_data_master_requests_cpu_0_jtag_debug_module              (cpu_0_data_master_requests_cpu_0_jtag_debug_module),
      .cpu_0_data_master_requests_epcs_epcs_control_port               (cpu_0_data_master_requests_epcs_epcs_control_port),
      .cpu_0_data_master_requests_jtag_uart_avalon_jtag_slave          (cpu_0_data_master_requests_jtag_uart_avalon_jtag_slave),
      .cpu_0_data_master_requests_lcd_control_slave                    (cpu_0_data_master_requests_lcd_control_slave),
      .cpu_0_data_master_requests_onchip_memory2_s1                    (cpu_0_data_master_requests_onchip_memory2_s1),
      .cpu_0_data_master_requests_sram_avalon_slave_0                  (cpu_0_data_master_requests_sram_avalon_slave_0),
      .cpu_0_data_master_requests_sysid_0_control_slave                (cpu_0_data_master_requests_sysid_0_control_slave),
      .cpu_0_data_master_requests_timer_s1                             (cpu_0_data_master_requests_timer_s1),
      .cpu_0_data_master_requests_uart_s1                              (cpu_0_data_master_requests_uart_s1),
      .cpu_0_data_master_requests_vga_0_avalon_slave_0                 (cpu_0_data_master_requests_vga_0_avalon_slave_0),
      .cpu_0_data_master_waitrequest                                   (cpu_0_data_master_waitrequest),
      .cpu_0_data_master_write                                         (cpu_0_data_master_write),
      .cpu_0_data_master_writedata                                     (cpu_0_data_master_writedata),
      .cpu_0_jtag_debug_module_readdata_from_sa                        (cpu_0_jtag_debug_module_readdata_from_sa),
      .d1_cpu_0_jtag_debug_module_end_xfer                             (d1_cpu_0_jtag_debug_module_end_xfer),
      .d1_epcs_epcs_control_port_end_xfer                              (d1_epcs_epcs_control_port_end_xfer),
      .d1_jtag_uart_avalon_jtag_slave_end_xfer                         (d1_jtag_uart_avalon_jtag_slave_end_xfer),
      .d1_lcd_control_slave_end_xfer                                   (d1_lcd_control_slave_end_xfer),
      .d1_onchip_memory2_s1_end_xfer                                   (d1_onchip_memory2_s1_end_xfer),
      .d1_sram_avalon_slave_0_end_xfer                                 (d1_sram_avalon_slave_0_end_xfer),
      .d1_sysid_0_control_slave_end_xfer                               (d1_sysid_0_control_slave_end_xfer),
      .d1_timer_s1_end_xfer                                            (d1_timer_s1_end_xfer),
      .d1_tri_state_bridge_flash_avalon_slave_end_xfer                 (d1_tri_state_bridge_flash_avalon_slave_end_xfer),
      .d1_uart_s1_end_xfer                                             (d1_uart_s1_end_xfer),
      .d1_vga_0_avalon_slave_0_end_xfer                                (d1_vga_0_avalon_slave_0_end_xfer),
      .epcs_epcs_control_port_irq_from_sa                              (epcs_epcs_control_port_irq_from_sa),
      .epcs_epcs_control_port_readdata_from_sa                         (epcs_epcs_control_port_readdata_from_sa),
      .incoming_tri_state_bridge_flash_data_with_Xs_converted_to_0     (incoming_tri_state_bridge_flash_data_with_Xs_converted_to_0),
      .jtag_uart_avalon_jtag_slave_irq_from_sa                         (jtag_uart_avalon_jtag_slave_irq_from_sa),
      .jtag_uart_avalon_jtag_slave_readdata_from_sa                    (jtag_uart_avalon_jtag_slave_readdata_from_sa),
      .jtag_uart_avalon_jtag_slave_waitrequest_from_sa                 (jtag_uart_avalon_jtag_slave_waitrequest_from_sa),
      .lcd_control_slave_readdata_from_sa                              (lcd_control_slave_readdata_from_sa),
      .lcd_control_slave_wait_counter_eq_0                             (lcd_control_slave_wait_counter_eq_0),
      .lcd_control_slave_wait_counter_eq_1                             (lcd_control_slave_wait_counter_eq_1),
      .onchip_memory2_s1_readdata_from_sa                              (onchip_memory2_s1_readdata_from_sa),
      .registered_cpu_0_data_master_read_data_valid_cfi_flash_0_s1     (registered_cpu_0_data_master_read_data_valid_cfi_flash_0_s1),
      .registered_cpu_0_data_master_read_data_valid_onchip_memory2_s1  (registered_cpu_0_data_master_read_data_valid_onchip_memory2_s1),
      .reset_n                                                         (clk_50_reset_n),
      .sram_avalon_slave_0_readdata_from_sa                            (sram_avalon_slave_0_readdata_from_sa),
      .sram_avalon_slave_0_wait_counter_eq_0                           (sram_avalon_slave_0_wait_counter_eq_0),
      .sysid_0_control_slave_readdata_from_sa                          (sysid_0_control_slave_readdata_from_sa),
      .timer_s1_irq_from_sa                                            (timer_s1_irq_from_sa),
      .timer_s1_readdata_from_sa                                       (timer_s1_readdata_from_sa),
      .uart_s1_irq_from_sa                                             (uart_s1_irq_from_sa),
      .uart_s1_readdata_from_sa                                        (uart_s1_readdata_from_sa),
      .vga_0_avalon_slave_0_readdata_from_sa                           (vga_0_avalon_slave_0_readdata_from_sa),
      .vga_0_avalon_slave_0_wait_counter_eq_0                          (vga_0_avalon_slave_0_wait_counter_eq_0)
    );

  cpu_0_instruction_master_arbitrator the_cpu_0_instruction_master
    (
      .cfi_flash_0_s1_wait_counter_eq_0                                   (cfi_flash_0_s1_wait_counter_eq_0),
      .cfi_flash_0_s1_wait_counter_eq_1                                   (cfi_flash_0_s1_wait_counter_eq_1),
      .clk                                                                (clk_50),
      .cpu_0_instruction_master_address                                   (cpu_0_instruction_master_address),
      .cpu_0_instruction_master_address_to_slave                          (cpu_0_instruction_master_address_to_slave),
      .cpu_0_instruction_master_dbs_address                               (cpu_0_instruction_master_dbs_address),
      .cpu_0_instruction_master_granted_cfi_flash_0_s1                    (cpu_0_instruction_master_granted_cfi_flash_0_s1),
      .cpu_0_instruction_master_granted_cpu_0_jtag_debug_module           (cpu_0_instruction_master_granted_cpu_0_jtag_debug_module),
      .cpu_0_instruction_master_granted_epcs_epcs_control_port            (cpu_0_instruction_master_granted_epcs_epcs_control_port),
      .cpu_0_instruction_master_granted_onchip_memory2_s1                 (cpu_0_instruction_master_granted_onchip_memory2_s1),
      .cpu_0_instruction_master_granted_sram_avalon_slave_0               (cpu_0_instruction_master_granted_sram_avalon_slave_0),
      .cpu_0_instruction_master_latency_counter                           (cpu_0_instruction_master_latency_counter),
      .cpu_0_instruction_master_qualified_request_cfi_flash_0_s1          (cpu_0_instruction_master_qualified_request_cfi_flash_0_s1),
      .cpu_0_instruction_master_qualified_request_cpu_0_jtag_debug_module (cpu_0_instruction_master_qualified_request_cpu_0_jtag_debug_module),
      .cpu_0_instruction_master_qualified_request_epcs_epcs_control_port  (cpu_0_instruction_master_qualified_request_epcs_epcs_control_port),
      .cpu_0_instruction_master_qualified_request_onchip_memory2_s1       (cpu_0_instruction_master_qualified_request_onchip_memory2_s1),
      .cpu_0_instruction_master_qualified_request_sram_avalon_slave_0     (cpu_0_instruction_master_qualified_request_sram_avalon_slave_0),
      .cpu_0_instruction_master_read                                      (cpu_0_instruction_master_read),
      .cpu_0_instruction_master_read_data_valid_cfi_flash_0_s1            (cpu_0_instruction_master_read_data_valid_cfi_flash_0_s1),
      .cpu_0_instruction_master_read_data_valid_cpu_0_jtag_debug_module   (cpu_0_instruction_master_read_data_valid_cpu_0_jtag_debug_module),
      .cpu_0_instruction_master_read_data_valid_epcs_epcs_control_port    (cpu_0_instruction_master_read_data_valid_epcs_epcs_control_port),
      .cpu_0_instruction_master_read_data_valid_onchip_memory2_s1         (cpu_0_instruction_master_read_data_valid_onchip_memory2_s1),
      .cpu_0_instruction_master_read_data_valid_sram_avalon_slave_0       (cpu_0_instruction_master_read_data_valid_sram_avalon_slave_0),
      .cpu_0_instruction_master_readdata                                  (cpu_0_instruction_master_readdata),
      .cpu_0_instruction_master_readdatavalid                             (cpu_0_instruction_master_readdatavalid),
      .cpu_0_instruction_master_requests_cfi_flash_0_s1                   (cpu_0_instruction_master_requests_cfi_flash_0_s1),
      .cpu_0_instruction_master_requests_cpu_0_jtag_debug_module          (cpu_0_instruction_master_requests_cpu_0_jtag_debug_module),
      .cpu_0_instruction_master_requests_epcs_epcs_control_port           (cpu_0_instruction_master_requests_epcs_epcs_control_port),
      .cpu_0_instruction_master_requests_onchip_memory2_s1                (cpu_0_instruction_master_requests_onchip_memory2_s1),
      .cpu_0_instruction_master_requests_sram_avalon_slave_0              (cpu_0_instruction_master_requests_sram_avalon_slave_0),
      .cpu_0_instruction_master_waitrequest                               (cpu_0_instruction_master_waitrequest),
      .cpu_0_jtag_debug_module_readdata_from_sa                           (cpu_0_jtag_debug_module_readdata_from_sa),
      .d1_cpu_0_jtag_debug_module_end_xfer                                (d1_cpu_0_jtag_debug_module_end_xfer),
      .d1_epcs_epcs_control_port_end_xfer                                 (d1_epcs_epcs_control_port_end_xfer),
      .d1_onchip_memory2_s1_end_xfer                                      (d1_onchip_memory2_s1_end_xfer),
      .d1_sram_avalon_slave_0_end_xfer                                    (d1_sram_avalon_slave_0_end_xfer),
      .d1_tri_state_bridge_flash_avalon_slave_end_xfer                    (d1_tri_state_bridge_flash_avalon_slave_end_xfer),
      .epcs_epcs_control_port_readdata_from_sa                            (epcs_epcs_control_port_readdata_from_sa),
      .incoming_tri_state_bridge_flash_data                               (incoming_tri_state_bridge_flash_data),
      .onchip_memory2_s1_readdata_from_sa                                 (onchip_memory2_s1_readdata_from_sa),
      .reset_n                                                            (clk_50_reset_n),
      .sram_avalon_slave_0_readdata_from_sa                               (sram_avalon_slave_0_readdata_from_sa),
      .sram_avalon_slave_0_wait_counter_eq_0                              (sram_avalon_slave_0_wait_counter_eq_0)
    );

  cpu_0 the_cpu_0
    (
      .clk                                   (clk_50),
      .d_address                             (cpu_0_data_master_address),
      .d_byteenable                          (cpu_0_data_master_byteenable),
      .d_irq                                 (cpu_0_data_master_irq),
      .d_read                                (cpu_0_data_master_read),
      .d_readdata                            (cpu_0_data_master_readdata),
      .d_waitrequest                         (cpu_0_data_master_waitrequest),
      .d_write                               (cpu_0_data_master_write),
      .d_writedata                           (cpu_0_data_master_writedata),
      .i_address                             (cpu_0_instruction_master_address),
      .i_read                                (cpu_0_instruction_master_read),
      .i_readdata                            (cpu_0_instruction_master_readdata),
      .i_readdatavalid                       (cpu_0_instruction_master_readdatavalid),
      .i_waitrequest                         (cpu_0_instruction_master_waitrequest),
      .jtag_debug_module_address             (cpu_0_jtag_debug_module_address),
      .jtag_debug_module_begintransfer       (cpu_0_jtag_debug_module_begintransfer),
      .jtag_debug_module_byteenable          (cpu_0_jtag_debug_module_byteenable),
      .jtag_debug_module_debugaccess         (cpu_0_jtag_debug_module_debugaccess),
      .jtag_debug_module_debugaccess_to_roms (cpu_0_data_master_debugaccess),
      .jtag_debug_module_readdata            (cpu_0_jtag_debug_module_readdata),
      .jtag_debug_module_resetrequest        (cpu_0_jtag_debug_module_resetrequest),
      .jtag_debug_module_select              (cpu_0_jtag_debug_module_chipselect),
      .jtag_debug_module_write               (cpu_0_jtag_debug_module_write),
      .jtag_debug_module_writedata           (cpu_0_jtag_debug_module_writedata),
      .reset_n                               (cpu_0_jtag_debug_module_reset_n)
    );

  epcs_epcs_control_port_arbitrator the_epcs_epcs_control_port
    (
      .clk                                                               (clk_50),
      .cpu_0_data_master_address_to_slave                                (cpu_0_data_master_address_to_slave),
      .cpu_0_data_master_granted_epcs_epcs_control_port                  (cpu_0_data_master_granted_epcs_epcs_control_port),
      .cpu_0_data_master_qualified_request_epcs_epcs_control_port        (cpu_0_data_master_qualified_request_epcs_epcs_control_port),
      .cpu_0_data_master_read                                            (cpu_0_data_master_read),
      .cpu_0_data_master_read_data_valid_epcs_epcs_control_port          (cpu_0_data_master_read_data_valid_epcs_epcs_control_port),
      .cpu_0_data_master_requests_epcs_epcs_control_port                 (cpu_0_data_master_requests_epcs_epcs_control_port),
      .cpu_0_data_master_write                                           (cpu_0_data_master_write),
      .cpu_0_data_master_writedata                                       (cpu_0_data_master_writedata),
      .cpu_0_instruction_master_address_to_slave                         (cpu_0_instruction_master_address_to_slave),
      .cpu_0_instruction_master_granted_epcs_epcs_control_port           (cpu_0_instruction_master_granted_epcs_epcs_control_port),
      .cpu_0_instruction_master_latency_counter                          (cpu_0_instruction_master_latency_counter),
      .cpu_0_instruction_master_qualified_request_epcs_epcs_control_port (cpu_0_instruction_master_qualified_request_epcs_epcs_control_port),
      .cpu_0_instruction_master_read                                     (cpu_0_instruction_master_read),
      .cpu_0_instruction_master_read_data_valid_epcs_epcs_control_port   (cpu_0_instruction_master_read_data_valid_epcs_epcs_control_port),
      .cpu_0_instruction_master_requests_epcs_epcs_control_port          (cpu_0_instruction_master_requests_epcs_epcs_control_port),
      .d1_epcs_epcs_control_port_end_xfer                                (d1_epcs_epcs_control_port_end_xfer),
      .epcs_epcs_control_port_address                                    (epcs_epcs_control_port_address),
      .epcs_epcs_control_port_chipselect                                 (epcs_epcs_control_port_chipselect),
      .epcs_epcs_control_port_dataavailable                              (epcs_epcs_control_port_dataavailable),
      .epcs_epcs_control_port_dataavailable_from_sa                      (epcs_epcs_control_port_dataavailable_from_sa),
      .epcs_epcs_control_port_endofpacket                                (epcs_epcs_control_port_endofpacket),
      .epcs_epcs_control_port_endofpacket_from_sa                        (epcs_epcs_control_port_endofpacket_from_sa),
      .epcs_epcs_control_port_irq                                        (epcs_epcs_control_port_irq),
      .epcs_epcs_control_port_irq_from_sa                                (epcs_epcs_control_port_irq_from_sa),
      .epcs_epcs_control_port_read_n                                     (epcs_epcs_control_port_read_n),
      .epcs_epcs_control_port_readdata                                   (epcs_epcs_control_port_readdata),
      .epcs_epcs_control_port_readdata_from_sa                           (epcs_epcs_control_port_readdata_from_sa),
      .epcs_epcs_control_port_readyfordata                               (epcs_epcs_control_port_readyfordata),
      .epcs_epcs_control_port_readyfordata_from_sa                       (epcs_epcs_control_port_readyfordata_from_sa),
      .epcs_epcs_control_port_reset_n                                    (epcs_epcs_control_port_reset_n),
      .epcs_epcs_control_port_write_n                                    (epcs_epcs_control_port_write_n),
      .epcs_epcs_control_port_writedata                                  (epcs_epcs_control_port_writedata),
      .reset_n                                                           (clk_50_reset_n)
    );

  epcs the_epcs
    (
      .address       (epcs_epcs_control_port_address),
      .chipselect    (epcs_epcs_control_port_chipselect),
      .clk           (clk_50),
      .dataavailable (epcs_epcs_control_port_dataavailable),
      .endofpacket   (epcs_epcs_control_port_endofpacket),
      .irq           (epcs_epcs_control_port_irq),
      .read_n        (epcs_epcs_control_port_read_n),
      .readdata      (epcs_epcs_control_port_readdata),
      .readyfordata  (epcs_epcs_control_port_readyfordata),
      .reset_n       (epcs_epcs_control_port_reset_n),
      .write_n       (epcs_epcs_control_port_write_n),
      .writedata     (epcs_epcs_control_port_writedata)
    );

  jtag_uart_avalon_jtag_slave_arbitrator the_jtag_uart_avalon_jtag_slave
    (
      .clk                                                             (clk_50),
      .cpu_0_data_master_address_to_slave                              (cpu_0_data_master_address_to_slave),
      .cpu_0_data_master_granted_jtag_uart_avalon_jtag_slave           (cpu_0_data_master_granted_jtag_uart_avalon_jtag_slave),
      .cpu_0_data_master_qualified_request_jtag_uart_avalon_jtag_slave (cpu_0_data_master_qualified_request_jtag_uart_avalon_jtag_slave),
      .cpu_0_data_master_read                                          (cpu_0_data_master_read),
      .cpu_0_data_master_read_data_valid_jtag_uart_avalon_jtag_slave   (cpu_0_data_master_read_data_valid_jtag_uart_avalon_jtag_slave),
      .cpu_0_data_master_requests_jtag_uart_avalon_jtag_slave          (cpu_0_data_master_requests_jtag_uart_avalon_jtag_slave),
      .cpu_0_data_master_waitrequest                                   (cpu_0_data_master_waitrequest),
      .cpu_0_data_master_write                                         (cpu_0_data_master_write),
      .cpu_0_data_master_writedata                                     (cpu_0_data_master_writedata),
      .d1_jtag_uart_avalon_jtag_slave_end_xfer                         (d1_jtag_uart_avalon_jtag_slave_end_xfer),
      .jtag_uart_avalon_jtag_slave_address                             (jtag_uart_avalon_jtag_slave_address),
      .jtag_uart_avalon_jtag_slave_chipselect                          (jtag_uart_avalon_jtag_slave_chipselect),
      .jtag_uart_avalon_jtag_slave_dataavailable                       (jtag_uart_avalon_jtag_slave_dataavailable),
      .jtag_uart_avalon_jtag_slave_dataavailable_from_sa               (jtag_uart_avalon_jtag_slave_dataavailable_from_sa),
      .jtag_uart_avalon_jtag_slave_irq                                 (jtag_uart_avalon_jtag_slave_irq),
      .jtag_uart_avalon_jtag_slave_irq_from_sa                         (jtag_uart_avalon_jtag_slave_irq_from_sa),
      .jtag_uart_avalon_jtag_slave_read_n                              (jtag_uart_avalon_jtag_slave_read_n),
      .jtag_uart_avalon_jtag_slave_readdata                            (jtag_uart_avalon_jtag_slave_readdata),
      .jtag_uart_avalon_jtag_slave_readdata_from_sa                    (jtag_uart_avalon_jtag_slave_readdata_from_sa),
      .jtag_uart_avalon_jtag_slave_readyfordata                        (jtag_uart_avalon_jtag_slave_readyfordata),
      .jtag_uart_avalon_jtag_slave_readyfordata_from_sa                (jtag_uart_avalon_jtag_slave_readyfordata_from_sa),
      .jtag_uart_avalon_jtag_slave_reset_n                             (jtag_uart_avalon_jtag_slave_reset_n),
      .jtag_uart_avalon_jtag_slave_waitrequest                         (jtag_uart_avalon_jtag_slave_waitrequest),
      .jtag_uart_avalon_jtag_slave_waitrequest_from_sa                 (jtag_uart_avalon_jtag_slave_waitrequest_from_sa),
      .jtag_uart_avalon_jtag_slave_write_n                             (jtag_uart_avalon_jtag_slave_write_n),
      .jtag_uart_avalon_jtag_slave_writedata                           (jtag_uart_avalon_jtag_slave_writedata),
      .reset_n                                                         (clk_50_reset_n)
    );

  jtag_uart the_jtag_uart
    (
      .av_address     (jtag_uart_avalon_jtag_slave_address),
      .av_chipselect  (jtag_uart_avalon_jtag_slave_chipselect),
      .av_irq         (jtag_uart_avalon_jtag_slave_irq),
      .av_read_n      (jtag_uart_avalon_jtag_slave_read_n),
      .av_readdata    (jtag_uart_avalon_jtag_slave_readdata),
      .av_waitrequest (jtag_uart_avalon_jtag_slave_waitrequest),
      .av_write_n     (jtag_uart_avalon_jtag_slave_write_n),
      .av_writedata   (jtag_uart_avalon_jtag_slave_writedata),
      .clk            (clk_50),
      .dataavailable  (jtag_uart_avalon_jtag_slave_dataavailable),
      .readyfordata   (jtag_uart_avalon_jtag_slave_readyfordata),
      .rst_n          (jtag_uart_avalon_jtag_slave_reset_n)
    );

  lcd_control_slave_arbitrator the_lcd_control_slave
    (
      .clk                                                   (clk_50),
      .cpu_0_data_master_address_to_slave                    (cpu_0_data_master_address_to_slave),
      .cpu_0_data_master_byteenable                          (cpu_0_data_master_byteenable),
      .cpu_0_data_master_granted_lcd_control_slave           (cpu_0_data_master_granted_lcd_control_slave),
      .cpu_0_data_master_qualified_request_lcd_control_slave (cpu_0_data_master_qualified_request_lcd_control_slave),
      .cpu_0_data_master_read                                (cpu_0_data_master_read),
      .cpu_0_data_master_read_data_valid_lcd_control_slave   (cpu_0_data_master_read_data_valid_lcd_control_slave),
      .cpu_0_data_master_requests_lcd_control_slave          (cpu_0_data_master_requests_lcd_control_slave),
      .cpu_0_data_master_write                               (cpu_0_data_master_write),
      .cpu_0_data_master_writedata                           (cpu_0_data_master_writedata),
      .d1_lcd_control_slave_end_xfer                         (d1_lcd_control_slave_end_xfer),
      .lcd_control_slave_address                             (lcd_control_slave_address),
      .lcd_control_slave_begintransfer                       (lcd_control_slave_begintransfer),
      .lcd_control_slave_read                                (lcd_control_slave_read),
      .lcd_control_slave_readdata                            (lcd_control_slave_readdata),
      .lcd_control_slave_readdata_from_sa                    (lcd_control_slave_readdata_from_sa),
      .lcd_control_slave_reset_n                             (lcd_control_slave_reset_n),
      .lcd_control_slave_wait_counter_eq_0                   (lcd_control_slave_wait_counter_eq_0),
      .lcd_control_slave_wait_counter_eq_1                   (lcd_control_slave_wait_counter_eq_1),
      .lcd_control_slave_write                               (lcd_control_slave_write),
      .lcd_control_slave_writedata                           (lcd_control_slave_writedata),
      .reset_n                                               (clk_50_reset_n)
    );

  lcd the_lcd
    (
      .LCD_E         (LCD_E_from_the_lcd),
      .LCD_RS        (LCD_RS_from_the_lcd),
      .LCD_RW        (LCD_RW_from_the_lcd),
      .LCD_data      (LCD_data_to_and_from_the_lcd),
      .address       (lcd_control_slave_address),
      .begintransfer (lcd_control_slave_begintransfer),
      .clk           (clk_50),
      .read          (lcd_control_slave_read),
      .readdata      (lcd_control_slave_readdata),
      .reset_n       (lcd_control_slave_reset_n),
      .write         (lcd_control_slave_write),
      .writedata     (lcd_control_slave_writedata)
    );

  onchip_memory2_s1_arbitrator the_onchip_memory2_s1
    (
      .clk                                                            (clk_50),
      .cpu_0_data_master_address_to_slave                             (cpu_0_data_master_address_to_slave),
      .cpu_0_data_master_byteenable                                   (cpu_0_data_master_byteenable),
      .cpu_0_data_master_granted_onchip_memory2_s1                    (cpu_0_data_master_granted_onchip_memory2_s1),
      .cpu_0_data_master_qualified_request_onchip_memory2_s1          (cpu_0_data_master_qualified_request_onchip_memory2_s1),
      .cpu_0_data_master_read                                         (cpu_0_data_master_read),
      .cpu_0_data_master_read_data_valid_onchip_memory2_s1            (cpu_0_data_master_read_data_valid_onchip_memory2_s1),
      .cpu_0_data_master_requests_onchip_memory2_s1                   (cpu_0_data_master_requests_onchip_memory2_s1),
      .cpu_0_data_master_waitrequest                                  (cpu_0_data_master_waitrequest),
      .cpu_0_data_master_write                                        (cpu_0_data_master_write),
      .cpu_0_data_master_writedata                                    (cpu_0_data_master_writedata),
      .cpu_0_instruction_master_address_to_slave                      (cpu_0_instruction_master_address_to_slave),
      .cpu_0_instruction_master_granted_onchip_memory2_s1             (cpu_0_instruction_master_granted_onchip_memory2_s1),
      .cpu_0_instruction_master_latency_counter                       (cpu_0_instruction_master_latency_counter),
      .cpu_0_instruction_master_qualified_request_onchip_memory2_s1   (cpu_0_instruction_master_qualified_request_onchip_memory2_s1),
      .cpu_0_instruction_master_read                                  (cpu_0_instruction_master_read),
      .cpu_0_instruction_master_read_data_valid_onchip_memory2_s1     (cpu_0_instruction_master_read_data_valid_onchip_memory2_s1),
      .cpu_0_instruction_master_requests_onchip_memory2_s1            (cpu_0_instruction_master_requests_onchip_memory2_s1),
      .d1_onchip_memory2_s1_end_xfer                                  (d1_onchip_memory2_s1_end_xfer),
      .onchip_memory2_s1_address                                      (onchip_memory2_s1_address),
      .onchip_memory2_s1_byteenable                                   (onchip_memory2_s1_byteenable),
      .onchip_memory2_s1_chipselect                                   (onchip_memory2_s1_chipselect),
      .onchip_memory2_s1_clken                                        (onchip_memory2_s1_clken),
      .onchip_memory2_s1_readdata                                     (onchip_memory2_s1_readdata),
      .onchip_memory2_s1_readdata_from_sa                             (onchip_memory2_s1_readdata_from_sa),
      .onchip_memory2_s1_reset                                        (onchip_memory2_s1_reset),
      .onchip_memory2_s1_write                                        (onchip_memory2_s1_write),
      .onchip_memory2_s1_writedata                                    (onchip_memory2_s1_writedata),
      .registered_cpu_0_data_master_read_data_valid_onchip_memory2_s1 (registered_cpu_0_data_master_read_data_valid_onchip_memory2_s1),
      .reset_n                                                        (clk_50_reset_n)
    );

  onchip_memory2 the_onchip_memory2
    (
      .address    (onchip_memory2_s1_address),
      .byteenable (onchip_memory2_s1_byteenable),
      .chipselect (onchip_memory2_s1_chipselect),
      .clk        (clk_50),
      .clken      (onchip_memory2_s1_clken),
      .readdata   (onchip_memory2_s1_readdata),
      .reset      (onchip_memory2_s1_reset),
      .write      (onchip_memory2_s1_write),
      .writedata  (onchip_memory2_s1_writedata)
    );

  sram_avalon_slave_0_arbitrator the_sram_avalon_slave_0
    (
      .clk                                                            (clk_50),
      .cpu_0_data_master_address_to_slave                             (cpu_0_data_master_address_to_slave),
      .cpu_0_data_master_byteenable                                   (cpu_0_data_master_byteenable),
      .cpu_0_data_master_byteenable_sram_avalon_slave_0               (cpu_0_data_master_byteenable_sram_avalon_slave_0),
      .cpu_0_data_master_dbs_address                                  (cpu_0_data_master_dbs_address),
      .cpu_0_data_master_dbs_write_16                                 (cpu_0_data_master_dbs_write_16),
      .cpu_0_data_master_granted_sram_avalon_slave_0                  (cpu_0_data_master_granted_sram_avalon_slave_0),
      .cpu_0_data_master_no_byte_enables_and_last_term                (cpu_0_data_master_no_byte_enables_and_last_term),
      .cpu_0_data_master_qualified_request_sram_avalon_slave_0        (cpu_0_data_master_qualified_request_sram_avalon_slave_0),
      .cpu_0_data_master_read                                         (cpu_0_data_master_read),
      .cpu_0_data_master_read_data_valid_sram_avalon_slave_0          (cpu_0_data_master_read_data_valid_sram_avalon_slave_0),
      .cpu_0_data_master_requests_sram_avalon_slave_0                 (cpu_0_data_master_requests_sram_avalon_slave_0),
      .cpu_0_data_master_write                                        (cpu_0_data_master_write),
      .cpu_0_instruction_master_address_to_slave                      (cpu_0_instruction_master_address_to_slave),
      .cpu_0_instruction_master_dbs_address                           (cpu_0_instruction_master_dbs_address),
      .cpu_0_instruction_master_granted_sram_avalon_slave_0           (cpu_0_instruction_master_granted_sram_avalon_slave_0),
      .cpu_0_instruction_master_latency_counter                       (cpu_0_instruction_master_latency_counter),
      .cpu_0_instruction_master_qualified_request_sram_avalon_slave_0 (cpu_0_instruction_master_qualified_request_sram_avalon_slave_0),
      .cpu_0_instruction_master_read                                  (cpu_0_instruction_master_read),
      .cpu_0_instruction_master_read_data_valid_sram_avalon_slave_0   (cpu_0_instruction_master_read_data_valid_sram_avalon_slave_0),
      .cpu_0_instruction_master_requests_sram_avalon_slave_0          (cpu_0_instruction_master_requests_sram_avalon_slave_0),
      .d1_sram_avalon_slave_0_end_xfer                                (d1_sram_avalon_slave_0_end_xfer),
      .reset_n                                                        (clk_50_reset_n),
      .sram_avalon_slave_0_address                                    (sram_avalon_slave_0_address),
      .sram_avalon_slave_0_byteenable_n                               (sram_avalon_slave_0_byteenable_n),
      .sram_avalon_slave_0_chipselect_n                               (sram_avalon_slave_0_chipselect_n),
      .sram_avalon_slave_0_read_n                                     (sram_avalon_slave_0_read_n),
      .sram_avalon_slave_0_readdata                                   (sram_avalon_slave_0_readdata),
      .sram_avalon_slave_0_readdata_from_sa                           (sram_avalon_slave_0_readdata_from_sa),
      .sram_avalon_slave_0_reset_n                                    (sram_avalon_slave_0_reset_n),
      .sram_avalon_slave_0_wait_counter_eq_0                          (sram_avalon_slave_0_wait_counter_eq_0),
      .sram_avalon_slave_0_write_n                                    (sram_avalon_slave_0_write_n),
      .sram_avalon_slave_0_writedata                                  (sram_avalon_slave_0_writedata)
    );

  sram the_sram
    (
      .SRAM_ADDR (SRAM_ADDR_from_the_sram),
      .SRAM_CE_N (SRAM_CE_N_from_the_sram),
      .SRAM_DQ   (SRAM_DQ_to_and_from_the_sram),
      .SRAM_LB_N (SRAM_LB_N_from_the_sram),
      .SRAM_OE_N (SRAM_OE_N_from_the_sram),
      .SRAM_UB_N (SRAM_UB_N_from_the_sram),
      .SRAM_WE_N (SRAM_WE_N_from_the_sram),
      .iADDR     (sram_avalon_slave_0_address),
      .iBE_N     (sram_avalon_slave_0_byteenable_n),
      .iCE_N     (sram_avalon_slave_0_chipselect_n),
      .iCLK      (clk_50),
      .iDATA     (sram_avalon_slave_0_writedata),
      .iOE_N     (sram_avalon_slave_0_read_n),
      .iRST_N    (sram_avalon_slave_0_reset_n),
      .iWE_N     (sram_avalon_slave_0_write_n),
      .oDATA     (sram_avalon_slave_0_readdata)
    );

  sysid_0_control_slave_arbitrator the_sysid_0_control_slave
    (
      .clk                                                       (clk_50),
      .cpu_0_data_master_address_to_slave                        (cpu_0_data_master_address_to_slave),
      .cpu_0_data_master_granted_sysid_0_control_slave           (cpu_0_data_master_granted_sysid_0_control_slave),
      .cpu_0_data_master_qualified_request_sysid_0_control_slave (cpu_0_data_master_qualified_request_sysid_0_control_slave),
      .cpu_0_data_master_read                                    (cpu_0_data_master_read),
      .cpu_0_data_master_read_data_valid_sysid_0_control_slave   (cpu_0_data_master_read_data_valid_sysid_0_control_slave),
      .cpu_0_data_master_requests_sysid_0_control_slave          (cpu_0_data_master_requests_sysid_0_control_slave),
      .cpu_0_data_master_write                                   (cpu_0_data_master_write),
      .d1_sysid_0_control_slave_end_xfer                         (d1_sysid_0_control_slave_end_xfer),
      .reset_n                                                   (clk_50_reset_n),
      .sysid_0_control_slave_address                             (sysid_0_control_slave_address),
      .sysid_0_control_slave_readdata                            (sysid_0_control_slave_readdata),
      .sysid_0_control_slave_readdata_from_sa                    (sysid_0_control_slave_readdata_from_sa),
      .sysid_0_control_slave_reset_n                             (sysid_0_control_slave_reset_n)
    );

  sysid_0 the_sysid_0
    (
      .address  (sysid_0_control_slave_address),
      .clock    (sysid_0_control_slave_clock),
      .readdata (sysid_0_control_slave_readdata),
      .reset_n  (sysid_0_control_slave_reset_n)
    );

  timer_s1_arbitrator the_timer_s1
    (
      .clk                                          (clk_50),
      .cpu_0_data_master_address_to_slave           (cpu_0_data_master_address_to_slave),
      .cpu_0_data_master_granted_timer_s1           (cpu_0_data_master_granted_timer_s1),
      .cpu_0_data_master_qualified_request_timer_s1 (cpu_0_data_master_qualified_request_timer_s1),
      .cpu_0_data_master_read                       (cpu_0_data_master_read),
      .cpu_0_data_master_read_data_valid_timer_s1   (cpu_0_data_master_read_data_valid_timer_s1),
      .cpu_0_data_master_requests_timer_s1          (cpu_0_data_master_requests_timer_s1),
      .cpu_0_data_master_waitrequest                (cpu_0_data_master_waitrequest),
      .cpu_0_data_master_write                      (cpu_0_data_master_write),
      .cpu_0_data_master_writedata                  (cpu_0_data_master_writedata),
      .d1_timer_s1_end_xfer                         (d1_timer_s1_end_xfer),
      .reset_n                                      (clk_50_reset_n),
      .timer_s1_address                             (timer_s1_address),
      .timer_s1_chipselect                          (timer_s1_chipselect),
      .timer_s1_irq                                 (timer_s1_irq),
      .timer_s1_irq_from_sa                         (timer_s1_irq_from_sa),
      .timer_s1_readdata                            (timer_s1_readdata),
      .timer_s1_readdata_from_sa                    (timer_s1_readdata_from_sa),
      .timer_s1_reset_n                             (timer_s1_reset_n),
      .timer_s1_write_n                             (timer_s1_write_n),
      .timer_s1_writedata                           (timer_s1_writedata)
    );

  timer the_timer
    (
      .address    (timer_s1_address),
      .chipselect (timer_s1_chipselect),
      .clk        (clk_50),
      .irq        (timer_s1_irq),
      .readdata   (timer_s1_readdata),
      .reset_n    (timer_s1_reset_n),
      .write_n    (timer_s1_write_n),
      .writedata  (timer_s1_writedata)
    );

  tri_state_bridge_flash_avalon_slave_arbitrator the_tri_state_bridge_flash_avalon_slave
    (
      .cfi_flash_0_s1_wait_counter_eq_0                            (cfi_flash_0_s1_wait_counter_eq_0),
      .cfi_flash_0_s1_wait_counter_eq_1                            (cfi_flash_0_s1_wait_counter_eq_1),
      .clk                                                         (clk_50),
      .cpu_0_data_master_address_to_slave                          (cpu_0_data_master_address_to_slave),
      .cpu_0_data_master_byteenable                                (cpu_0_data_master_byteenable),
      .cpu_0_data_master_byteenable_cfi_flash_0_s1                 (cpu_0_data_master_byteenable_cfi_flash_0_s1),
      .cpu_0_data_master_dbs_address                               (cpu_0_data_master_dbs_address),
      .cpu_0_data_master_dbs_write_8                               (cpu_0_data_master_dbs_write_8),
      .cpu_0_data_master_granted_cfi_flash_0_s1                    (cpu_0_data_master_granted_cfi_flash_0_s1),
      .cpu_0_data_master_no_byte_enables_and_last_term             (cpu_0_data_master_no_byte_enables_and_last_term),
      .cpu_0_data_master_qualified_request_cfi_flash_0_s1          (cpu_0_data_master_qualified_request_cfi_flash_0_s1),
      .cpu_0_data_master_read                                      (cpu_0_data_master_read),
      .cpu_0_data_master_read_data_valid_cfi_flash_0_s1            (cpu_0_data_master_read_data_valid_cfi_flash_0_s1),
      .cpu_0_data_master_requests_cfi_flash_0_s1                   (cpu_0_data_master_requests_cfi_flash_0_s1),
      .cpu_0_data_master_write                                     (cpu_0_data_master_write),
      .cpu_0_instruction_master_address_to_slave                   (cpu_0_instruction_master_address_to_slave),
      .cpu_0_instruction_master_dbs_address                        (cpu_0_instruction_master_dbs_address),
      .cpu_0_instruction_master_granted_cfi_flash_0_s1             (cpu_0_instruction_master_granted_cfi_flash_0_s1),
      .cpu_0_instruction_master_latency_counter                    (cpu_0_instruction_master_latency_counter),
      .cpu_0_instruction_master_qualified_request_cfi_flash_0_s1   (cpu_0_instruction_master_qualified_request_cfi_flash_0_s1),
      .cpu_0_instruction_master_read                               (cpu_0_instruction_master_read),
      .cpu_0_instruction_master_read_data_valid_cfi_flash_0_s1     (cpu_0_instruction_master_read_data_valid_cfi_flash_0_s1),
      .cpu_0_instruction_master_requests_cfi_flash_0_s1            (cpu_0_instruction_master_requests_cfi_flash_0_s1),
      .d1_tri_state_bridge_flash_avalon_slave_end_xfer             (d1_tri_state_bridge_flash_avalon_slave_end_xfer),
      .incoming_tri_state_bridge_flash_data                        (incoming_tri_state_bridge_flash_data),
      .incoming_tri_state_bridge_flash_data_with_Xs_converted_to_0 (incoming_tri_state_bridge_flash_data_with_Xs_converted_to_0),
      .registered_cpu_0_data_master_read_data_valid_cfi_flash_0_s1 (registered_cpu_0_data_master_read_data_valid_cfi_flash_0_s1),
      .reset_n                                                     (clk_50_reset_n),
      .select_n_to_the_cfi_flash_0                                 (select_n_to_the_cfi_flash_0),
      .tri_state_bridge_flash_address                              (tri_state_bridge_flash_address),
      .tri_state_bridge_flash_data                                 (tri_state_bridge_flash_data),
      .tri_state_bridge_flash_readn                                (tri_state_bridge_flash_readn),
      .write_n_to_the_cfi_flash_0                                  (write_n_to_the_cfi_flash_0)
    );

  uart_s1_arbitrator the_uart_s1
    (
      .clk                                         (clk_50),
      .cpu_0_data_master_address_to_slave          (cpu_0_data_master_address_to_slave),
      .cpu_0_data_master_granted_uart_s1           (cpu_0_data_master_granted_uart_s1),
      .cpu_0_data_master_qualified_request_uart_s1 (cpu_0_data_master_qualified_request_uart_s1),
      .cpu_0_data_master_read                      (cpu_0_data_master_read),
      .cpu_0_data_master_read_data_valid_uart_s1   (cpu_0_data_master_read_data_valid_uart_s1),
      .cpu_0_data_master_requests_uart_s1          (cpu_0_data_master_requests_uart_s1),
      .cpu_0_data_master_write                     (cpu_0_data_master_write),
      .cpu_0_data_master_writedata                 (cpu_0_data_master_writedata),
      .d1_uart_s1_end_xfer                         (d1_uart_s1_end_xfer),
      .reset_n                                     (clk_50_reset_n),
      .uart_s1_address                             (uart_s1_address),
      .uart_s1_begintransfer                       (uart_s1_begintransfer),
      .uart_s1_chipselect                          (uart_s1_chipselect),
      .uart_s1_dataavailable                       (uart_s1_dataavailable),
      .uart_s1_dataavailable_from_sa               (uart_s1_dataavailable_from_sa),
      .uart_s1_irq                                 (uart_s1_irq),
      .uart_s1_irq_from_sa                         (uart_s1_irq_from_sa),
      .uart_s1_read_n                              (uart_s1_read_n),
      .uart_s1_readdata                            (uart_s1_readdata),
      .uart_s1_readdata_from_sa                    (uart_s1_readdata_from_sa),
      .uart_s1_readyfordata                        (uart_s1_readyfordata),
      .uart_s1_readyfordata_from_sa                (uart_s1_readyfordata_from_sa),
      .uart_s1_reset_n                             (uart_s1_reset_n),
      .uart_s1_write_n                             (uart_s1_write_n),
      .uart_s1_writedata                           (uart_s1_writedata)
    );

  uart the_uart
    (
      .address       (uart_s1_address),
      .begintransfer (uart_s1_begintransfer),
      .chipselect    (uart_s1_chipselect),
      .clk           (clk_50),
      .dataavailable (uart_s1_dataavailable),
      .irq           (uart_s1_irq),
      .read_n        (uart_s1_read_n),
      .readdata      (uart_s1_readdata),
      .readyfordata  (uart_s1_readyfordata),
      .reset_n       (uart_s1_reset_n),
      .rxd           (rxd_to_the_uart),
      .txd           (txd_from_the_uart),
      .write_n       (uart_s1_write_n),
      .writedata     (uart_s1_writedata)
    );

  vga_0_avalon_slave_0_arbitrator the_vga_0_avalon_slave_0
    (
      .clk                                                      (clk_50),
      .cpu_0_data_master_address_to_slave                       (cpu_0_data_master_address_to_slave),
      .cpu_0_data_master_granted_vga_0_avalon_slave_0           (cpu_0_data_master_granted_vga_0_avalon_slave_0),
      .cpu_0_data_master_qualified_request_vga_0_avalon_slave_0 (cpu_0_data_master_qualified_request_vga_0_avalon_slave_0),
      .cpu_0_data_master_read                                   (cpu_0_data_master_read),
      .cpu_0_data_master_read_data_valid_vga_0_avalon_slave_0   (cpu_0_data_master_read_data_valid_vga_0_avalon_slave_0),
      .cpu_0_data_master_requests_vga_0_avalon_slave_0          (cpu_0_data_master_requests_vga_0_avalon_slave_0),
      .cpu_0_data_master_write                                  (cpu_0_data_master_write),
      .cpu_0_data_master_writedata                              (cpu_0_data_master_writedata),
      .d1_vga_0_avalon_slave_0_end_xfer                         (d1_vga_0_avalon_slave_0_end_xfer),
      .reset_n                                                  (clk_50_reset_n),
      .vga_0_avalon_slave_0_address                             (vga_0_avalon_slave_0_address),
      .vga_0_avalon_slave_0_chipselect                          (vga_0_avalon_slave_0_chipselect),
      .vga_0_avalon_slave_0_read                                (vga_0_avalon_slave_0_read),
      .vga_0_avalon_slave_0_readdata                            (vga_0_avalon_slave_0_readdata),
      .vga_0_avalon_slave_0_readdata_from_sa                    (vga_0_avalon_slave_0_readdata_from_sa),
      .vga_0_avalon_slave_0_reset_n                             (vga_0_avalon_slave_0_reset_n),
      .vga_0_avalon_slave_0_wait_counter_eq_0                   (vga_0_avalon_slave_0_wait_counter_eq_0),
      .vga_0_avalon_slave_0_write                               (vga_0_avalon_slave_0_write),
      .vga_0_avalon_slave_0_writedata                           (vga_0_avalon_slave_0_writedata)
    );

  vga_0 the_vga_0
    (
      .VGA_B     (VGA_B_from_the_vga_0),
      .VGA_BLANK (VGA_BLANK_from_the_vga_0),
      .VGA_CLK   (VGA_CLK_from_the_vga_0),
      .VGA_G     (VGA_G_from_the_vga_0),
      .VGA_HS    (VGA_HS_from_the_vga_0),
      .VGA_R     (VGA_R_from_the_vga_0),
      .VGA_SYNC  (VGA_SYNC_from_the_vga_0),
      .VGA_VS    (VGA_VS_from_the_vga_0),
      .iADDR     (vga_0_avalon_slave_0_address),
      .iCLK      (clk_50),
      .iCLK_25   (iCLK_25_to_the_vga_0),
      .iCS       (vga_0_avalon_slave_0_chipselect),
      .iDATA     (vga_0_avalon_slave_0_writedata),
      .iRD       (vga_0_avalon_slave_0_read),
      .iRST_N    (vga_0_avalon_slave_0_reset_n),
      .iWR       (vga_0_avalon_slave_0_write),
      .oDATA     (vga_0_avalon_slave_0_readdata)
    );

  //reset is asserted asynchronously and deasserted synchronously
  DE2_SoPC_reset_clk_50_domain_synch_module DE2_SoPC_reset_clk_50_domain_synch
    (
      .clk      (clk_50),
      .data_in  (1'b1),
      .data_out (clk_50_reset_n),
      .reset_n  (reset_n_sources)
    );

  //reset sources mux, which is an e_mux
  assign reset_n_sources = ~(~reset_n |
    0 |
    cpu_0_jtag_debug_module_resetrequest_from_sa |
    cpu_0_jtag_debug_module_resetrequest_from_sa);

  //sysid_0_control_slave_clock of type clock does not connect to anything so wire it to default (0)
  assign sysid_0_control_slave_clock = 0;


endmodule


// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cfi_flash_0_lane0_module (
                                  // inputs:
                                   data,
                                   rdaddress,
                                   rdclken,
                                   wraddress,
                                   wrclock,
                                   wren,

                                  // outputs:
                                   q
                                )
;

  output  [  7: 0] q;
  input   [  7: 0] data;
  input   [ 21: 0] rdaddress;
  input            rdclken;
  input   [ 21: 0] wraddress;
  input            wrclock;
  input            wren;

  reg     [  7: 0] mem_array [4194303: 0];
  wire    [  7: 0] q;
  reg     [ 21: 0] read_address;

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  always @(rdaddress)
    begin
      read_address = rdaddress;
    end


  // Data read is asynchronous.
  assign q = mem_array[read_address];

initial
    $readmemh("cfi_flash_0.dat", mem_array);
  always @(posedge wrclock)
    begin
      // Write data
      if (wren)
          mem_array[wraddress] <= data;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on
//synthesis read_comments_as_HDL on
//  always @(rdaddress)
//    begin
//      read_address = rdaddress;
//    end
//
//
//  lpm_ram_dp lpm_ram_dp_component
//    (
//      .data (data),
//      .q (q),
//      .rdaddress (read_address),
//      .rdclken (rdclken),
//      .wraddress (wraddress),
//      .wrclock (wrclock),
//      .wren (wren)
//    );
//
//  defparam lpm_ram_dp_component.lpm_file = "cfi_flash_0.mif",
//           lpm_ram_dp_component.lpm_hint = "USE_EAB=ON",
//           lpm_ram_dp_component.lpm_indata = "REGISTERED",
//           lpm_ram_dp_component.lpm_outdata = "UNREGISTERED",
//           lpm_ram_dp_component.lpm_rdaddress_control = "UNREGISTERED",
//           lpm_ram_dp_component.lpm_width = 8,
//           lpm_ram_dp_component.lpm_widthad = 22,
//           lpm_ram_dp_component.lpm_wraddress_control = "REGISTERED",
//           lpm_ram_dp_component.suppress_memory_conversion_warnings = "ON";
//
//synthesis read_comments_as_HDL off

endmodule


// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cfi_flash_0 (
                     // inputs:
                      address,
                      read_n,
                      select_n,
                      write_n,

                     // outputs:
                      data
                   )
;

  inout   [  7: 0] data;
  input   [ 21: 0] address;
  input            read_n;
  input            select_n;
  input            write_n;

  wire    [  7: 0] data;
  wire    [  7: 0] data_0;
  wire    [  7: 0] logic_vector_gasket;
  wire    [  7: 0] q_0;
  //s1, which is an e_ptf_slave

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  assign logic_vector_gasket = data;
  assign data_0 = logic_vector_gasket[7 : 0];
  //cfi_flash_0_lane0, which is an e_ram
  cfi_flash_0_lane0_module cfi_flash_0_lane0
    (
      .data      (data_0),
      .q         (q_0),
      .rdaddress (address),
      .rdclken   (1'b1),
      .wraddress (address),
      .wrclock   (write_n),
      .wren      (~select_n)
    );

  assign data = (~select_n & ~read_n)? q_0: {8{1'bz}};

//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule


//synthesis translate_off



// <ALTERA_NOTE> CODE INSERTED BETWEEN HERE

// AND HERE WILL BE PRESERVED </ALTERA_NOTE>


// If user logic components use Altsync_Ram with convert_hex2ver.dll,
// set USE_convert_hex2ver in the user comments section above

// `ifdef USE_convert_hex2ver
// `else
// `define NO_PLI 1
// `endif

`include "c:/altera/12.0/quartus/eda/sim_lib/altera_mf.v"
`include "c:/altera/12.0/quartus/eda/sim_lib/220model.v"
`include "c:/altera/12.0/quartus/eda/sim_lib/sgate.v"
`include "ip/SRAM_16Bit_512K/hdl/SRAM_16Bit_512K.v"
`include "sram.v"
`include "ip/Binary_VGA_Controller/hdl/Img_RAM.v"
`include "ip/Binary_VGA_Controller/hdl/VGA_Controller.v"
`include "ip/Binary_VGA_Controller/hdl/VGA_NIOS_CTRL.v"
`include "ip/Binary_VGA_Controller/hdl/VGA_OSD_RAM.v"
`include "vga_0.v"
`include "uart.v"
`include "cpu_0_test_bench.v"
`include "cpu_0_mult_cell.v"
`include "cpu_0_oci_test_bench.v"
`include "cpu_0_jtag_debug_module_tck.v"
`include "cpu_0_jtag_debug_module_sysclk.v"
`include "cpu_0_jtag_debug_module_wrapper.v"
`include "cpu_0.v"
`include "timer.v"
`include "sysid_0.v"
`include "onchip_memory2.v"
`include "epcs.v"
`include "jtag_uart.v"
`include "lcd.v"

`timescale 1ns / 1ps

module test_bench 
;


  wire             LCD_E_from_the_lcd;
  wire             LCD_RS_from_the_lcd;
  wire             LCD_RW_from_the_lcd;
  wire    [  7: 0] LCD_data_to_and_from_the_lcd;
  wire    [ 17: 0] SRAM_ADDR_from_the_sram;
  wire             SRAM_CE_N_from_the_sram;
  wire    [ 15: 0] SRAM_DQ_to_and_from_the_sram;
  wire             SRAM_LB_N_from_the_sram;
  wire             SRAM_OE_N_from_the_sram;
  wire             SRAM_UB_N_from_the_sram;
  wire             SRAM_WE_N_from_the_sram;
  wire             VGA_BLANK_from_the_vga_0;
  wire    [  9: 0] VGA_B_from_the_vga_0;
  wire             VGA_CLK_from_the_vga_0;
  wire    [  9: 0] VGA_G_from_the_vga_0;
  wire             VGA_HS_from_the_vga_0;
  wire    [  9: 0] VGA_R_from_the_vga_0;
  wire             VGA_SYNC_from_the_vga_0;
  wire             VGA_VS_from_the_vga_0;
  wire             clk;
  reg              clk_50;
  wire             epcs_epcs_control_port_dataavailable_from_sa;
  wire             epcs_epcs_control_port_endofpacket_from_sa;
  wire             epcs_epcs_control_port_readyfordata_from_sa;
  wire             iCLK_25_to_the_vga_0;
  wire             jtag_uart_avalon_jtag_slave_dataavailable_from_sa;
  wire             jtag_uart_avalon_jtag_slave_readyfordata_from_sa;
  reg              reset_n;
  wire             rxd_to_the_uart;
  wire             select_n_to_the_cfi_flash_0;
  wire             sysid_0_control_slave_clock;
  wire    [ 21: 0] tri_state_bridge_flash_address;
  wire    [  7: 0] tri_state_bridge_flash_data;
  wire             tri_state_bridge_flash_readn;
  wire             txd_from_the_uart;
  wire             uart_s1_dataavailable_from_sa;
  wire             uart_s1_readyfordata_from_sa;
  wire             write_n_to_the_cfi_flash_0;


// <ALTERA_NOTE> CODE INSERTED BETWEEN HERE
//  add your signals and additional architecture here
// AND HERE WILL BE PRESERVED </ALTERA_NOTE>

  //Set us up the Dut
  DE2_SoPC DUT
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
      .VGA_BLANK_from_the_vga_0       (VGA_BLANK_from_the_vga_0),
      .VGA_B_from_the_vga_0           (VGA_B_from_the_vga_0),
      .VGA_CLK_from_the_vga_0         (VGA_CLK_from_the_vga_0),
      .VGA_G_from_the_vga_0           (VGA_G_from_the_vga_0),
      .VGA_HS_from_the_vga_0          (VGA_HS_from_the_vga_0),
      .VGA_R_from_the_vga_0           (VGA_R_from_the_vga_0),
      .VGA_SYNC_from_the_vga_0        (VGA_SYNC_from_the_vga_0),
      .VGA_VS_from_the_vga_0          (VGA_VS_from_the_vga_0),
      .clk_50                         (clk_50),
      .iCLK_25_to_the_vga_0           (iCLK_25_to_the_vga_0),
      .reset_n                        (reset_n),
      .rxd_to_the_uart                (rxd_to_the_uart),
      .select_n_to_the_cfi_flash_0    (select_n_to_the_cfi_flash_0),
      .tri_state_bridge_flash_address (tri_state_bridge_flash_address),
      .tri_state_bridge_flash_data    (tri_state_bridge_flash_data),
      .tri_state_bridge_flash_readn   (tri_state_bridge_flash_readn),
      .txd_from_the_uart              (txd_from_the_uart),
      .write_n_to_the_cfi_flash_0     (write_n_to_the_cfi_flash_0)
    );

  cfi_flash_0 the_cfi_flash_0
    (
      .address  (tri_state_bridge_flash_address),
      .data     (tri_state_bridge_flash_data),
      .read_n   (tri_state_bridge_flash_readn),
      .select_n (select_n_to_the_cfi_flash_0),
      .write_n  (write_n_to_the_cfi_flash_0)
    );

  initial
    clk_50 = 1'b0;
  always
    #10 clk_50 <= ~clk_50;
  
  initial 
    begin
      reset_n <= 0;
      #200 reset_n <= 1;
    end

endmodule


//synthesis translate_on