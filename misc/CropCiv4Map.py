#!/usr/bin/env python
# Public domain

# This script takes a Civilization IV map file and crops it
# The map is given to the script on standard input.  Standard output
# has the cropped map.

# Arguments provide the "square" to crop the new map to; it is four
# arguments in the form x1 y1 x2 y2
# The coordinates for x1 and y1 are the coordinates in the parent map we 
# wish to begin cropping at (the lower left corner); x2 and y2 are the
# coordinates in the parent map we wish to end cropping at.
# The row in x1 will be part of the resulting cropped map; ditto with the
# column in y1, the row in x2, and the column in y2; all squares in between
# will also be put in the resulting map.
# Example usage:
# cat AC.CivWarlordsWBSave|./CropCiv4Map.py 43 13 118 72 >ACx.CivWarlordsWBSave

# Please do not have any player starts off of the cropped portion of the 
# map.  Please have x1 be less than x2 and y1 be less than y2.  Otherwise,
# this script will fail with an assertion error.

import sys, re

if(len(sys.argv) < 5):
    print("Usage: CropCiv4Map.py x1 y1 x2 y2")
    sys.exit(1)

x1 = int(sys.argv[1])
y1 = int(sys.argv[2])
x2 = int(sys.argv[3])
y2 = int(sys.argv[4])
assert(x1 < x2)
assert(y1 < y2)

# Read the map, converting it in to a representation which can be both
# scanned and output as text later
# The keys are the data type; the value is both the raw lines in the datatype
# and the variables defined in the block for the datatype
mapinfo = {}
type = 'INVALID'
version = ''
for line in sys.stdin:
    line = line.rstrip() # Remove newline char(s) at end
    if(re.match('Begin',line)):
        type = line[5:]
        if type in mapinfo:
            mapinfo[type].append({'Lines': [], 'Vars': {} })
        else:
            mapinfo[type] = [{'Lines': [], 'Vars': {} }]
    elif(re.match('\t',line)):
        mapinfo[type][-1]['Lines'].append(line) 
        # Since there's a lot of stuff we can treat as a "black box", such
        # as the "CivicOption" array, we only care about the X and Y values
        if(re.search('StartingX=',line) or re.search(',y=',line) or
           re.search('grid',line) or re.search('num plots',line)):
            line = re.sub('\t','',line)
            for part in re.split(',[ ]?',line):
                stuff = re.split('=',part)
                key = stuff[0]
                value = stuff[1]
                mapinfo[type][-1]['Vars'][key] = value
    elif(re.match('Version',line)):
        version = line
   
print(version) 
# Anything but map plots we (mostly) show as-is
for type in ['Game','Team','Player','Map']:
    for part in mapinfo[type]:
        print("Begin" + type)
        # The map will be made smaller, so it has a smaller grid
        if type == 'Map':
            width = 1 + x2 - x1
            height = 1 + y2 - y1
            print("\tgrid width=" + str(width))
            print("\tgrid height=" + str(height))
            print("\tnum plots written=" + str(width * height))
            # If cropping the map, we probably want it to be bounded at
            # all edges; if not, edit the map by hand after cropping.
            print("\twrap x=0")
            print("\twrap y=0")
        # We move the player starts when shrinking the map
        elif type == 'Player' and ("StartingX" in part["Vars"]):
            sx = int(part["Vars"]["StartingX"])
            sy = int(part["Vars"]["StartingY"])
            assert(sx >= x1)
            assert(sy >= y1)
            assert(sx <= x2)
            assert(sy <= y2)
            print("\tStartingX=" + str(sx - x1) +", StartingY=" + str(sy - y1))
        # Otherwise, show the lines as is from the input
        for line in part["Lines"]:
            if(not(re.search('StartingX=',line) or re.search(',y=',line) or
               re.search('grid',line) or re.search('num plots',line) or
               re.search('wrap',line))):
                    print(line)
        print("End" + type)
        print("")

# Now, print the plots in the map
print("### Plot info ###")
for part in mapinfo['Plot']:
    x = int(part["Vars"]["x"])
    y = int(part["Vars"]["y"])
    if(x >= x1 and x <= x2 and y >= y1 and y <= y2):
        print("BeginPlot")
        print("\tx=" + str(x - x1) + ",y=" + str(y - y1))
        for line in part["Lines"]:
            if(not(re.search('StartingX=',line) or re.search(',y=',line) or
               re.search('grid',line) or re.search('num plots',line))):
                    print(line)
        print("EndPlot")
