## >> From: windings:spell
## >> At: Any Spell
## >> As: Any Spell
## >> Does: Setup showing of particles
## >> Input: SpellWidth (double)
data modify storage windings show.IndexOffset set value 0
data modify storage windings show.Reading set from entity @s data.Inscribed
data modify storage windings show.ShowingSpell set from storage windings show.Reading[0]
scoreboard players set _GlyphCounter WNDGGlobals 0
$execute positioned ^-0.1 ^ ^ positioned ^$(SpellWidth) ^ ^ run function windings:shownext with storage windings show
data remove storage windings show
scoreboard players reset _GlyphCounter WNDGGlobals