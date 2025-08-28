#!/bin/sh
if [ ! -e tally ] ; then
	xzcat tallies/*txt.xz | tr -d '\015' > tally
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
           min > 20 && max < 78){
		print $0 " desert " percent "%"}
	}'
