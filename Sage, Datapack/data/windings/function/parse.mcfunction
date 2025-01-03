## >> From: windings:spell
## >> At: Any Spell
## >> As: Any Spell
## >> Does: Set up data for glyph merge
## >> Input: None
# Transcribe
data modify storage windings parse.Reading set from entity @s data.Inscribed
data modify storage windings parse.Combination set value ""
data modify entity @s data.Inscribed set value []
# Parse
function windings:parsenext
execute as @a[distance=..20] if items entity @s armor.head *[custom_data~{WNDGLens:true}] run tag @s add WNDGLensing
tellraw @a[tag=WNDGLensing] ""
function windings:lens/send with storage windings parse
data modify storage windings parse.Reading set from entity @s data.Inscribed
data modify storage windings parse.Combination set value ""
function windings:lens/total with storage windings parse
data remove storage windings parse
scoreboard players reset @s WNDGParseTime
# Refresh spell length
execute store result entity @s data.SpellWidth double 0.15 run data get entity @s data.Inscribed
tag @a remove WNDGLensing
# If nothing merged, it is ready to cast
execute if entity @s[tag=WNDGMerged] run return run tag @s remove WNDGMerged
data modify entity @s data.NextCast set from entity @s data.Inscribed[0]
function windings:cast with entity @s data