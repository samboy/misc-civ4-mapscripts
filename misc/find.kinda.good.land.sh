#!/bin/sh

TALLYFILE="$1"

if [ -z "$1" ] ; then
        TALLYFILE=tally
fi

# SIZE only affects where we look for tallies if tally does not exist
SIZE=144x96
#SIZE=192x128

if [ ! -e $TALLYFILE ] ; then
	xzcat tallies/${SIZE}/*txt.xz | tr -d '\015' > $TALLYFILE
fi

grep -F '@' $TALLYFILE | awk '{print $NF}' | awk -F, '{
	seed=$1
        for(a=2;a<NF;a++) {
		islandSize = $a
		sub(/@/,"",islandSize)
		if($a ~ /@/ && (islandSize + 0) > 800) {
			print "(" islandSize ", '\''" seed "'\'', " a - 1 "),"
		}
	}
}'
