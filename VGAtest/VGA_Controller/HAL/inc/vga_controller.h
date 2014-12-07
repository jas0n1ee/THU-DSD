#ifndef __VGA_CONTROLLER_H__
#define __VGA_CONTROLLER_H__

#include <stdio.h>
#include "system.h"
#include "sys/alt_llist.h"
#include "priv/alt_dev_llist.h"
#include "priv/alt_file.h"

#define FRAME_WIDTH VGA_CONTROLLER_0_SCREEN_WIDTH
#define FRAME_HEIGHT VGA_CONTROLLER_0_SCREEN_HEIGHT


#define HEAP -1
#define NO_ALLOC_FB -2

#define BLACK_8 0x00

typedef int frame_array;

typedef struct {
  frame_array* frame0;
  frame_array* frame1;
  int width;
  int height;
  int color_depth;
  int bytes_per_pixel;
  int bytes_per_frame;
  int frame_buffers;
  int vga_controller_base;
} display_frame_buffer_struct;

typedef struct vga_controller_dev vga_controller_dev;

struct vga_controller_dev
{
  alt_dev dev;
  int width;
  int height;
  int color_depth;
  int base_addr;
  int frame_buffers;
};

#define VGA_CONTROLLER_INSTANCE(name, dev)           \
static vga_controller_dev dev =                      \
{                                                    \
  {                                                  \
      ALT_LLIST_ENTRY,                               \
      name##_NAME,                                   \
      NULL, /* open */                               \
      NULL, /* close */                              \
      NULL, /* read */                               \
      NULL, /* write */                              \
      NULL, /* lseek */                              \
      NULL, /* fstat */                              \
      NULL, /* ioctl */                              \
   },                                                \
   name##_SCREEN_WIDTH,                              \
   name##_SCREEN_HEIGHT,                             \
   name##_COLOR_DEPTH,                               \
   name##_BASE,                                      \
   name##_FRAME_BUFFERS,                             \
}

#define VGA_CONTROLLER_INIT(name, dev)               \
    vga_dev_init (&dev )        

static ALT_INLINE int vga_device_register( alt_dev* fd)
{
  extern alt_llist vga_dev_list;

  return alt_dev_llist_insert ((alt_dev_llist*) fd, &vga_dev_list);
}


int vga_dev_init ( vga_controller_dev* vga );

alt_dev* alt_vga_open_dev(const char* name);

void alt_vga_close_dev(alt_dev* fd);

display_frame_buffer_struct* vga_init_no_interrupt ( vga_controller_dev* vga, int buffer_location);

int vga_stop ( vga_controller_dev* vga );

int vga_flip_frame_buffers( display_frame_buffer_struct* vga_frame_buffer );

inline void vga_clear_screen (display_frame_buffer_struct* vga_frame_buffer, char color);

#endif // __VGA_CONTROLLER_H__


