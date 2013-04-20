################################################################################
#	MODULE	:	pangox_env.mk
#	PROJECT	:	Cairo examples
#	AUTHOR	:	Michael Uman
#	DATE	:	April 19, 2013
################################################################################

PANGOX_CFLAGS   = $(shell pkg-config --cflags pangox)
PANGOX_LIBS     = $(shell pkg-config --libs pangox)
PANGOX_VERSION  = $(shell pkg-config --modversion pangox)

