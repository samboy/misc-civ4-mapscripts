# misc-civ4-mapscripts
This is a collection of mapscripts I have made for Civilization IV over
the years.

The mainline version of Totestra, my most popular mapscript, is here: 
https://github.com/samboy/Totestra-mapscript/

# ArabianBigIsland.py

This is a perfect world variant tweaked to make maps suitable for
Legends of Ancient Arabia (LoAA), and is one of the map scripts
included with LoAA.  This is similar to SandBar and BigIsland.

# SandBar.py

I felt that Legends of Ancient Arabia (LoAA), as well as the other Arabian
mods like Rhye's Sword of Islam, really deserve their own map script,
so I have hacked PerfectWorld/Totestra to make a suitable random map
for Arabian adventures.

This map script makes things a lot, and I mean a lot more dry than stock
PerfectWorld ever did; LoAA is about nomads adventuring in the desert
and the map script makes sure there's a lot of desert to explore.

Having an entire planet that is a desert seems a bit extreme, so the map
script makes a map that is a flat map. It's only supposed to represent
a small part of earth.

Being a Tectonic map generator, the forms of land PW makes are very
unpredictable. I went to a lot of effort to control this unpredictability
in SandBar and force everyone to be on the same land form, while keeping
the shape reasonably random. I also tweaked the map to more likely have
water near the edge so players are not likely to get annoying starts at
the edge of the map--this was the lion's share of the work.

The map forms are almost always a single island with a hopefully fairly
interesting shape; its form is somewhat reminiscent of Tropico's random
map generator.

https://forums.civfanatics.com/threads/sandbar-an-interesting-take-on-perfectworld.464127/

# Sandypelago.py

Sandypelago is a quick and dirty modification to the Archipelago map
script which comes with Civ4. This script, instead of generating a bunch
of islands in an ocean, generates a bunch of areas with arable land in
a desert, or, depending on the settings, the arable areas can instead be
in snow or an extended coastland.

This is geared towards desert-themed mods (since as Legends of Ancient
Arabia), but works with other mods for games where people do not want
to build a navy, but want to retain a "needle in a haystack" exploration
flavor.

To install, put the script in ${Beyond the Sword}\PublicMaps
(or ${Warlords}\PublicMaps or even ${Civ4}\PublicMaps). Note that
${Beyond the Sword} is where BTS is installed (such as c:\Program
Files\2K Games\Civilization IV Complete\Beyond the Sword or what not),
${Warlords} is where Warlords is installed, and where ${Civ4} is where
vanilla Civ4 is installed. It may also work if ${Beyond the Sword} is
${My Documents}\My Games\Beyond the Sword\PublicMaps (or likewise for
${Warlords} and ${Vanilla}).

To use, keep in mind that lowering the "sea level" increases the size of
areas with arable land. I like the map with a low "sea level" and with an
"arid" climate.

This script has only been tested in Warlords using the Legends of Ancient
Arabia mod. Your mileage may vary.

https://forums.civfanatics.com/threads/sandypelago.532562/

# SandBarMoreIslands.py

Playing multiplayer Legends of Ancient Arabia games with my buddy made
me realize I really like having a few islands out there, just enough
that cruising around with Dhows (Caravels) in the midgame is worthwhile.

That in mind, I have made a new version of the SandBar.py map script
that will tend to have more islands off of the mainland to explore,
and the mainland will be a little smaller.

In other words, the map will still (usually) have a single big mainland,
but now it will usually (but not always) have a few smaller islands to
expore with Dhows (Caravels) in the midgame.

One side effect of the changes to pull this off is that it's now more
likely a player will start near the edge of the map.

https://forums.civfanatics.com/threads/sandbar-an-interesting-take-on-perfectworld.464127/

# sandLand.py

This is a quick and dirty modification to the Islands map script which
comes with Civ4. This script, instead of generating a bunch of islands
in an ocean, generates a bunch of areas with arable land in a desert.

The maximum number of players this map script supports is nine.

This is geared towards desert-themed mods (since as Legends of Ancient
Arabia), but works with other mods for games where people do not want
to build a navy, but want to retain a “needle in a haystack”
exploration flavor.

To install, put the script in ${Beyond the Sword}\PublicMaps
(or ${Warlords}\PublicMaps or even ${Civ4}\PublicMaps), Note that
${Beyond the Sword} is where BTS is installed (such as c:\Program
Files\2K Games\Civilization IV Complete\Beyond the Sword or what not),
${Warlords} is where Warlords is installed, and where ${Civ4} is where
vanilla Civ4 is installed. It may also work if ${Beyond the Sword} is
${My Documents}\My Games\Beyond the Sword\PublicMaps (or likewise for
${Warlords} and ${Vanilla}).

This script has only been tested in Warlords using the Legends of Ancient
Arabia mod. Your mileage may vary.

https://forums.civfanatics.com/threads/sandland.532500/

# BigIsland.py

This puts all of the players on a large single island. It’s possible
to change the climate of the map; the island is near the equator, so even
on a cold world there is little tundra on the map. The island has a feel
of a realistic island, because the map is generated with plate tectonics,
simulated rainfall, and so on.

There will usually be a few small islands to explore in the mid game
and end game, but most of the game will be on the main island.

The normal maximum map size is 96x96 (just under 10,000 tiles), but
there’s a “bigger maps” option hidden near the bottom of the
option list which allows maps up to 160x160 in size (this slows down
map creation quite a bit, hence hiding the option a little).

To install this map script, take the BigIsland.zip file, extract
BigIsland.py, and install that .py file to one’s PublicMaps
folder, which is a path which looks like C:\Program Files (x86)\2K
Games\Civ4\Beyond the Sword\PublicMaps. The exact location will depend
on how Civ4 was installed on your system.

https://forums.civfanatics.com/threads/new-ish-map-script-big-island.671823/

# T2.py

I have created a simplified version of Totestra called “T2” (see the
`old/` folder for the original version of Totestra). This discards a
large number of changes from Perfect World, and only includes the most
relevant features (allow everyone to start on same landmass; have more
resources by default on map w/ resource control option; remove coastal
mountains; etc.) The maps will be the same as generated by Totestra with
the same features selected.

One useful feature this map script has which stock Totestra doesn’t
have is the ability to make extra huge 192x128 maps. The option for these
big maps is a little hidden, but can be seen in the options (since bigger
maps take longer to generate).

The code should be more maintainable compared to the older Totestra.

To install, place the T2.py file in the relevant “PublicMaps/”
(maybe “PrivateMaps/” if using it with a mod) folder in one’s
Civilization 4 files.

## How extra huge maps are made in T2.py

I should explain why it’s useful to change the height map size when
we already have the ability to adjust the map size via the standard
“size” control. The way T2.py handles size is like this: It makes
a really large (144 wide, 96 high by default) map which it then
runs plate tectonics and weather simulation with to act like a reasonably
realistic planet. Then, once it has this 144x96 map generated, T2.py then
scales down this really large map to the size requested by the user (44x28
for duel, 60x40 for tiny, 80x52 for small, 96x64 for standard, 120x80
for large, and 144x96 for huge) This way, if we have the same seed but
select different map sizes, we get more or less the same planet generated.

What “bigger maps” does is change the size of that underlying height
field. This allows us to make maps which break the 144x96 cap on map sizes
and have maps as large as 192x128. (This results in a different map being
generated for a given seed.) T2.py scales up all of the smaller map sizes
(56x36 for duel, then 80x52, 104x68, 128x84, 160x104, and finally 192x128
for huge) when a bigger map is selected. This option is a little hidden
because it takes a lot more time (and memory, so make sure to only make
a really huge map right after starting a new Civ4 session or a memory
allocation failure may happen) to make this bigger map.

I also was able to add an option to make this underlying height field
smaller (96x64 instead of the default 144x96); this is for running the
generator on older computers when it’s more important to fairly quickly
generate a smaller map than to generate a large or huge world. All the
smaller maps are scaled down; e.g. a duel map is only 32x20.

# T2RG32.py

This is a variant of T2.py that uses an implementation of
RadioGatún[32] instead of the built-in random number generator Python
has (MT19937 32-bit) to generate random numbers.  The main advantage
here is that the seed is now a string instead of a number; the main
issue is that Python runs RadioGatún[32] quite slowly (the actual 
algorithm is very fast when implemented as hand tuned C code) so map
generation is slower.

The maps are more or less the same maps TotestraRG32.py generates;
the main difference being, to keep the code simple, we allow Civ4 to
place tribal huts.  This means two runs with a given seed will result
in different hut locations.
