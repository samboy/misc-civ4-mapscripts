# These are *not* map scripts

## CropCiv4Map.py
`CropCiv4Map.py` is a tool to crop an already existing Civilization 4 map.

This script takes a Civilization IV map file and crops it
The map is given to the script on standard input.  Standard output
has the cropped map.

Arguments provide the "square" to crop the new map to; it is four
arguments in the form x1 y1 x2 y2

The coordinates for x1 and y1 are the coordinates in the parent map we
wish to begin cropping at (the lower left corner); x2 and y2 are the
coordinates in the parent map we wish to end cropping at.

The row in x1 will be part of the resulting cropped map; ditto with the
column in y1, the row in x2, and the column in y2; all squares in between
will also be put in the resulting map.

Example usage:

```
cat AC.CivWarlordsWBSave|./CropCiv4Map.py 43 13 118 72 >ACx.CivWarlordsWBSave
```

Please do not have any player starts off of the cropped portion of the
map.  Please have x1 be less than x2 and y1 be less than y2.  Otherwise,
this script will fail with an assertion error.

Note that if the width and height are not multiples of four, there may
be issues with showing the map at the end of the game.


## RotateCiv4Map.py

This script takes a Civilization IV map file and rotates it to the right
The map is given to the script on standard input.  Standard output
has the rotated map.

Arguments provide the rotate the new map to; it is four
arguments in the form x1

Example usage:

```
cat AC.CivWarlordsWBSave | ./RotateCiv4Map.py 17 > ACx.CivWarlordsWBSave
```

