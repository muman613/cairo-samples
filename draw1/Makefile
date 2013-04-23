################################################################################
#	MODULE		:	Makefile
#	PROJECT		:	Cairo sample draw1
#	AUTHOR 		:	Michael Uman
#	DATE		:	April 17, 2013
#	LAST MOD 	:	April 22, 2013
################################################################################

TARGET_EXE=draw1
TARGET_TYPE=exe
CPP_SOURCES=draw1.cpp

include ../build/tools_env.mk
include ../build/cairo_env.mk
include ../build/gtk_env.mk

CFLAGS+=$(CAIRO_CFLAGS) $(GTK_CFLAGS)
LDFLAGS+=$(CAIRO_LIBS) $(GTK_LIBS)

include ../build/buildsys.mk


# DO NOT DELETE
