################################################################################
#	MODULE		:	Makefile
#	PROJECT		:	Cairo sample pdfgen
#	AUTHOR 		:	Michael Uman
#	DATE		:	April 17, 2013
################################################################################

TARGET_EXE=pdfgen
TARGET_TYPE=exe
CPP_SOURCES=pdfgen.cpp

include ../build/tools_env.mk
include ../build/cairo_env.mk

CFLAGS+=$(CAIRO_CFLAGS)
LDFLAGS+=$(CAIRO_LIBS)

include ../build/buildsys.mk


# DO NOT DELETE
