use strict;
use europa_all;

my $slave_name = 's1';
my $master_name = 'm1';

my $VGA_DAC_LATENCY = 8;

#####################################################################################
#                    SIGNAL TIMING FOR 640 x 480 VGA 60Hz                           #
#####################################################################################

my %vga_640x480_60Hz_timing;

$vga_640x480_60Hz_timing{"HSCAN_WIDTH"} = 800;
$vga_640x480_60Hz_timing{"VSCAN_DEPTH"} = 524;
$vga_640x480_60Hz_timing{"NUM_COLUMNS"} = 640;
$vga_640x480_60Hz_timing{"NUM_ROWS"} = 480;   

########################## HORIZONTAL TIMING CONSTANTS ###############################
# hblank                                   --------  ...  -----------
#       ___________________________________|                        |_________
# hsync ----------               ------------------  ...  -----------------
#                 |______________|                                        |____
# count           0              94       140                      781  794,0
#            HSYNC_LOW1     HSYNC_HIGH  HBLANK_HIGH         HBLANK_LOW  $HSYNC_LOW2
#
######################################################################################
$vga_640x480_60Hz_timing{"HSYNC_LOW1"} = 0;   
$vga_640x480_60Hz_timing{"HSYNC_LOW2"} = 800; 
$vga_640x480_60Hz_timing{"HSYNC_HIGH"} = 96;  
$vga_640x480_60Hz_timing{"HBLANK_HIGH"} = 144;
$vga_640x480_60Hz_timing{"HBLANK_LOW"} = 784; 

############################ VERTICAL TIMING CONSTANTS ###############################
# vblank -------                           --------  ...  -----------
#              |___________________________|                        |_________
# vsync ----------      ---------------------------  ...  ------------------
#                 |_____|                                                   |____
# linecount       0     2                 34                      514      528,0
#          VSYNC_LOW1 VSYNC_HIGH      VBLANK_HIGH             VBLANK_LOW  $VSYNC_LOW2
#
######################################################################################
$vga_640x480_60Hz_timing{"VSYNC_LOW1"} = 0;  
$vga_640x480_60Hz_timing{"VSYNC_LOW2"} = 524;
$vga_640x480_60Hz_timing{"VSYNC_HIGH"} = 2;  
$vga_640x480_60Hz_timing{"VBLANK_HIGH"} = 33;
$vga_640x480_60Hz_timing{"VBLANK_LOW"} = 513;
$vga_640x480_60Hz_timing{"SYNC_POLARITY"} = 0;  

######################################################################################

#####################################################################################
#                    SIGNAL TIMING FOR 800 x 600 VGA 60Hz                           #
#####################################################################################

my %vga_800x600_60Hz_timing;

$vga_800x600_60Hz_timing{"HSCAN_WIDTH"} = 1056;
$vga_800x600_60Hz_timing{"VSCAN_DEPTH"} = 628; 
$vga_800x600_60Hz_timing{"NUM_COLUMNS"} = 800; 
$vga_800x600_60Hz_timing{"NUM_ROWS"} = 600;    
$vga_800x600_60Hz_timing{"HSYNC_LOW1"} = 0;    
$vga_800x600_60Hz_timing{"HSYNC_LOW2"} = 1056; 
$vga_800x600_60Hz_timing{"HSYNC_HIGH"} = 128;  
$vga_800x600_60Hz_timing{"HBLANK_HIGH"} = 181; 
$vga_800x600_60Hz_timing{"HBLANK_LOW"} = 981;  
$vga_800x600_60Hz_timing{"VSYNC_LOW1"} = 0;    
$vga_800x600_60Hz_timing{"VSYNC_LOW2"} = 628;  
$vga_800x600_60Hz_timing{"VSYNC_HIGH"} = 4;    
$vga_800x600_60Hz_timing{"VBLANK_HIGH"} = 17;  
$vga_800x600_60Hz_timing{"VBLANK_LOW"} = 617;  
$vga_800x600_60Hz_timing{"SYNC_POLARITY"} = 1;  

######################################################################################

#####################################################################################
#                    SIGNAL TIMING FOR 1024 x 768 VGA 60Hz                          #
#####################################################################################

my %vga_1024x768_60Hz_timing;

$vga_1024x768_60Hz_timing{"HSCAN_WIDTH"} = 1344;
$vga_1024x768_60Hz_timing{"VSCAN_DEPTH"} = 806;
$vga_1024x768_60Hz_timing{"NUM_COLUMNS"} = 1024;
$vga_1024x768_60Hz_timing{"NUM_ROWS"} = 768;
$vga_1024x768_60Hz_timing{"HSYNC_LOW1"} = 0;
$vga_1024x768_60Hz_timing{"HSYNC_LOW2"} = 1344;
$vga_1024x768_60Hz_timing{"HSYNC_HIGH"} = 136;
$vga_1024x768_60Hz_timing{"HBLANK_HIGH"} = 296;
$vga_1024x768_60Hz_timing{"HBLANK_LOW"} = 1320;
$vga_1024x768_60Hz_timing{"VSYNC_LOW1"} = 0;
$vga_1024x768_60Hz_timing{"VSYNC_LOW2"} = 806;
$vga_1024x768_60Hz_timing{"VSYNC_HIGH"} = 6;
$vga_1024x768_60Hz_timing{"VBLANK_HIGH"} = 35;
$vga_1024x768_60Hz_timing{"VBLANK_LOW"} = 803;
$vga_1024x768_60Hz_timing{"SYNC_POLARITY"} = 0;  

	
######################################################################################

sub vga_controller
{
  # Simple syntax check is invoked with no parameters.
  return if !@_;

  my $project = e_project->new(@_);

  make($project);
  $project->output();
}

sub make_slave_interface(@)
{
  my %type_map;

  $type_map{"slave_address"} = "address";
  $type_map{"slave_write"} = "write";
  $type_map{"slave_writedata"} = "writedata";
  $type_map{"slave_readdata"} = "readdata";
  $type_map{"slave_chipselect"} = "chipselect";
  $type_map{"clk"} = "clk";
  $type_map{"reset_n"} = "reset_n";

  e_avalon_slave->add({
    name => $slave_name,
    type_map => \%type_map,
  });
}

sub make_master_interface(@)
{
  my %type_map;

  $type_map{"master_address"} = "address";
  $type_map{"master_readdata"} = "readdata";
  $type_map{"master_read"} = "read";
  $type_map{"master_waitrequest"} = "waitrequest";
  $type_map{"master_data_valid"} = "readdatavalid";

  e_avalon_master->add({
    name => $master_name,
    type_map => \%type_map,
  });
}

sub make($)
{
  my $project = shift;

  my $module = $project->top();
  my $marker = e_default_module_marker->new($module);

  my $mod_ptf = $project->system_ptf()->{"MODULE " . $module->name()};

  # Work with genuine writeable-to-ptf WSA and SBI hashes.
  my $SBI_slave = $mod_ptf->{"SLAVE $slave_name"}->{SYSTEM_BUILDER_INFO};
  my $SBI_master = $mod_ptf->{"MASTER $master_name"}->{SYSTEM_BUILDER_INFO};
  my $WSA = $mod_ptf->{WIZARD_SCRIPT_ARGUMENTS};

  ######################### VGA TIMING CONSTANTS #####################

	my $width = $WSA->{screen_width};
	my $height = $WSA->{screen_height};
#	print STDERR "Width = $width, Height = $height\n";

	# Here we choose which timing values we're going to use based on the wizard settings.
	my %vga_timing;
	my $key;
	my $value;

	if ($WSA->{screen_resolution} eq "640x480")
	{
		while (($key, $value) = each(%vga_640x480_60Hz_timing))
		{
			$vga_timing{$key} = $vga_640x480_60Hz_timing{$key};
		}
#	  e_signal->add({name => "clk_25", width => 1,});
#		e_assign->add (["vga_clk", "clk_25"]);
		
		print STDERR "VGA Controller resolution has been set to 640x480\n";
		print STDERR "Ensure that vga_clk is connected to a 25MHz clock\n";
	}
	if ($WSA->{screen_resolution} eq "800x600")
	{
		while (($key, $value) = each(%vga_800x600_60Hz_timing))
		{
			$vga_timing{$key} = $vga_800x600_60Hz_timing{$key};
		}
#	  e_signal->add({name => "clk_40", width => 1,});
#		e_assign->add (["vga_clk", "clk_40"]);
		
		print STDERR "VGA Controller resolution has been set to 800x600\n";
		print STDERR "Ensure that vga_clk is connected to a 40MHz clock\n";
	}
	if ($WSA->{screen_resolution} eq "1024x768")
	{
		while (($key, $value) = each(%vga_1024x768_60Hz_timing))
		{
			$vga_timing{$key} = $vga_1024x768_60Hz_timing{$key};
		}
#	  e_signal->add({name => "clk_65", width => 1,});
#		e_assign->add (["vga_clk", "clk_65"]);
		
		print STDERR "VGA Controller resolution has been set to 1024x768\n";
		print STDERR "Ensure that vga_clk is connected to a 65MHz clock\n";
	}

  my $HSCAN_WIDTH = $vga_timing{'HSCAN_WIDTH'};
  my $VSCAN_DEPTH = $vga_timing{'VSCAN_DEPTH'};
  my $NUM_COLUMNS = $vga_timing{'NUM_COLUMNS'};
  my $NUM_ROWS = $vga_timing{'NUM_ROWS'};
  my $HSYNC_LOW1 = $vga_timing{'HSYNC_LOW1'};
  my $HSYNC_LOW2 = $vga_timing{'HSYNC_LOW2'};
  my $HSYNC_HIGH = $vga_timing{'HSYNC_HIGH'};
  my $HBLANK_HIGH = $vga_timing{'HBLANK_HIGH'};
  my $HBLANK_LOW = $vga_timing{'HBLANK_LOW'};
  my $VSYNC_LOW1 = $vga_timing{'VSYNC_LOW1'};
  my $VSYNC_LOW2 = $vga_timing{'VSYNC_LOW2'};
  my $VSYNC_HIGH = $vga_timing{'VSYNC_HIGH'};
  my $VBLANK_HIGH = $vga_timing{'VBLANK_HIGH'};
  my $VBLANK_LOW = $vga_timing{'VBLANK_LOW'};
  my $SYNC_POLARITY = $vga_timing{'SYNC_POLARITY'};

  ################################################################
  #                     THIS IS THE DMA FIFO                     #
  ################################################################

  ####################### FIFO CONSTANTS #########################

  my $FIFO_DEPTH = $WSA->{fifo_depth};
  my $FIFO_WRITE_THRESHOLD = ($WSA->{fifo_depth} * 7 / 8);
  my $FIFO_READ_THRESHOLD = ($WSA->{fifo_depth} / 2);

  # These ports are for debugging only.
  #e_port->add({name => "fifo_data_out", width => $SBI_master->{Data_Width}, direction => "output", });
  #e_port->add({name => "fifo_used", width => 12, direction => "output", });

  # We need to declare the width of these signals
  my $fifo_counter_width = ceil(log2($FIFO_DEPTH));
  e_signal->add({name => "fifo_data_out", width => 32,});
  e_signal->add({name => "fifo_data_in", width => 32,});
  e_signal->add({name => "fifo_used", width => "$fifo_counter_width",});

  e_blind_instance->add({
     tag            => 'normal',
     use_sim_models => 1,
     name           => 'the_dcfifo',
     module         => 'dcfifo',
     in_port_map    => {data => "fifo_data_in",
                        rdclk => "vga_clk",
                        rdreq => "fifo_read_req",
                        wrclk => "fifo_write_clk",
                        wrreq => "fifo_write_req",
                        aclr => "!reset_n",},
     out_port_map   => {"q", "fifo_data_out",
                        wrusedw => "fifo_used",
                        rdempty => "fifo_rdempty",},
#                         wrfull => "fifo_wrfull"},
     parameter_map  => {LPM_WIDTH => "32",
                      LPM_NUMWORDS => $FIFO_DEPTH,
                      LPM_SHOWAHEAD => "\"ON\""},
  });

  e_assign->add (["fifo_write_clk", "clk"]);
  e_assign->add (["fifo_data_in", "master_readdata"]);

  # This is our signal that the fifo has fallen below the write threshold, and
  # should be written with some data as soon as possible.  We double register
  # it to avoid any possible clock-crossing metastability issues.
  e_register->add({
    out => {name => "fifo_has_room_reg1", export => 0,},
    in => "fifo_used < $FIFO_WRITE_THRESHOLD",
    enable => 1,
  });
  e_register->add({
    out => {name => "fifo_has_room", export => 0,},
    in => "fifo_has_room_reg1",
    enable => 1,
  });

  # This is our signal that the fifo has reached the read threshold
  # and we can start reading out of it.  We double register it to
  # avoid any possible clock-crossing metastability issues.
  e_register->add({
    out => {name => "fifo_has_data_reg1", export => 0,},
    in => "fifo_used > $FIFO_READ_THRESHOLD",
    clock => "vga_clk",
    enable => 1,
  });
  e_register->add({
    out => {name => "fifo_has_data", export => 0,},
    in => "fifo_has_data_reg1",
    clock => "vga_clk",
    enable => 1,
  });

	
  ################################################################
  #               THIS IS THE DMA ADDRESS COUNTER                #
  ################################################################

  e_blind_instance->add({
     tag            => 'normal',
     use_sim_models => 1,
     name           => 'dma_address_counter',
     module         => 'lpm_counter',
     in_port_map    => {clock => "clk",
                        aclr => "!reset_n",
                        cnt_en => "address_counter_incr",
                        sload => "address_counter_sload",
                        data => "dma_source_reg[31:2]",},
     out_port_map   => {"q", "address_counter_temp"},
     parameter_map  => {LPM_WIDTH => "30"},
  });

  e_signal->add({name => "address_counter_temp", width => 30,});
  e_signal->add({name => "address_counter", width => 32,});
  e_assign->add (["address_counter_incr", "(master_read == 1) && (master_waitrequest == 0) && (go_bit == 1)"]);
  e_assign->add (["address_counter_sload", "(go_bit == 0) ||(address_counter_incr && (address_counter == last_dma_addr_reg))"]);
  e_assign->add (["address_counter", "{address_counter_temp, 2'b00}"]);

  # Register the DMA end address too, since the sw driver can change the 
  # dma_source_reg register on which it depends during a buffer flip.
  e_register->add({
    out => {name => "last_dma_addr_reg", width => $SBI_slave->{Data_Width}, export => 0,},
    in => "(dma_source_reg + dma_modulus_reg - 4)",
    enable => "address_counter_sload",
  });


  ################################################################
  #                THIS IS THE VGA COLUMN COUNTER                #
  ################################################################
  
  my $column_counter_width = ceil(log2($HSCAN_WIDTH));

  e_blind_instance->add({
     tag            => 'normal',
     use_sim_models => 1,
     name           => 'vga_column_counter',
     module         => 'lpm_counter',
     in_port_map    => {clock => "vga_clk",
                        aclr => "!reset_n",
                        cnt_en => "vga_start",
                        sclr => "!vga_start"},
     out_port_map   => {"q", "column_counter",},
     parameter_map  => {LPM_WIDTH => "$column_counter_width",
                        LPM_MODULUS => "$HSCAN_WIDTH"},
  });

  e_signal->add({name => "column_counter", width => "$column_counter_width",});

  # Temporary for debug
  #e_port->add({name => "column_counter", width => 10, direction => "output", });


  ################################################################
  #               THIS IS THE VGA ROW COUNTER                    #
  ################################################################

  my $row_counter_width = ceil(log2($VSCAN_DEPTH));

  e_blind_instance->add({
     tag            => 'normal',
     use_sim_models => 1,
     name           => 'vga_row_counter',
     module         => 'lpm_counter',
     in_port_map    => {clock => "vga_clk",
                        aclr => "!reset_n",
                        cnt_en => "vga_start && (column_counter == ($HSCAN_WIDTH - 1))",
                        sclr => "!vga_start",},
     out_port_map   => {"q", "row_counter",},
     parameter_map  => {LPM_WIDTH => "$row_counter_width",
                        LPM_MODULUS => "$VSCAN_DEPTH"},
  });

  e_signal->add({name => "row_counter", width => "$row_counter_width",});

  # Temporary for debug
  #e_port->add({name => "row_counter", width => 10, direction => "output", });


  ################################################################
  #                  THIS IS THE VGA INIT LOGIC                  #
  ################################################################

  # We need to wait until everything's set up before we release
  # the fury of the go bit. Also, if the fifo loses sync during normal
  # operation, we drive the go_bit low again.
  e_register->add({
    out => {name => "go_bit", export => 0,},
    in => "ctrl_reg_go_bit & stop_config_counter & fifo_emptied",
    enable => 1,
  });

  # This is a config counter that we decode below for the VGA init sequence
  e_signal->add({name => "config_counter", width => 3,});
  e_assign->add (["stop_config_counter", "config_counter == 3'b101"]);
  e_blind_instance->add({
     tag            => 'normal',
     use_sim_models => 1,
     name           => 'vga_config_counter',
     module         => 'lpm_counter',
     in_port_map    => {clock => "vga_clk",
                        aclr => "!reset_n",
                        cnt_en => "!stop_config_counter",},
     out_port_map   => {"q", "config_counter"},
     parameter_map  => {LPM_WIDTH => "3"},
  });

  # This gives us a config sequence for the VGA DAC. The sequence is as follows:
  # sync_n -> 0-1-0-0-1-1
  # sync_t -> 0-0-0-0-0-0
  # M1     -> 0-0-0-0-0-0
  # M2     -> 0-0-1-1-0-0
  e_register->add({
    out => {name => "sync_n_init", export => 0,},
    in => "(config_counter[2] | (config_counter[0] & !config_counter[1]))",
    clock => "vga_clk",
    enable => 1,
  });
  e_register->add({
    out => {name => "M2", export => 1,},
    in => "config_counter[1]",
    clock => "vga_clk",
    enable => 1,
  });

  e_assign->add (["M1", 0]);

  # This holds the fifo read_req signal high until the thing's empty.  Used for bring-up
  # and disaster recovery.
  e_register->add({
    out => {name => "fifo_emptied", export => 0,},
    in => "(ctrl_reg_go_bit & (fifo_emptied | fifo_rdempty))",
    clock => "vga_clk",
    enable => 1,
  });
  e_assign->add (["empty_the_fifo", "!fifo_emptied"]);


  ################################################################
  #              THIS IS THE VGA CONTROL LOGIC                   #
  ################################################################

  # This is a version of the go bit in the control register, but here, it's
  # double-registered on the 25MHz clock to sync it up.  We'll use it in our
  # logic that determines when we're all set to start the VGA sequencer
  e_register->add({
    out => {name => "go_bit_vga_reg1", export => 0,},
    in => "go_bit",
    clock => "vga_clk",
    enable => 1,
  });
  e_register->add({
    out => {name => "go_bit_vga", export => 0,},
    in => "go_bit_vga_reg1",
    clock => "vga_clk",
    enable => 1,
  });

  # This signals when we're okay to start the VGA sequencer
  e_register->add({
    out => {name => "vga_start", export => 0,},
    in => "(vga_start & go_bit_vga) | (fifo_has_data & go_bit_vga)",
    clock => "vga_clk",
    enable => 1,
  });
  
	# If the color depth is 16-bits, we just use a mux to pull 16 bits at a 
	#time out of the fifo's 32 bit output
	if($WSA->{color_depth} eq "16")
	{
	  # This is the data splitter mux.  We get data out of the fifo as 32-bit
  	# words.  Only we need 16-bit words.  So we time-div-mux it with a toggling flip flop
  	# and only do a real read of the fifo every other cycle.
  	e_signal->add({name => "vga_16bit_out", width => 16,});
  	e_assign->add (["vga_16bit_out", "mux_toggle ? fifo_data_out[31:16] : fifo_data_out[15:0]"]);


  	# And the mux toggler flip flop
  	e_register->add({
  	  out => {name => "mux_toggle", export => 0,},
  	  in => "(!mux_toggle) & (read_16b)",
  	  clock => "vga_clk",
  	  enable => 1,
  	  async_value => 0,
  	});

  	# The read request that actually goes to the fifo is essentially the output
  	# of the mux toggler.  We also or-in a read signal that empties the fifo during
  	# the init sequence.
  	e_assign->add (["fifo_read_req", "((mux_toggle & read_16b) | empty_the_fifo)"]);
  	
		# Here, we issue a 16-bit read whenever we're not blanking the VGA.
	 	# We already have logic that holds off the VGA sequencer until we
	 	# know there is data in the fifo.  And since hblank and vblank are
	 	# created by the sequencer, they wont go high until the fifo's got
	 	# data to read
	 	e_assign->add (["read_16b", "hblank & vblank"]);

	  # The read signal is also our active signal, so we'll give it a
	  # descriptive name.
	  e_assign->add (["display_active", "read_16b"]);


	  # This splits up the 16-bit data into RGB.
	  e_port->add({name => "R", width => 8, direction => "output", });
	  e_register->add({
	    out => {name => "R", export => 1,},
	    in => "display_active ? ({vga_16bit_out[15:11], 3'b111}) : 8'b00000000",
	    clock => "vga_clk",
	    enable => 1,
	  });
	  e_port->add({name => "G", width => 8, direction => "output", });
	  e_register->add({
	    out => {name => "G", export => 1,},
	    in => "display_active ? ({vga_16bit_out[10:5], 2'b11}) : 8'b00000000",
	    clock => "vga_clk",
	    enable => 1,
	  });
	  e_port->add({name => "B", width => 8, direction => "output", });
	  e_register->add({
	    out => {name => "B", export => 1,},
	    in => "display_active ? ({vga_16bit_out[4:0], 3'b111}) : 8'b00000000",
	    clock => "vga_clk",
	    enable => 1,
	  });
  	
	}
	
	# If the color depth is 24 bits packed, our muxing is a little more complicated.
	# Every set of 3 32-bit words contains 4 24-bit pixels
	if($WSA->{color_depth} eq "24")
	{
		# This stores the fifo output for one extra cycle because sometimes pieces of 
		# our 24-bit pixels need to be picked out of the previous 32-bit word.
	  e_register->add({
	    out => {name => "prev_fifo_data_out", width => "32", export => 0,},
	    in => "fifo_data_out",
   	  clock => "vga_clk",
	    enable => "fifo_read_req",
	  });

  	# This is the mux counter.  Every time we pull out 24-bits, our byte offset changes.
  	# This counter is here to keep track of what that byte-offset is so we always get 
  	# the proper 24-bits
  	e_signal->add({name => "pixel_mux_counter", width => 2,});
  	e_blind_instance->add({
  	   tag            => 'normal',
  	   use_sim_models => 1,
  	   name           => 'vga_pixel_mux_counter',
  	   module         => 'lpm_counter',
  	   in_port_map    => {clock => "vga_clk",
  	                      aclr => "!reset_n",
  	                      cnt_en => "read_24b",
	                        sclr => "!go_bit_vga",},  	                      
  	   out_port_map   => {"q", "pixel_mux_counter"},
  	   parameter_map  => {LPM_WIDTH => "2"},
  	});

		# Here, we issue a 24-bit read whenever we're not blanking the VGA.
	 	# We already have logic that holds off the VGA sequencer until we
	 	# know there is data in the fifo.  And since hblank and vblank are
	 	# created by the sequencer, they wont go high until the fifo's got
	 	# data to read
	 	e_assign->add (["read_24b", "hblank & vblank"]);

	  # The read signal is also our active signal, so we'll give it a
	  # descriptive name.
	  e_assign->add (["display_active", "read_24b"]);

  	# The fifo skips a read once every 3 words (4 pixels)
  	e_assign->add (["fifo_read_req", "(((pixel_mux_counter != 3) & read_24b) | empty_the_fifo)"]);

	  # This is the data splitter mux.  We get data out of the fifo as 32-bit
  	# words.  Only we need 24-bit pixels.  So we do a fancy little mux dance.
  	e_signal->add({name => "vga_24bit_out", width => 24,});
		my $pixel_mux;
	  $pixel_mux = e_mux->add ({
	  	out     => "vga_24bit_out",
	    table   => 
	    [
	    	"(pixel_mux_counter == 0)" => "fifo_data_out[23:0]",
	    	"(pixel_mux_counter == 1)" => "{fifo_data_out[15:0], prev_fifo_data_out[31:24]}",
	    	"(pixel_mux_counter == 2)" => "{fifo_data_out[7:0], prev_fifo_data_out[31:16]}",
	    	"(pixel_mux_counter == 3)" => "prev_fifo_data_out[31:8]",
	    ],
	    default => "fifo_data_out[23:0]",
	  });
	  
	  # This splits up the 24-bit data into RGB.
	  e_port->add({name => "R", width => 8, direction => "output", });
	  e_register->add({
	    out => {name => "R", export => 1,},
	    in => "display_active ? (vga_24bit_out[7:0]) : 8'b00000000",
	    clock => "vga_clk",
	    enable => 1,
	  });
	  e_port->add({name => "G", width => 8, direction => "output", });
	  e_register->add({
	    out => {name => "G", export => 1,},
	    in => "display_active ? (vga_24bit_out[15:8]) : 8'b00000000",
	    clock => "vga_clk",
	    enable => 1,
	  });
	  e_port->add({name => "B", width => 8, direction => "output", });
	  e_register->add({
	    out => {name => "B", export => 1,},
	    in => "display_active ? (vga_24bit_out[23:16]) : 8'b00000000",
	    clock => "vga_clk",
	    enable => 1,
	  });
	  
	}

	# If the color depth is 24 bits unpacked, every 32-bit word is one pixel, so 
	# we just call it 32.
	if($WSA->{color_depth} eq "32")
	{
		# Here, we issue a 24-bit read whenever we're not blanking the VGA.
	 	# We already have logic that holds off the VGA sequencer until we
	 	# know there is data in the fifo.  And since hblank and vblank are
	 	# created by the sequencer, they wont go high until the fifo's got
	 	# data to read
	 	e_assign->add (["read_24b", "hblank & vblank"]);

	  # The read signal is also our display active signal, so we'll give it a
	  # descriptive name.
	  e_assign->add (["display_active", "read_24b"]);

  	# The fifo skips a read once every 3 words (4 pixels)
  	e_assign->add (["fifo_read_req", "read_24b | empty_the_fifo"]);

	  
	  # This is the data splitter mux.  We get data out of the fifo as 32-bit
  	# words.  Only we need 24-bit pixels.  So we do a fancy little mux dance.
  	e_signal->add({name => "vga_24bit_out", width => 24,});
  	e_assign->add (["vga_24bit_out", "fifo_data_out[23:0]"]);
	  
	  # This splits up the 24-bit data into RGB.
	  e_port->add({name => "R", width => 8, direction => "output", });
	  e_register->add({
	    out => {name => "R", export => 1,},
	    in => "display_active ? (vga_24bit_out[7:0]) : 8'b00000000",
	    clock => "vga_clk",
	    enable => 1,
	  });
	  e_port->add({name => "G", width => 8, direction => "output", });
	  e_register->add({
	    out => {name => "G", export => 1,},
	    in => "display_active ? (vga_24bit_out[15:8]) : 8'b00000000",
	    clock => "vga_clk",
	    enable => 1,
	  });
	  e_port->add({name => "B", width => 8, direction => "output", });
	  e_register->add({
	    out => {name => "B", export => 1,},
	    in => "display_active ? (vga_24bit_out[23:16]) : 8'b00000000",
	    clock => "vga_clk",
	    enable => 1,
	  });
	  
	}

  # Here we generate the sync signals to the DAC
  e_signal->add({name => "sync_n", width => 1,});
#  e_assign->add (["sync_n", "vga_start ? (vsync_temp ~^ hsync_temp) : sync_n_init"]);
#  e_assign->add (["sync_n", "vga_start ? 1'b1 : sync_n_init"]);

  e_register->add({
    out => {name => "sync_n", export => 1,},
    in => ("vga_start ? (vsync_temp ~^ hsync_temp) : sync_n_init"),
    clock => "vga_clk",
    enable => 1,
  });

  e_signal->add({name => "sync_t", width => 1,});
#  e_assign->add (["sync_t", "vga_start ? $SYNC_POLARITY : 0"]);

  e_register->add({
    out => {name => "sync_t", export => 1,},
    in => ("vga_start ? $SYNC_POLARITY : 0"),
    clock => "vga_clk",
    enable => 1,
  });

  e_register->add({
    out => {name => "blank_n", export => 1,},
    in => "display_active",
    clock => "vga_clk",
    enable => 1,
  });

  # These are our other VGA output signals, vblank, vsync, hblank, and hsync
  e_register->add({
    out => {name => "vblank", export => 0,},
    in => "(row_counter >= ($VBLANK_HIGH)) && (row_counter < ($VBLANK_LOW))",
    clock => "vga_clk",
    enable => 1,
  });

#  e_register->add({
#    out => {name => "vsync_temp", export => 0,},
#    in => "(row_counter >= ($VSYNC_HIGH)) && (row_counter < ($VSYNC_LOW2))",
#    clock => "vga_clk",
#    enable => 1,
#  });
  e_assign->add (["vsync_temp", "(row_counter >= ($VSYNC_HIGH)) && (row_counter < ($VSYNC_LOW2))"]);
    

  # This delays the vsync signal to account for the latency
  # in the VGA DAC.  This is needed because vsync bypasses
  # the DAC.
  e_blind_instance->add({
    tag            => 'normal',
    use_sim_models => 1,
    name           => 'vsync_delay',
    module         => 'lpm_shiftreg',
    in_port_map    => {clock => "vga_clk",
                      aclr => "!reset_n",
                      shiftin => "vsync_temp",},
    out_port_map   => {shiftout => "vsync"},
    parameter_map  => {LPM_WIDTH => "$VGA_DAC_LATENCY"},
  });

  e_register->add({
    out => {name => "hblank", export => 0,},
    in => "(column_counter >= ($HBLANK_HIGH)) && (column_counter < ($HBLANK_LOW))",
    clock => "vga_clk",
    enable => 1,
  });
#  e_register->add({
#    out => {name => "hsync_temp", export => 0,},
#    in => "(column_counter >= ($HSYNC_HIGH)) && (column_counter < ($HSYNC_LOW2))",
#    clock => "vga_clk",
#    enable => 1,
#  });
  e_assign->add (["hsync_temp", "(column_counter >= ($HSYNC_HIGH)) && (column_counter < ($HSYNC_LOW2))"]);

  # This delays the hsync signal 7 clock cycles to account for the latency
  # in the VGA DAC.  This is needed because hsync is a TTL signal that bypasses
  # the DAC.
  e_blind_instance->add({
    tag            => 'normal',
    use_sim_models => 1,
    name           => 'hsync_delay',
    module         => 'lpm_shiftreg',
    in_port_map    => {clock => "vga_clk",
                      aclr => "!reset_n",
                      shiftin => "hsync_temp",},
    out_port_map   => {shiftout => "hsync"},
    parameter_map  => {LPM_WIDTH => "$VGA_DAC_LATENCY"},
  });

  # Temp counter for debug
#  e_blind_instance->add({
#     tag            => 'normal',
#     use_sim_models => 1,
#     name           => 'num_fifo_writes',
#     module         => 'lpm_counter',
#     in_port_map    => {clock => "clk",
#                         aclr => "!reset_n",
#                         cnt_en => "fifo_write_req",
#                         sclr => "!go_bit",},
#     out_port_map   => {"q", "fifo_writes",},
#     parameter_map  => {LPM_WIDTH => "32",
#                         LPM_MODULUS => "153600",},
#  });
#  e_port->add({name => "fifo_writes", width => 32, direction => "output", });


  # Temp counter for debug
#  e_blind_instance->add({
#     tag            => 'normal',
#     use_sim_models => 1,
#     name           => 'vga_frame_counter',
#     module         => 'lpm_counter',
#     in_port_map    => {clock => "vga_clk",
#                         aclr => "!reset_n",
#                         cnt_en => "(column_counter == ($HSCAN_WIDTH - 1)) && (row_counter == ($VSCAN_DEPTH - 1))",
#                         sclr => "!vga_start",},
#     out_port_map   => {"q", "frame_counter",},
#     parameter_map  => {LPM_WIDTH => "10",},
#  });
#  e_port->add({name => "frame_counter", width => 10, direction => "output", });

  ################################################################
  #               THIS IS THE SLAVE INTERFACE                    #
  ################################################################

  # Declare slave_writedata explicitly (its width isn't stated implicitly anywhere).
  e_port->add({name => "slave_writedata", width => $SBI_slave->{Data_Width}, direction => "input", });

  # Declare slave_readdata explicitly (its width isn't stated implicitly anywhere).
  e_port->add({name => "slave_readdata", width => $SBI_slave->{Data_Width}, direction => "output", });

  # The address input isn't currently used - declare it.
  e_port->add({name => "slave_address", width => 2, direction => "input", });

  # Declare the chipselect
  e_port->add({name => "slave_chipselect", width => 1, direction => "input", });

  my $read_mux;
  $read_mux = e_mux->add ({
    out     => "slave_readdata",
    table   =>
    [
      "(slave_address == 0)" => "slave_control_reg",
      "(slave_address == 1)" => "dma_source_reg",
      "(slave_address == 2)" => "dma_modulus_reg",
      "(slave_address == 3)" => "current_dma",
    ],
    default => "slave_control_reg",
  });


  ################################################################
  #               THESE ARE THE SLAVE REGISTERS                  #
  ################################################################

  # This is the control/status register (bit0 = go)
  #  31                                                0
  # ------------------------------------------------------
  # |                                                | G |
  # ------------------------------------------------------
  #
  # G - Go Bit, Enables initialization and operation of controller
  #
  
  e_register->add({
    out => {name => "slave_control_reg", width => $SBI_slave->{Data_Width}, export => 0,},
    in => "slave_writedata",
    enable => "slave_write && slave_chipselect && (slave_address == 0)",
  });
  e_assign->add (["ctrl_reg_go_bit", "slave_control_reg[0]"]);
# e_assign->add (["read_fifo_if_not_empty", "slave_control_reg[1]"]);

  # This is the DMA address counter reload value for the next frame
  e_register->add({
    out => {name => "dma_source_reg", width => $SBI_slave->{Data_Width}, export => 0,},
    in => "slave_writedata",
    enable => "slave_write && slave_chipselect && (slave_address == 1)",
  });

  # This is the end value of the DMA address counter.
  # (reload counter with dma_source_reg when count = dma_source_reg + dma_modulus_reg - 4)
  e_register->add({
    out => {name => "dma_modulus_reg", width => $SBI_slave->{Data_Width}, export => 0,},
    in => "slave_writedata",
    enable => "slave_write && slave_chipselect && (slave_address == 2)",
  });

  # This reg is the start address the DMA is currenlty transfering from.
  e_register->add({
    out => {name => "current_dma", width => $SBI_slave->{Data_Width}, export => 0,},
    in => "dma_source_reg",
    enable => "address_counter_sload",
  });


  ################################################################
  #                THIS IS THE DMA READ MASTER                   #
  ################################################################

  e_port->add({name => "master_readdata", width => $SBI_master->{Data_Width}, direction => "input", });

  e_port->add({name => "master_address", width => 32, direction => "output", });

  e_port->add({name => "master_waitrequest", width => 1, direction => "input", });

  e_port->add({name => "master_data_valid", width => 1, direction => "input", });

  e_port->add({name => "master_read", width => 1, direction => "output", });

  e_assign->add (["master_address", "address_counter"]);

  # Perform pipelined reads whenever the go bit in the control register is set.
  e_assign->add (["master_read", "fifo_has_room & go_bit"]);

  # Write to the fifo whenever read data is valid on the read master and the go bit is set
  e_assign->add (["fifo_write_req", "master_data_valid & go_bit"]);


  ################################################################
  #                THESE ARE THE AVALON PORTS                    #
  ################################################################

  my @avalon_slave_signals = qw(
    slave_address
    clk
    reset_n
    slave_write
    slave_writedata
    slave_readdata
    slave_chipselect
  );

  my @avalon_master_signals = qw(
    master_address
    master_readdata
    master_read
    master_waitrequest
    master_data_valid
  );

  make_slave_interface(@avalon_slave_signals);

  make_master_interface(@avalon_master_signals);

}


1;
