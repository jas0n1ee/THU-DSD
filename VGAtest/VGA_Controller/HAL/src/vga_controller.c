
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include "vga_controller.h"
#include "io.h"
#include "sys/alt_alarm.h"
#include "sys/alt_cache.h"
#include "system.h"
#include "priv/alt_file.h"

// VGA device list (usualy just one)
ALT_LLIST_HEAD(vga_dev_list);

/******************************************************************
*  Function: vga_dev_init
*
*  Purpose: HAL device driver initialization.  
*           Called by alt_sys_init.
*
******************************************************************/
int vga_dev_init ( vga_controller_dev* vga )
{
  int ret_code = 0;
 
  ret_code = vga_device_register( &(vga->dev) );
 
  return ret_code;
}

/******************************************************************
*  Function: alt_vga_open_dev
*
*  Purpose: Opens the VGA controller for use.  
*           Returns a file descriptor for the controller
*
******************************************************************/
alt_dev* alt_vga_open_dev(const char* name)
{
  alt_dev* dev = (alt_dev*)alt_find_dev(name, &vga_dev_list);

  return dev;
}

/******************************************************************
*  Function: alt_vga_close_dev
*
*  Purpose: Closes the VGA controller.
*
******************************************************************/
void alt_vga_close_dev(alt_dev* fd)
{
  return;
}

/******************************************************************
*  Function: vga_init_no_interrupt
*
*  Purpose: Initializes the VGA controller for the Lancelot VGA
*           daughterboard.  Gets memory for the frame buffer, sets 
*           the resolution of the frame buffer, resets the VGA 
*           controller hardware, gives the controller the base 
*           address of the frame buffer, then enables
*           the controller.  Interrupts are NOT enabled.
*
******************************************************************/
display_frame_buffer_struct* vga_init_no_interrupt ( vga_controller_dev* vga, int buffer_location)
{
	display_frame_buffer_struct* vga_frame_buffer;
  int bytes_per_pixel, bytes_per_frame;
  
  // We'll need these values more than once, so let's pre-calculate them.
  bytes_per_pixel = vga->color_depth >> 3; // same as /8
  bytes_per_frame = (( vga->width * vga->height ) * bytes_per_pixel);

	// Allocate our frame buffers
	if( buffer_location == HEAP )
	{
		vga_frame_buffer = (display_frame_buffer_struct*) alt_uncached_malloc(sizeof (display_frame_buffer_struct));
	  vga_frame_buffer->frame0 = (frame_array*) alt_uncached_malloc(( bytes_per_frame ));
	  // If we're double-buffering, grab an extra buffer, if not, just make 
	  // both pointers point to the same buffer.
	  if(vga->frame_buffers == 2)
	  {
	  	vga_frame_buffer->frame1 = (frame_array*) alt_uncached_malloc(( bytes_per_frame ));
	  }
	  else
	  {
	  	vga_frame_buffer->frame1 = vga_frame_buffer->frame0;
	  }
	}
	else
	{
		vga_frame_buffer = (display_frame_buffer_struct*)buffer_location;
		vga_frame_buffer->frame0 = (frame_array*)(buffer_location + sizeof(display_frame_buffer_struct));
	  // If we're double-buffering, grab an extra buffer, if not, just make 
	  // both pointers point to the same buffer.
	  if(vga->frame_buffers == 2)
	  {
	  	vga_frame_buffer->frame1 = (vga_frame_buffer->frame0 + bytes_per_frame);
	  }
 	  else
	  {
	  	vga_frame_buffer->frame1 = vga_frame_buffer->frame0;
	  }
	}
	vga_frame_buffer->width = vga->width;
	vga_frame_buffer->height = vga->height;
	vga_frame_buffer->color_depth = vga->color_depth;
	vga_frame_buffer->frame_buffers = vga->frame_buffers;
	vga_frame_buffer->bytes_per_frame = bytes_per_frame;
	vga_frame_buffer->bytes_per_pixel = (vga->color_depth / 8);
	vga_frame_buffer->vga_controller_base = vga->base_addr;
	
  //Clear all frame buffers to black
	vga_clear_screen( vga_frame_buffer, BLACK_8 );
  vga_flip_frame_buffers( vga_frame_buffer );
	vga_clear_screen( vga_frame_buffer, BLACK_8 );
  	
	IOWR_32DIRECT( vga->base_addr, 0, 0x0 ); /* Reset the VGA controller */
	IOWR_32DIRECT( vga->base_addr, 4, ( int )vga_frame_buffer->frame0 ); /* Where our frame buffer starts */
	IOWR_32DIRECT( vga->base_addr, 8, ( ( vga->width * vga->height ) * bytes_per_pixel ) ); /* amount of memory needed */   
	IOWR_32DIRECT( vga->base_addr, 0, 0x1 ); /* Set the go bit. */
	
  return ( vga_frame_buffer );
}

int vga_flip_frame_buffers( display_frame_buffer_struct* vga_frame_buffer )
{
	frame_array* temp_frame;
	int ret_code;
	
	if( vga_frame_buffer->frame_buffers == 2 )
	{
		temp_frame = vga_frame_buffer->frame0;
		vga_frame_buffer->frame0 = vga_frame_buffer->frame1;
		vga_frame_buffer->frame1 = temp_frame;
		IOWR_32DIRECT( vga_frame_buffer->vga_controller_base, 4, ( int )vga_frame_buffer->frame0 );
		ret_code = 0;
	}
	else
	{
		ret_code = 1;
	}
	return(ret_code);
}

int vga_stop ( vga_controller_dev* vga )
{

	IOWR_32DIRECT( vga->base_addr, 0, 0x0 ); /* Reset the VGA controller */

  return (0);
}


/******************************************************************
*  Function: vga_clear_screen
*
*  Purpose: Uses the fast memset routine to clear the entire frame
*           buffer.  User can specify black(0x00) or white(0xFF).
*
******************************************************************/
inline void vga_clear_screen (display_frame_buffer_struct* vga_frame_buffer, char color)
{
	memset( (void*)(vga_frame_buffer->frame1), color, vga_frame_buffer->bytes_per_frame );
}
