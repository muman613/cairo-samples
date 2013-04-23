################################################################################
#	MODULE		:	Makefile
#	PROJECT		:	Cairo sample toy-text
#	AUTHOR 		:	Michael Uman
#	DATE		:	April 17, 2013
################################################################################

TARGET_EXE=pango-view
TARGET_TYPE=exe
C_SOURCES=pango-view.c viewer-cairo.c viewer-main.c viewer-pangocairo.c       \
		  viewer-pangoft2.c viewer-pangox.c viewer-pangoxft.c viewer-render.c \
          viewer-x.c

include ../build/tools_env.mk
include ../build/pangocairo_env.mk
include ../build/pangoft2_env.mk
include ../build/pangox_env.mk
include ../build/pangoxft_env.mk

CFLAGS+=$(PANGOCAIRO_CFLAGS) $(PANGOFT2_CFLAGS) $(PANGOX_CFLAGS) $(PANGOXFT_CFLAGS)
LDFLAGS+=$(PANGOCAIRO_LIBS) $(PANGOFT2_LIBS) $(PANGOX_LIBS) $(PANGOXFT_LIBS)

include ../build/buildsys.mk


# DO NOT DELETE
