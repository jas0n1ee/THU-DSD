#include <stdio.h>
#include "VGA.h"
#include <system.h>
#include <io.h>
int main()
{

	VGA_Ctrl_Reg VCR;
	VCR.VGA_Ctrl_Flags.RED_ON=1;
	VCR.VGA_Ctrl_Flags.GREEN_ON=1;
	VCR.VGA_Ctrl_Flags.BLUE_ON=1;
	VCR.VGA_Ctrl_Flags.CURSOR_ON=0;
	Vga_Write_Ctrl(VGA_0_BASE,VCR.Value);
	Set_Pixel_Off_Color(1023,1023,1023);
	Set_Pixel_On_Color(0,0,0);

	printf("%d",VCR.Value);


	unsigned int i=0;
	unsigned int count=0;
	unsigned int p=0;
	while(1)
	{
		i=IORD(KEY_BASE,0);
		int x,y;
		for(x=0;x<640;x++)
		{
			for(y=0;y<480;y++)
			{
				if((y/8)%2==0)
				{
					if(i==1)
						Vga_Set_Pixel(VGA_0_BASE,x,y);
					else
						Vga_Clr_Pixel(VGA_0_BASE,x,y);
				}
				else
				{
					if(i==0)
						Vga_Set_Pixel(VGA_0_BASE,x,y);
					else
						Vga_Clr_Pixel(VGA_0_BASE,x,y);

				}
			}
		}
	}

  printf("Hello from Nios II!\n");
  return 0;
}
