################################################################################
#	MODULE		:	Makefile
#	PROJECT		:	Cairo sample draw1
#	AUTHOR 		:	Michael Uman
#	DATE		:	April 17, 2013
################################################################################

TARGET_EXE=draw1
TARGET_TYPE=exe
CPP_SOURCES=draw1.cpp

CAIRO_CFLAGS = $(shell pkg-config --cflags cairo)
CAIRO_LIBS   = $(shell pkg-config --libs cairo)
GTK_CFLAGS   = $(shell pkg-config --cflags gtk+-2.0)
GTK_LIBS     = $(shell pkg-config --libs gtk+-2.0)

CFLAGS+=$(CAIRO_CFLAGS) $(GTK_CFLAGS)
LDFLAGS+=$(CAIRO_LIBS) $(GTK_LIBS)

include ../build/buildsys.mk


# DO NOT DELETE
