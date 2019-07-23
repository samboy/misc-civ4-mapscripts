#!/usr/bin/env python
# Public domain

# This script takes a Civilization IV map file and rotates it to the right
# The map is given to the script on standard input.  Standard output
# has the rotated map.

# Arguments provide the rotate the new map to; it is four
# arguments in the form x1
# Example usage:
# cat AC.CivWarlordsWBSave | ./RotateCiv4Map.py 17 > ACx.CivWarlordsWBSave

import sys, re

if(len(sys.argv) < 2):
    print("Usage: RotateCiv4Map.py x1")
    sys.exit(1)

x1 = int(sys.argv[1])

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
        if type == 'Player' and ("StartingX" in part["Vars"]):
            sx = int(part["Vars"]["StartingX"])
            sy = int(part["Vars"]["StartingY"])
            newx = sx + x1
            newx %= int(mapinfo['Map'][0]['Vars']['grid width'])
            print("\tStartingX=" + str(newx) +", StartingY=" + str(sy))
        # Otherwise, show the lines as is from the input
        for line in part["Lines"]:
            if(not(re.search('StartingX=',line) or re.search(',y=',line))):
                print(line)
        print("End" + type)
        print("")

# Now, print the plots in the map
print("### Plot info ###")
for part in mapinfo['Plot']:
    x = int(part["Vars"]["x"])
    y = int(part["Vars"]["y"])
    print("BeginPlot")
    newx = x + x1
    newx %= int(mapinfo['Map'][0]['Vars']['grid width'])
    print("\tx=" + str(newx) + ",y=" + str(y))
    for line in part["Lines"]:
        if(not(re.search('StartingX=',line) or re.search(',y=',line))):
            print(line)
    print("EndPlot")
