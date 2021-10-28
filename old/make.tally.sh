#!/bin/sh

A="$1"

if [ -z "$A" ] ; then
	A=1
fi

while : ; do
	python2 TotestraRG32.py $A | grep 'Biggest is' >> tally
	A=`expr $A + 1`
done
