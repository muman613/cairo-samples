################################################################################
#	MODULE	:	pangoxft_env.mk
#	PROJECT	:	Cairo examples
#	AUTHOR	:	Michael Uman
#	DATE	:	April 19, 2013
################################################################################

PANGOXFT_CFLAGS   = $(shell pkg-config --cflags pangoxft)
PANGOXFT_LIBS     = $(shell pkg-config --libs pangoxft)
PANGOXFT_VERSION  = $(shell pkg-config --modversion pangoxft)

