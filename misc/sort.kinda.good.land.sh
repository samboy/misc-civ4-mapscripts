#!/bin/sh

TALLYFILE="$1"
if [ -z "$TALLYFILE" ] ; then
	TALLYFILE=tally
fi

sh find.kinda.good.land.sh $TALLYFILE | tr -d '[(,)]' | awk '
	{if($1 > 1000){print $3 " " $1 " " $2}}' | sort -n
