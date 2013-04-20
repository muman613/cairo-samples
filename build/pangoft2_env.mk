################################################################################
#	MODULE	:	pangoft2_env.mk
#	PROJECT	:	Cairo examples
#	AUTHOR	:	Michael Uman
#	DATE	:	April 18, 2013
################################################################################

PANGOFT2_CFLAGS   = $(shell pkg-config --cflags pangoft2)
PANGOFT2_LIBS     = $(shell pkg-config --libs pangoft2)
PANGOFT2_VERSION  = $(shell pkg-config --modversion pangoft2)

