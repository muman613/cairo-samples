################################################################################
#	MODULE	:	pangocairo_env.mk
#	PROJECT	:	Cairo examples
#	AUTHOR	:	Michael Uman
#	DATE	:	April 18, 2013
################################################################################

PANGOCAIRO_CFLAGS   = $(shell pkg-config --cflags pangocairo)
PANGOCAIRO_LIBS     = $(shell pkg-config --libs pangocairo)
PANGOCAIRO_VERSION  = $(shell pkg-config --modversion pangocairo)

