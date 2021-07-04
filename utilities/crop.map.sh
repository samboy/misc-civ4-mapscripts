#!/bin/sh

# The current parameters (43 13 118 72) generate the default 
# ArabianCaulixtla map included with my version of Legends of Ancient Arabia
# Args are: x1 y1 x2 y2
# x1/y1 Lower left corner; x2/y2 upper right corner.  Try to keep the map
# a multiple of 4 squares in both dimensions.

# One possible set of values is (40 18 125 77) which generate a somewhat 
# bigger map with enough space around the main land to not allow players to
# block sea routes once Dhows (Galleons) are in play.  Also, there is more
# distant land to colonize with Dhows compared to the ArabianCaulixtla version
# of the map.

cat ArabianCaulixtlaFullWorld.CivWarlordsWBSave | \
	./CropCiv4Map.py 43 13 118 72 > ArabianCaulixtlaCrop.CivWarlordsWBSave
