#!/bin/sh
cat tally | tr -d , | awk '
	{land=$8;snow=$10;tundra=$12;min=$14;max=$16;
	if(snow == 0 && land > 1400 && tundra < 10 && min > 20 && max < 78){
		print $0}
	}'
