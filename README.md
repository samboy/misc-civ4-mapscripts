# misc-civ4-mapscripts
This is a collection of mapscripts I have made for Civilization IV over
the years.

The mainline version of Totestra, my most popular mapscript, is here: 
https://github.com/samboy/Totestra-mapscript/

## SandBar.py

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

## Sandypelago.py

Sandypelago is a quick and dirty modification to the Archipelago map
script which comes with Civ4. This script, instead of generating a bunch
of islands in an ocean, generates a bunch of areas with arable land in
a desert.

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

## SandBarMoreIslands.py

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

## TotestraBigCoast.py, TotestraDry.py, and qTotestraHUGE.py

These are forks of Totestra:

* TotestraBigCoast.py: Make the coastal area be larger, so that lanteens
  (ships without navigation) are more useful.
* TotestraDry.py: Totestra with more desert
* qTotestraHUGE.py: Totestra with maps four times bigger

https://forums.civfanatics.com/threads/totestra-a-new-perfectworld2-fork.461262/

## sandLand.py

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

