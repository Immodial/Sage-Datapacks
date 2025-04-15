## >> From: windings:inscribe
## >> At: Player inscribing a new glyph
## >> As: Winding copied into item form
## >> Does: Update lore and glyph data
## >> Input: Source (string), Addition (string)
$data modify entity @s Item.components."minecraft:custom_data".WNDGGlyphs set value '$(Source)$(Addition)'
$data modify entity @s Item.components."minecraft:lore"[0] set value {"text":"$(Source)$(Addition)","color":"white","italic":false,"font":"windings:winding"}
execute store result score _GlyphLength WNDGGlobals run data get entity @s Item.components."minecraft:custom_data".WNDGGlyphs
execute if score _GlyphLength WNDGGlobals matches 0 run data modify entity @s Item.components."minecraft:lore"[0] set value {"text":"Empty","color":"white","italic":false}