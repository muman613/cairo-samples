################################################################################
#	MODULE	:	cairo_env.mk
#	PROJECT	:	Cairo examples
#	AUTHOR	:	Michael Uman
#	DATE	:	April 18, 2013
################################################################################

CAIROMM_CFLAGS   = $(shell pkg-config --cflags cairomm-1.0)
CAIROMM_LIBS     = $(shell pkg-config --libs cairomm-1.0)
CAIROMM_VERSION  = $(shell pkg-config --modversion cairomm-1.0)

