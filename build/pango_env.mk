################################################################################
#	MODULE	:	pango_env.mk
#	PROJECT	:	Cairo examples
#	AUTHOR	:	Michael Uman
#	DATE	:	April 18, 2013
################################################################################

PANGO_CFLAGS   = $(shell pkg-config --cflags pangocairo)
PANGO_LIBS     = $(shell pkg-config --libs pangocairo)
PANGO_VERSION  = $(shell pkg-config --modversion pangocairo)

