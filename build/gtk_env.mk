################################################################################
#	MODULE	:	gtk_env.mk
#	PROJECT	:	Cairo examples
#	AUTHOR	:	Michael Uman
#	DATE	:	April 18, 2013
################################################################################

GTK_CFLAGS     = $(shell pkg-config --cflags gtk+-2.0)
GTK_LIBS       = $(shell pkg-config --libs gtk+-2.0)
GTK_VERSION    = $(shell pkg-config --modversion gtk+-2.0)
