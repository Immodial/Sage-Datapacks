## >> From: windings:erase
## >> At: Player erasing an old glyph
## >> As: Player erasing an old glyph
## >> Does: Update glyph data and retrieve glyph item
## >> Input: Glyphs (int), LastInscribe (int)
$data modify entity @n[type=item,tag=WNDGInscribing] Item.components."minecraft:custom_data".WNDGGlyphs set string entity @n[type=item,tag=WNDGInscribing] Item.components."minecraft:custom_data".WNDGGlyphs 0 $(Glyphs)
$data modify storage windings lore.retrieval set from entity @n[type=item,tag=WNDGInscribing] Item.components."minecraft:custom_data".WNDGInscribed[$(LastInscribe)]
$data remove entity @n[type=item,tag=WNDGInscribing] Item.components."minecraft:custom_data".WNDGInscribed[$(LastInscribe)]
execute if entity @s[gamemode=creative] run return fail
execute if data storage windings {lore:{retrieval:"eme"}} run give @s poisonous_potato[item_name=[{translate:'item.windings.glyph.emerald'}],item_model="windings:emerald_glyph",custom_data={WNDGGlyph:true,WNDGInscribe:"eme"},max_stack_size=16,!food,!consumable]
execute if data storage windings {lore:{retrieval:"lap"}} run give @s poisonous_potato[item_name=[{translate:'item.windings.glyph.lapis'}],item_model="windings:lapis_glyph",custom_data={WNDGGlyph:true,WNDGInscribe:"lap"},max_stack_size=16,!food,!consumable]
execute if data storage windings {lore:{retrieval:"red"}} run give @s poisonous_potato[item_name=[{translate:'item.windings.glyph.redstone'}],item_model="windings:redstone_glyph",custom_data={WNDGGlyph:true,WNDGInscribe:"red"},max_stack_size=16,!food,!consumable]
execute if data storage windings {lore:{retrieval:"ame"}} run give @s poisonous_potato[item_name=[{translate:'item.windings.glyph.amethyst'}],item_model="windings:amethyst_glyph",custom_data={WNDGGlyph:true,WNDGInscribe:"ame"},max_stack_size=16,!food,!consumable]
execute if data storage windings {lore:{retrieval:"shar"}} run give @s poisonous_potato[item_name=[{translate:'item.windings.glyph.shard'}],item_model="windings:shard_glyph",custom_data={WNDGGlyph:true,WNDGInscribe:"shar"},max_stack_size=16,!food,!consumable]
execute if data storage windings {lore:{retrieval:"cry"}} run give @s poisonous_potato[item_name=[{translate:'item.windings.glyph.crystal'}],item_model="windings:crystal_glyph",custom_data={WNDGGlyph:true,WNDGInscribe:"cry"},max_stack_size=16,!food,!consumable]
execute if data storage windings {lore:{retrieval:"res"}} run give @s poisonous_potato[item_name=[{translate:'item.windings.glyph.resin'}],item_model="windings:resin_glyph",custom_data={WNDGGlyph:true,WNDGInscribe:"res"},max_stack_size=16,!food,!consumable]