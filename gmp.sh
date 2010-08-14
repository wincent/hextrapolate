#!/bin/sh

# set up SRCROOT so we can run outside of Xcode if need be
if [ -z "$SRCROOT" ]; then
  SRCROOT=.
fi

# get platform; eg: pentiumm-apple-darwin10.0.0
GUESS=$(cd $SRCROOT/gmp && ./config.guess)

# extract CPU part; eg: pentiumm
CPU=$(echo $GUESS | awk -F- '{ print $1 }')

# produce final build string; eg: none-apple-darwin10.0.0
BUILDSTRING=${GUESS/$CPU/none}

# now perform the actual build
cd ${SRCROOT}/gmp && \
   ./configure --disable-shared --build=$BUILDSTRING && \
   make clean && \
   make && \
   make check && \
   cp .libs/libgmp.a libgmp.a &&
   make distclean
