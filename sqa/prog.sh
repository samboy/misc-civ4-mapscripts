#!/bin/sh

../TotestraRG32.py --test "$1" | head -1 | awk '{print $2}'
