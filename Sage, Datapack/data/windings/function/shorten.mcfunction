## >> From: windings:erase
## >> At: Player erasing an old glyph
## >> As: Winding copied into item form
## >> Does: Update glyph data
## >> Input: Glyphs (int), LastInscribe (int)
$data modify entity @n[type=item,tag=WNDGInscribing] Item.components."minecraft:custom_data".WNDGGlyphs set string entity @n[type=item,tag=WNDGInscribing] Item.components."minecraft:custom_data".WNDGGlyphs 0 $(Glyphs)
$data remove entity @n[type=item,tag=WNDGInscribing] Item.components."minecraft:custom_data".WNDGInscribed[$(LastInscribe)]