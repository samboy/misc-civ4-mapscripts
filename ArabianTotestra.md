# About
ArabianTotestra.py is a map script for Civilization IV.  It is derived 
from Rich Marinaccio's map script Perfect World.  While Rich Marinaccio
never provided a license for Perfect World, he has given me permission 
to make derivatives of it and I believe he is OK with any and all
non-commercial use of the script.

In this variant of Perfect World, I have made a version of Perfect World
which generates the same maps Perfect World generates, but only (by default)
selects maps which are suitable for the Warlords Mod "Legends of Ancient
Arabia".

This is a map script: It is a Python2 program run by Civilization IV to
generate a map for that game.

This map script is designed to model a natural world like Earth:  The 
scipt simulates plate tectonics, rainfall, meteor hits, and other factors
which created the continents on Earth.

This script limits the number of worlds that can be generated.  A script
was run for several weeks to find Perfect World random number generator
seeds which generate simulated planets suitable for creating an Arabian
adventure:  The main continent needs to be near the equator, and there
needs to be very little cold areas in that continent.  This script, by
default, will only randomly select one of the larger possible Arabian
adventures found by this script.

Unlike other Civilization IV map generators, all of the players will 
start on the same continent, changing the map size won't change the
size of the generated map (all maps are 144 tiles wide and 96 tiles 
tall), climate can not be selected (the climate is arid), and the
sea level can not be adjusted.

# Installation

Place this in one's PublicMaps folder, such as 
"/Sid Meier's Civilization 4 Complete/Warlords/PublicMaps/".  When
starting a game, select "Custom Game", and make sure "ArabianTotestra"
is visible when selecting "Map".

# Options

## Size

This should be set to Huge.  While it can be set to a smaller size, the
map generator *always* generates an 144x96 map; smaller sizes reduce the
default number of players and make war weariness happen more quickly
while not affecting the actual map generated.

## Era

Set this to the desired era to start with.  With the "Legends of Ancient
Arabia" mod, this should be "Ancient".

## Speed

How fast the game develops.  For a quick game, choose "Quick" or "Normal",
and choose "Smaller start continents" for the seed below.

## Resources

Perfect World had its own unique resource placement code which better
simulates resources in the real world.  For Civilization games, this is
less than ideal.  "Full of resources" simply randomly places a large
number of resources everywhere on the map; "Resources evenly spread"
does not place resources on their own continents, but acts like "Full
of resources", except the resource count is lower.  "Like Perfect World"
uses Perfect World's resource placement code.

## Map seed

This determines the seed given to the pseudo random number generator
to generate a map.  Running a script on a Raspberry Pi server found a
large number of maps which appear to be suitable for Arabian adventures.

Selecting "larger start continents" will select one of those seeds which 
generates a continent with a size of 1400 or higher.  This is suitable
for a game at "epic" or "marathon" speeds.

"Smaller start continents" will select a seed which makes a continent 
smaller than 1400 in size.  This is for a game at "quick" or "normal"
speeds.

"Random" will select any known seed suitable for generating an Arabian
adventure.

"Free form (not Arabian)" will select a completely random Pefect World seed; 
most maps will not be optimized for an Arabian adventure.

"Amira map" is a fixed seed I found in 2018 which looks to be a very
enjoyable Arabian adventure.  Selecting this will always generate the
same map.

"Caulixtla map" is a fixed seed I found in 2012 which is my usual go
to Arabian adventure map.  If nine players are selected, this is the 
Hijazi start in the Arabian Caulixtla map included with my fork of 
"Legends of Ancient Arabia".  Note that this map will be upside down
compared to the map included with "Legends of Ancient Arabia"; the
LOAA version of the map was flipped over 180 degrees back in 2012.

"Fixed seed (Jungle start)" is a fixed seed making a larger continent
where the player starts in a jungle.

"Caulixtla map (Jungle start)" is the Caulixtla map again, but with
a start in a Jungle, as long as precisely nine players are selected (the
number of tribes in "Legends of Ancient Arabia").  If the map does not
have nine players, the player may not start in a jungle.  This start
is the Omani start in the 2012 version of the Arabian Caulixtla map,
and the Lakhmid start in the 2021 second revision of the Arabian Caulixtla
map.

"Fixed seed (Grassland start)" is a different map than the "Fixed seed
(Jungle start)" map above, and places the player on a medium sized map.
Like the Caulixtla map and other Fixed seed, this seed will always 
generate the same map.

None of the fixed seed maps will be generated if selecting "Large start
continents", "Small start continents", "Random", or free form maps.
In addition, the free form maps will never generate a map from the "Large
start continents", "Small start continents", and "Random" list of maps.

## Player bonus resources

If playing at a harder difficulty, or if simply wanting to play an easier
game, it may be desirable to have more resources at one's starting
location. There are a large number of levels of bouns resources placed
in the player's start.

This allows one to have more starting resources without having to 
regenerate the map until one has the desired quantity of starting 
resources.

## Hut placement

This determines how goody huts are placed on the map.  "Civ4 default" 
just uses Civ4's default hut placement code; note that a given map seed
will have different hut placements every time a map is generated.  In
other words, if using "Civ4 default" and one of the fixed seeds, the 
huts will still vary their location every time the map is generated.

"No huts" simply does not put any goody huts on the map.  This is the
behavior the original "Legends of Ancient Arabia" has with its default
map.

"Fixed huts per seed" places a reasonable number of huts on the map.
A given map seed will always have the same locations for goody huts.

"Huts are rare" makes huts very uncommon.  A given map seed will always
have the same locations for huts.

"Many desert huts" places a large number of goody huts in deserts.  A 
given map seed will have the same hut locations.

"Many huts everywhere" has many goody huts all over the map.  A given map
seed will have the same hut locations.

# Running stand alone
The script can also be run stand alone.  This will not generate maps;
if map generation in standalone mode is desired, use old/TotestraRG32.py
instead.  Instead, standalone mode tests the random number generator to
ensure it is generating correct RadioGatun[32] sums.

To run it standalone:

```
python2 ArabianTotestra.py --test foo
```

Replace foo above with the desired string to generate a RadioGatun[32]
sum of.

#Finding good desert maps
In the folder `old/` are tools for finding good desert maps.

