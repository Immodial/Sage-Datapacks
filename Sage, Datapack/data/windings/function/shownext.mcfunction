## >> From: windings:show, windings:shownext
## >> At: Any Spell
## >> As: Any Spell
## >> Does: Show particles representing spell parts
## >> Input: IndexOffset (double), ShowingSpell (mcfunc in windings:shown/)
$execute positioned ^$(IndexOffset) ^ ^ run function windings:shown/$(ShowingSpell)
scoreboard players add _GlyphCounter WNDGGlobals 1
execute store result storage windings show.IndexOffset double -0.3 run scoreboard players get _GlyphCounter WNDGGlobals
data remove storage windings show.Reading[0]
data modify storage windings show.ShowingSpell set from storage windings show.Reading[0]
execute if data storage windings show.Reading[0] run function windings:shownext with storage windings show