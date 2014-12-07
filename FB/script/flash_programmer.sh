#!/bin/sh
#
# This file was automatically generated.
#
# It can be overwritten by nios2-flash-programmer-generate or nios2-flash-programmer-gui.
#

#
# Converting SOF File: C:\Users\Jason\Documents\Github\THU-DSD\FB\flappy_bird.sof to: "..\flash/flappy_bird_epcs_flash_controller.flash"
#
nios2eds/bin/sof2flash --input="C:/Users/Jason/Documents/Github/THU-DSD/FB/flappy_bird.sof" --output="../flash/flappy_bird_epcs_flash_controller.flash" --epcs 

#
# Programming File: "..\flash/flappy_bird_epcs_flash_controller.flash" To Device: epcs_flash_controller
#
nios2eds/bin/nios2-flash-programmer "../flash/flappy_bird_epcs_flash_controller.flash" --base=0xb03800 --epcs --accept-bad-sysid --device=1 --instance=0 '--cable=USB-Blaster on localhost [USB-0]' --program 

