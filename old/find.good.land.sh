#!/bin/sh

# 144x96 values
#SIZE=144x96
#MIN=20
#MAX=78
# 192x128 values
SIZE=192x128
MIN=26 
MAX=104

if [ ! -e tally ] ; then
	xzcat tallies/${SIZE}/*txt.xz | tr -d '\015' > tally
fi

MAXTUNDRA=10
if [ -n "$1" ] ; then
  MAXTUNDRA="$1"
fi
FILENAME="tally"
if [ -n "$2" ] ; then
  FILENAME="$2"
fi

cat $FILENAME | tr -d , | tr -d '}' | awk '
	{land=$8;snow=$10;tundra=$12;min=$14;max=$16;desert=$18;
	 percent=desert/land
	if(snow == 0 && 
	   #land > 1400 && 
	   percent > .4 && 
	   tundra < '$MAXTUNDRA' && 
           min > '$MIN' && max < '$MAX'){
		print $0 " desert " percent "%"}
	}'
