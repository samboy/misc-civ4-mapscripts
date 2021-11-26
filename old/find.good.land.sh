#!/bin/sh
if [ ! -e tally ] ; then
	xzcat tally.txt.xz | tr -d '\015' > tally
fi

cat tally | tr -d , | tr -d '}' | awk '
	{land=$8;snow=$10;tundra=$12;min=$14;max=$16;desert=$18;
	 percent=desert/land
	if(snow == 0 && 
	   land > 1400 && 
	   percent > .4 && 
	   tundra < 10 && min > 20 && max < 78){
		print $0 " desert " percent "%"}
	}'
