#!/bin/sh
#
# This file was automatically generated.
#
# It can be overwritten by nios2-flash-programmer-generate or nios2-flash-programmer-gui.
#

#
# Converting SOF File: C:\Users\Jason\Documents\Github\THU-DSD\FB\flappy_bird.sof to: "..\flash/flappy_bird_cfi_flash.flash"
#
nios2eds/bin/sof2flash --input="C:/Users/Jason/Documents/Github/THU-DSD/FB/flappy_bird.sof" --output="../flash/flappy_bird_cfi_flash.flash" --offset=0x0 

#
# Programming File: "..\flash/flappy_bird_cfi_flash.flash" To Device: cfi_flash
#
nios2eds/bin/nios2-flash-programmer "../flash/flappy_bird_cfi_flash.flash" --base=0x400000 --accept-bad-sysid --device=1 --instance=0 '--cable=USB-Blaster on localhost [USB-0]' --program 

