## >> From: windings:inscribe
## >> At: Player erasing an old glyph
## >> As: Winding copied into item form
## >> Does: Fetch glyph data
## >> Input: None
playsound block.grindstone.use player @a ~ ~ ~ 1 1.6
data modify storage windings lore.Addition set value ""
execute store result score _UnscribeLength WNDGGlobals run data get entity @n[type=item,tag=WNDGInscribing] Item.components."minecraft:custom_data".WNDGInscribed
execute store result score _ShortenLength WNDGGlobals run data get entity @n[type=item,tag=WNDGInscribing] Item.components."minecraft:custom_data".WNDGGlyphs
scoreboard players remove _ShortenLength WNDGGlobals 1
scoreboard players remove _UnscribeLength WNDGGlobals 1
execute store result storage windings lore.Glyphs int 1 run scoreboard players get _ShortenLength WNDGGlobals
execute store result storage windings lore.LastInscribe int 1 run scoreboard players get _UnscribeLength WNDGGlobals
function windings:shorten with storage windings lore
scoreboard players reset _ShortenLength WNDGGlobals
scoreboard players reset _UnscribeLength WNDGGlobals