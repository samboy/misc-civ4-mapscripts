#!/bin/sh

echo You may need to use ctrl+Z to stop this process

#COMMAND=TotestraRG32.py
COMMAND=TotestraRG32Big.py

A="$1"

if [ -z "$A" ] ; then
	A=1
fi

touch tally
while : ; do
	python2 $COMMAND $A | grep 'Biggest is' >> tally
	A=`expr $A + 1`
done
