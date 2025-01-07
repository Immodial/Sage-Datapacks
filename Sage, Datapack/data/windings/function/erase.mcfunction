## >> From: windings:inscribe
## >> At: Player erasing an old glyph
## >> As: Player erasing an old glyph
## >> Does: Fetch glyph data
## >> Input: None
# Play sounds
playsound block.grindstone.use player @a ~ ~ ~ 1 1.6
# Get length of string and array
execute store result score _UnscribeLength WNDGGlobals run data get entity @n[type=item,tag=WNDGInscribing] Item.components."minecraft:custom_data".WNDGInscribed
execute store result score _ShortenLength WNDGGlobals run data get entity @n[type=item,tag=WNDGInscribing] Item.components."minecraft:custom_data".WNDGGlyphs
scoreboard players remove _ShortenLength WNDGGlobals 1
scoreboard players remove _UnscribeLength WNDGGlobals 1
execute store result storage windings lore.Glyphs int 1 run scoreboard players get _ShortenLength WNDGGlobals
execute store result storage windings lore.LastInscribe int 1 run scoreboard players get _UnscribeLength WNDGGlobals
# Get eraser back on failure
execute if score _UnscribeLength WNDGGlobals matches -1 run give @s poisonous_potato[item_name="[{translate:'item.windings.golden_eraser'}]",item_model="windings:golden_eraser",custom_data={WNDGGlyph:true,WNDGEraser:true},!food,!consumable]
# Remove value
function windings:retrieve with storage windings lore
scoreboard players reset _ShortenLength WNDGGlobals
scoreboard players reset _UnscribeLength WNDGGlobals