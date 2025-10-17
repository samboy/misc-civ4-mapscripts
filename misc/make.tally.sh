#!/bin/sh

echo You may need to use ctrl+Z to stop this process

A="$1"

if [ -z "$A" ] ; then
	A=1
fi

#COMMAND=TotestraRG32.py    # 144x96 (Legacy RT### decimal integer seeds)
COMMAND=TotestraRG32Hex.py  # 144x96
#COMMAND=TotestraRG32Big.py # 192x128

SIZE="$2"
if [ "$SIZE" = "192x128" ] ; then
  COMMAND=TotestraRG32Big.py # 192x128
fi

echo command is $COMMAND

touch tally
while : ; do
	python2 $COMMAND $A | grep 'Biggest is' >> tally
	A=`expr $A + 1`
done
