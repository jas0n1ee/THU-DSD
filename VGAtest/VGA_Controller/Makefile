#
# Override the default makefile (../Makefile.inc):
# 1) Run a syntax check.
# 2) Copy useful files to the destination directory
# 3) Include ../Makefile.inc for "clean".

# ex:set noexpandtab:

COMPONENT_NAME = $(notdir $(CURDIR))
COMPONENT_PACKAGE = $(COMPONENT_NAME)
COMPONENT_MK_FUNCTION = $(COMPONENT_NAME)

# Default target:
always:
	@$(E) Checking syntax...
	perl -I ../../bin/ -I ../../bin/europa/ -I ../../components/$(COMPONENT_NAME)/ -e 'use strict; use $(COMPONENT_PACKAGE); $(COMPONENT_MK_FUNCTION)();'
	@$(E) Copying the component to its destination...
	make all

include ../Makefile.inc
