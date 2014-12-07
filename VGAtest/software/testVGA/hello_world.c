/*
 * "Hello World" example.
 *
 * This example prints 'Hello from Nios II' to the STDOUT stream. It runs on
 * the Nios II 'standard', 'full_featured', 'fast', and 'low_cost' example
 * designs. It runs with or without the MicroC/OS-II RTOS and requires a STDOUT
 * device in your system's hardware.
 * The memory footprint of this hosted application is ~69 kbytes by default
 * using the standard reference design.
 *
 * For a reduced footprint version of this template, and an explanation of how
 * to reduce the memory footprint for a given application, see the
 * "small_hello_world" template.
 *
 */

#include <stdio.h>


int main()
{
  printf("Hello from Nios II!\n");
  // VGA Device
    vga_controller_dev* vga;

    // VGA frame buffer
    display_frame_buffer_struct* vga_frame_buffer;

    printf("+-----------------------------------------+\n");
    printf("| Nios II VGA Controller Reference Design |\n");
    printf("+-----------------------------------------+\n");

    // Open the VGA controller peripheral and allocate the frame buffers on the heap.
    printf(" - Initializing VGA controller.\n");
    vga = (vga_controller_dev*)alt_vga_open_dev("/dev/vga_controller");
    vga_frame_buffer = vga_init_no_interrupt( vga, HEAP );

  return 0;
}