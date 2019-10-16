#!/bin/bash

# This is a quick and dirty test for TotestraRG32.  Any changes which break
# this test will be rejected.

python2 ../TotestraRG32.py 2997 | tr -d '\015' > TotestraRG32.output.test

if ! cmp TotestraRG32.output.success \
		TotestraRG32.output.test > /dev/null 2>&1 ; then
        echo Test failed
	exit 1
fi

echo Test success
rm TotestraRG32.output.test
