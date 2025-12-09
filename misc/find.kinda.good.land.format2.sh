#!/bin/sh

TALLYFILE="$1"

if [ -z "$1" ] ; then
        TALLYFILE=tally
fi

if [ $TALLYFILE = '--help' ] ; then
	echo Usage: $0 {tallyfile} {x}
	echo Both {tallyfile} and {x} are optional
	echo if {x} is present, show by number of bigish islands
	echo Example usage:
	echo 'xzcat tallies/144x96/*xz > foo'
	echo $0 'foo x'
	echo When {x} is present, format is as follows:
	echo '# of bigish islands; Index of Arabian land mass; '
	echo 'Size of Arabian land mass; details'
	echo '>>>Details are:'
	echo 'Seed,size of each land mass/island on the map'
	exit 0
fi

GREP='@'

if [ "$2" = "g" ] ; then
  GREP='+'
  FORMAT='x'
elif [ "$2" = "x" ] ; then
  FORMAT='x'
fi

# SIZE only affects where we look for tallies if tally does not exist
SIZE=144x96
#SIZE=192x128

if [ ! -e $TALLYFILE ] ; then
	xzcat tallies/${SIZE}/*txt.xz | tr -d '\015' > $TALLYFILE
fi

grep -F "$GREP" $TALLYFILE | awk '{print $NF}' | awk -F, '{
	seed=$1
        for(a=2;a<NF;a++) {
		islandSize = $a
		sub(/@/,"",islandSize)
		sub(/\+/,"",islandSize)
		if($a ~ /'"$GREP"'/ && (islandSize + 0) > 999) {
			print a - 1 " " islandSize " " $0
		}
	}
}' | sort -n > foo.$$

if [ "$FORMAT" = "x" ] ; then
	cat foo.$$ | tr -d '@' | tr -d '-' | tr -d '+' | awk -F, '
		{b=0;for(a=2;a<=NF;a++){if($a >= 242){b++}}print b " " $0}
	' | sort -n
else
	cat foo.$$
fi

rm foo.$$
