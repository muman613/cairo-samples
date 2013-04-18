################################################################################
#	MODULE	:	cairo_env.mk
#	PROJECT	:	Cairo examples
#	AUTHOR	:	Michael Uman
#	DATE	:	April 18, 2013
################################################################################

CAIRO_CFLAGS   = $(shell pkg-config --cflags cairo)
CAIRO_LIBS     = $(shell pkg-config --libs cairo)
GTK_CFLAGS     = $(shell pkg-config --cflags gtk+-2.0)
GTK_LIBS       = $(shell pkg-config --libs gtk+-2.0)
CAIRO_VERSION  = $(shell pkg-config --modversion cairo)

