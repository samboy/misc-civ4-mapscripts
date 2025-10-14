#!/bin/sh

sh find.kinda.good.land.sh | tr -d '[(,)]' | awk '
	{if($1 > 1000){print $3 " " $1 " " $2}}' | sort -n
