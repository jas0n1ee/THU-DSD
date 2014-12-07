#ifndef __SIMPLE_GRAPHICS_H__
#define __SIMPLE_GRAPHICS_H__

#include "VGA.h"

#define DO_FILL 1
#define DO_NOT_FILL 0

#define BLACK_8 0x00

#define FONT_10PT_ROW 11
#define FONT_10PT_COLUMN 8

typedef struct {
  int hbegin;
  int vbegin;
  int hend;
  int f_color;
  int b_color;
  char* string;
  char* font;
  int ms_delay;
  int ticks_at_last_move;
  int text_scroll_index;
  char text_scroll_started;
  int window_width;
  int length_of_string;
  int scroll_points;
  int string_points;
} vid_text_scroll_struct;


typedef struct {
	int   vertex_x[3];
	int   vertex_y[3];
//  int   ax, ay;
//  int   bx, by;
//  int   cx, cy;
  int   spans_needed;
  int   max_span;
  int   top_y;
  int   bottom_y;
  int   col;
  int   fill;
  int   center_z;
  int   *span_array;
} triangle_struct;

/* color conversion macro */
#define vid_color_convert24_16_m( x ) (unsigned short)(((*(x + 2) & 0xF8) >> 3) | ((*(x + 1) & 0xFC) << 3) | ((*(x + 0) & 0xF8) << 8))


extern char* cour10_font;

int vid_merge_colors(int red, int green, int blue);

unsigned short vid_color_convert24_16(char* color24);

int vid_color_convert16_24(unsigned short color16, char* color24);

int vid_copy_line_to_frame_buffer( int x, int y, char* buffer, int num_pixels, int source_color_depth, display_frame_buffer_struct* frame_buffer );

int vid_print_string(int horiz_offset, int vert_offset, int color, char *font, display_frame_buffer_struct* frame_buffer, char string[]);

int vid_scroll_string(vid_text_scroll_struct* scroll, display_frame_buffer_struct* frame_buffer);

vid_text_scroll_struct* vid_scroll_string_init(int hbegin, int vbegin, int hend, int f_color, int b_color, char* font, int ms_delay, char *string);

void vid_scroll_string_quit(vid_text_scroll_struct* scroll);

int vid_move_block(int xbegin, int ybegin, int xend, int yend, int x_distance, int y_distance, int backfill_color, display_frame_buffer_struct* frame_buffer);

int vid_print_char (int horiz_offset, int vert_offset, int color, char character, char *font, display_frame_buffer_struct* frame_buffer);

void vid_draw_line(int horiz_start, int vert_start, int horiz_end, int vert_end, int width, int color, display_frame_buffer_struct* frame_buffer);

void vid_set_pixel(int horiz, int vert, unsigned int color, display_frame_buffer_struct* frame_buffer);

short vid_get_pixel(int horiz, int vert, display_frame_buffer_struct* frame_buffer);

int vid_draw_circle(int Hcenter, int Vcenter, int radius, int color, char fill, display_frame_buffer_struct* frame_buffer);
void vid_circle_points(int cx, int cy, int x, int y, int color, char fill, display_frame_buffer_struct* frame_buffer);

int vid_draw_box (int horiz_start, int vert_start, int horiz_end, int vert_end, int color, int fill, display_frame_buffer_struct* frame_buffer);

void vid_paint_block (int Hstart, int Vstart, int Hend, int Vend, int color, display_frame_buffer_struct* frame_buffer);

void vid_draw_horiz_line (short Hstart, short Hend, int V, int color, display_frame_buffer_struct* frame_buffer);


inline int max3( int a, int b, int c );

inline int min3( int a, int b, int c );

int max_diff3(int a, int b, int c);

inline void vid_put_pixel_in_span_map( int x, int y, int *span_array );

void vid_bres_scan_edges( int x1, int y1, int x2, int y2, int *span_array);

void vid_draw_triangle(triangle_struct* tri, display_frame_buffer_struct* frame_buffer);

void vid_draw_horiz_line (short Hstart, short Hend, int V, int color, display_frame_buffer_struct* frame_buffer);

void vid_draw_sloped_line( unsigned short horiz_start, 
                           unsigned short vert_start, 
                           unsigned short horiz_end, 
                           unsigned short vert_end, 
                           unsigned short width, 
                           int color, 
                           display_frame_buffer_struct* frame_buffer);
                           
void CopyImage16( short * __restrict__ source_buffer, 
                  short * __restrict__ dest_buffer, 
                  short source_width, short source_height,
                  short dest_width, short dest_height );

void CropImage16( short * __restrict__ source_buffer, 
                  short * __restrict__ dest_buffer, 
                  short source_width, short source_height,
                  short crop_left, short crop_right,
                  short crop_top, short crop_bottom,
                  short dest_width, short dest_height );
                           
//Color Definitions

#define ALICEBLUE_16            0xF7DF
#define ANTIQUEWHITE_16         0xFF5A
#define AQUA_16                 0x07DF
#define AQUAMARINE_16           0x7FDA
#define AZURE_16                0xF7DF
#define BEIGE_16                0xF79B
#define BISQUE_16               0xFF18
#define BLACK_16                0x0000
#define BLANCHEDALMOND_16       0xFF59
#define BLUE_16                 0x001F
#define BLUEVIOLET_16           0x895C
#define BROWN_16                0xA145
#define BURLYWOOD_16            0xDDD0
#define CADETBLUE_16            0x5CD4
#define CHARTREUSE_16           0x7FC0
#define CHOCOLATE_16            0xD343
#define CORAL_16                0xFBCA
#define CORNFLOWERBLUE_16       0x649D
#define CORNSILK_16             0xFFDB
#define CRIMSON_16              0xD887
#define CYAN_16                 0x07DF
#define DARKBLUE_16             0x0011
#define DARKCYAN_16             0x0451
#define DARKGOLDENROD_16        0xBC01
#define DARKGRAY_16             0xAD55
#define DARKGREEN_16            0x0300
#define DARKKHAKI_16            0xBD8D
#define DARKMAGENTA_16          0x8811
#define DARKOLIVEGREEN_16       0x5345
#define DARKORANGE_16           0xFC40
#define DARKORCHID_16           0x9999
#define DARKRED_16              0x8800
#define DARKSALMON_16           0xEC8F
#define DARKSEAGREEN_16         0x8DD1
#define DARKSLATEBLUE_16        0x49D1
#define DARKSLATEGRAY_16        0x2A49
#define DARKTURQUOISE_16        0x065A
#define DARKVIOLET_16           0x901A
#define DEEPPINK_16             0xF892
#define DEEPSKYBLUE_16          0x05DF
#define DIMGRAY_16              0x6B4D
#define DODGERBLUE_16           0x1C9F
#define FELDSPAR_16             0xD48E
#define FIREBRICK_16            0xB104
#define FLORALWHITE_16          0xFFDE
#define FORESTGREEN_16          0x2444
#define FUCHSIA_16              0xF81F
#define GAINSBORO_16            0xDEDB
#define GHOSTWHITE_16           0xFFDF
#define GOLD_16                 0xFE80
#define GOLDENROD_16            0xDD04
#define GRAY_16                 0x8410
#define GRAY25_16               0x4208
#define GRAY50_16               0x7BCF
#define GRAY75_16               0xC618
#define GREEN_16                0x0400
#define GREENYELLOW_16          0xAFC5
#define HONEYDEW_16             0xF7DE
#define HOTPINK_16              0xFB56
#define INDIANRED_16            0xCACB
#define INDIGO_16               0x4810
#define IVORY_16                0xFFDE
#define KHAKI_16                0xF711
#define LAVENDER_16             0xE71F
#define LAVENDERBLUSH_16        0xFF9E
#define LAWNGREEN_16            0x7FC0
#define LEMONCHIFFON_16         0xFFD9
#define LIGHTBLUE_16            0xAEDC
#define LIGHTCORAL_16           0xF410
#define LIGHTCYAN_16            0xE7DF
#define LIGHTGOLDENRODYELLOW_16 0xFFDA
#define LIGHTGREEN_16           0x9752
#define LIGHTGREY_16            0xD69A
#define LIGHTPINK_16            0xFD98
#define LIGHTSALMON_16          0xFD0F
#define LIGHTSEAGREEN_16        0x2595
#define LIGHTSKYBLUE_16         0x865F
#define LIGHTSLATEBLUE_16       0x839F
#define LIGHTSLATEGRAY_16       0x7453
#define LIGHTSTEELBLUE_16       0xB61B
#define LIGHTYELLOW_16          0xFFDC
#define LIME_16                 0x07C0
#define LIMEGREEN_16            0x3646
#define LINEN_16                0xFF9C
#define MAGENTA_16              0xF81F
#define MAROON_16               0x8000
#define MEDIUMAQUAMARINE_16     0x6655
#define MEDIUMBLUE_16           0x0019
#define MEDIUMORCHID_16         0xBA9A
#define MEDIUMPURPLE_16         0x939B
#define MEDIUMSEAGREEN_16       0x3D8E
#define MEDIUMSLATEBLUE_16      0x7B5D
#define MEDIUMSPRINGGREEN_16    0x07D3
#define MEDIUMTURQUOISE_16      0x4E99
#define MEDIUMVIOLETRED_16      0xC090
#define MIDNIGHTBLUE_16         0x18CE
#define MINTCREAM_16            0xF7DF
#define MISTYROSE_16            0xFF1C
#define MOCCASIN_16             0xFF16
#define NAVAJOWHITE_16          0xFED5
#define NAVY_16                 0x0010
#define OLDLACE_16              0xFF9C
#define OLIVE_16                0x8400
#define OLIVEDRAB_16            0x6C44
#define ORANGE_16               0xFD00
#define ORANGERED_16            0xFA00
#define ORCHID_16               0xDB9A
#define PALEGOLDENROD_16        0xEF55
#define PALEGREEN_16            0x9FD3
#define PALETURQUOISE_16        0xAF5D
#define PALEVIOLETRED_16        0xDB92
#define PAPAYAWHIP_16           0xFF5A
#define PEACHPUFF_16            0xFED7
#define PERU_16                 0xCC07
#define PINK_16                 0xFE19
#define PLUM_16                 0xDD1B
#define POWDERBLUE_16           0xB71C
#define PURPLE_16               0x8010
#define RED_16                  0xF800
#define ROSYBROWN_16            0xBC51
#define ROYALBLUE_16            0x0092
#define SADDLEBROWN_16          0x8A02
#define SALMON_16               0xFC0E
#define SANDYBROWN_16           0xF50C
#define SEAGREEN_16             0x2C4A
#define SEASHELL_16             0xFF9D
#define SIENNA_16               0xA285
#define SILVER_16               0xC618
#define SKYBLUE_16              0x865D
#define SLATEBLUE_16            0x6AD9
#define SLATEGRAY_16            0x7412
#define SNOW_16                 0xFFDF
#define SPRINGGREEN_16          0x07CF
#define STEELBLUE_16            0x4416
#define TAN_16                  0xD591
#define TEAL_16                 0x0410
#define THISTLE_16              0xDDDB
#define TOMATO_16               0xFB08
#define TURQUOISE_16            0x471A
#define VIOLET_16               0xEC1D
#define VIOLETRED_16            0xD112
#define WHEAT_16                0xF6D6
#define WHITE_16                0xFFDF
#define WHITESMOKE_16           0xF79E
#define YELLOW_16               0xFFC0
#define YELLOWGREEN_16          0x9E46

#define ALICEBLUE_24            0xFFF8F0
#define ANTIQUEWHITE_24         0xD7EBFA
#define AQUA_24                 0xFFFF00
#define AQUAMARINE_24           0xD4FF7F
#define AZURE_24                0xFFFFF0
#define BEIGE_24 								0xDCF5F5
#define BISQUE_24 							0xC4E4FF
#define BLACK_24 								0x000000
#define BLANCHEDALMOND_24 			0xCDEBFF
#define BLUE_24 								0xFF0000
#define BLUEVIOLET_24 					0xE22B8A
#define BROWN_24 								0x2A2AA5
#define BURLYWOOD_24 						0x87B8DE
#define CADETBLUE_24 						0xA09E5F
#define CHARTREUSE_24 					0x00FF7F
#define CHOCOLATE_24 						0x1E69D2
#define CORAL_24 								0x507FFF
#define CORNFLOWERBLUE_24 			0xED9564
#define CORNSILK_24 						0xDCF8FF
#define CRIMSON_24 							0x3C14DC
#define CYAN_24 								0xFFFF00
#define DARKBLUE_24 						0x8B0000
#define DARKCYAN_24 						0x8B8B00
#define DARKGOLDENROD_24 				0x0B86B8
#define DARKGRAY_24 						0xA9A9A9
#define DARKGREEN_24 						0x006400
#define DARKKHAKI_24 						0x6BB7BD
#define DARKMAGENTA_24 					0x8B008B
#define DARKOLIVEGREEN_24 			0x2F6B55
#define DARKORANGE_24 					0x008CFF
#define DARKORCHID_24 					0xCC3299
#define DARKRED_24 							0x00008B
#define DARKSALMON_24 					0x7A96E9
#define DARKSEAGREEN_24 				0x8FBC8F
#define DARKSLATEBLUE_24 				0x8B3D48
#define DARKSLATEGRAY_24 				0x4F4F2F
#define DARKTURQUOISE_24 				0xD1CE00
#define DARKVIOLET_24 					0xD30094
#define DEEPPINK_24 						0x9314FF
#define DEEPSKYBLUE_24 					0xFFBF00
#define DIMGRAY_24 							0x696969
#define DODGERBLUE_24 					0xFF901E
#define FELDSPAR_24 						0x7592D1
#define FIREBRICK_24 						0x2222B2
#define FLORALWHITE_24 					0xF0FAFF
#define FORESTGREEN_24 					0x228B22
#define FUCHSIA_24 							0xFF00FF
#define GAINSBORO_24 						0xDCDCDC
#define GHOSTWHITE_24 					0xFFF8F8
#define GOLD_24 								0x00D7FF
#define GOLDENROD_24 						0x20A5DA
#define GRAY_24 								0x808080
#define GREEN_24 								0x008000
#define GREENYELLOW_24 					0x2FFFAD
#define HONEYDEW_24 						0xF0FFF0
#define HOTPINK_24 							0xB469FF
#define INDIANRED_24 						0x5C5CCD
#define INDIGO_24 							0x82004B
#define IVORY_24 								0xF0FFFF
#define KHAKI_24 								0x8CE6F0
#define LAVENDER_24 						0xFAE6E6
#define LAVENDERBLUSH_24 				0xF5F0FF
#define LAWNGREEN_24 						0x00FC7C
#define LEMONCHIFFON_24 				0xCDFAFF
#define LIGHTBLUE_24 						0xE6D8AD
#define LIGHTCORAL_24 					0x8080F0
#define LIGHTCYAN_24 						0xFFFFE0
#define LIGHTGOLDENRODYELLOW_24 0xD2FAFA
#define LIGHTGREEN_24 					0x90EE90
#define LIGHTGREY_24 						0xD3D3D3
#define LIGHTPINK_24 						0xC1B6FF
#define LIGHTSALMON_24 					0x7AA0FF
#define LIGHTSEAGREEN_24 				0xAAB220
#define LIGHTSKYBLUE_24 				0xFACE87
#define LIGHTSLATEBLUE_24 			0xFF7084
#define LIGHTSLATEGRAY_24 			0x998877
#define LIGHTSTEELBLUE_24 			0xDEC4B0
#define LIGHTYELLOW_24 				 	0xE0FFFF
#define LIME_24 								0x00FF00
#define LIMEGREEN_24 						0x32CD32
#define LINEN_24 								0xE6F0FA
#define MAGENTA_24 							0xFF00FF
#define MAROON_24 							0x000080
#define MEDIUMAQUAMARINE_24 		0xAACD66
#define MEDIUMBLUE_24 					0xCD0000
#define MEDIUMORCHID_24 				0xD355BA
#define MEDIUMPURPLE_24 				0xD87093
#define MEDIUMSEAGREEN_24 			0x71B33C
#define MEDIUMSLATEBLUE_24 			0xEE687B
#define MEDIUMSPRINGGREEN_24 		0x9AFA00
#define MEDIUMTURQUOISE_24 			0xCCD148
#define MEDIUMVIOLETRED_24 			0x8515C7
#define MIDNIGHTBLUE_24 				0x701919
#define MINTCREAM_24 						0xFAFFF5
#define MISTYROSE_24 						0xE1E4FF
#define MOCCASIN_24 						0xB5E4FF
#define NAVAJOWHITE_24 					0xADDEFF
#define NAVY_24 								0x800000
#define OLDLACE_24 							0xE6F5FD
#define OLIVE_24 								0x008080
#define OLIVEDRAB_24 						0x238E6B
#define ORANGE_24 							0x00A5FF
#define ORANGERED_24 						0x0045FF
#define ORCHID_24 							0xD670DA
#define PALEGOLDENROD_24 				0xAAE8EE
#define PALEGREEN_24 						0x98FB98
#define PALETURQUOISE_24 				0xEEEEAF
#define PALEVIOLETRED_24 				0x9370D8
#define PAPAYAWHIP_24 					0xD5EFFF
#define PEACHPUFF_24 						0xB9DAFF
#define PERU_24 								0x3F85CD
#define PINK_24 								0xCBC0FF
#define PLUM_24 								0xDDA0DD
#define POWDERBLUE_24 					0xE6E0B0
#define PURPLE_24 							0x800080
#define RED_24 									0x0000FF
#define ROSYBROWN_24 						0x8F8FBC
#define ROYALBLUE_24 						0x901604
#define SADDLEBROWN_24 					0x13458B
#define SALMON_24 							0x7280FA
#define SANDYBROWN_24 					0x60A4F4
#define SEAGREEN_24 						0x578B2E
#define SEASHELL_24 						0xEEF5FF
#define SIENNA_24 							0x2D52A0
#define SILVER_24 							0xC0C0C0
#define SKYBLUE_24 							0xEBCE87
#define SLATEBLUE_24 						0xCD5A6A
#define SLATEGRAY_24 						0x908070
#define SNOW_24 								0xFAFAFF
#define SPRINGGREEN_24 					0x7FFF00
#define STEELBLUE_24 						0xB48246
#define TAN_24 									0x8CB4D2
#define TEAL_24 								0x808000
#define THISTLE_24 							0xD8BFD8
#define TOMATO_24 							0x4763FF
#define TURQUOISE_24 						0xD0E040
#define VIOLET_24 							0xEE82EE
#define VIOLETRED_24 						0x9020D0
#define WHEAT_24 								0xB3DEF5
#define WHITE_24 								0xFFFFFF
#define WHITESMOKE_24 					0xF5F5F5
#define YELLOW_24 							0x00FFFF
#define YELLOWGREEN_24 					0x32CD9A

#endif // __SIMPLE_GRAPHICS_H__
