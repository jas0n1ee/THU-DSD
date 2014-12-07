#!/bin/sh
#
# This file was automatically generated.
#
# It can be overwritten by nios2-flash-programmer-generate or nios2-flash-programmer-gui.
#

#
# Converting SOF File: C:\Users\Jason\Documents\Github\THU-DSD\VGAtest\main.sof to: "..\flash/main_epcs.flash"
#
nios2eds/bin/sof2flash --input="C:/Users/Jason/Documents/Github/THU-DSD/VGAtest/main.sof" --output="../flash/main_epcs.flash" --epcs --verbose 

#
# Programming File: "..\flash/main_epcs.flash" To Device: epcs
#
nios2eds/bin/nios2-flash-programmer "../flash/main_epcs.flash" --base=0xb03800 --epcs --sidp=0xB04058 --id=0x0 --timestamp=1417958911 --device=1 --instance=0 '--cable=USB-Blaster on localhost [USB-0]' --program --verbose 

