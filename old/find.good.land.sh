#!/bin/sh

#SIZE=144x96
SIZE=192x128

if [ ! -e tally ] ; then
	xzcat tallies/${SIZE}/*txt.xz | tr -d '\015' > tally
fi

grep -F '+' tally
