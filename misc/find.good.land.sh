#!/bin/sh

# SIZE only affects where we look for tallies if tally does not exist
SIZE=144x96
#SIZE=192x128

if [ ! -e tally ] ; then
	xzcat tallies/${SIZE}/*txt.xz | tr -d '\015' > tally
fi

grep -F '+' tally | awk '{print $NF}' | awk -F, '{
	seed=$1
        for(a=2;a<NF;a++) {
		islandSize = $a
		sub(/+/,"",islandSize)
		if($a ~ /+/) {
			print "(" islandSize ", '\''" seed "'\'', " a - 1 "),"
		}
	}
}'
