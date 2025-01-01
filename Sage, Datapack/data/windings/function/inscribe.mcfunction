## >> From: windings:use
## >> At: Player inscribing a new glyph
## >> As: Player inscribing a new glyph
## >> Does: Add glyph
## >> Input: None
# Play inscribing sounds
execute if predicate {condition:"random_chance",chance:0.15} run playsound ui.cartography_table.take_result player @a ~ ~ ~ 0.5 1.6
execute if predicate {condition:"random_chance",chance:0.1} run playsound block.polished_deepslate.break player @a ~ ~ ~ 0.5 0.2
execute if predicate {condition:"random_chance",chance:0.1} run playsound block.tuff.fall player @a ~ ~ ~ 0.5 0.4
# Wait for inscribing to finish
execute unless score @s WNDGSpellTime matches 50.. unless items entity @s weapon.* gold_nugget run return fail
execute unless score @s WNDGSpellTime matches 20.. if items entity @s weapon.* gold_nugget run return fail
# Copy out item
summon item ~ ~ ~ {Tags:["WNDGInscribing"],Item:{id:"minecraft:cobblestone",count:1}}
execute if items entity @s weapon.mainhand *[custom_data~{WNDGBook:true}] run item replace entity @n[type=item,tag=WNDGInscribing] contents from entity @s weapon.mainhand
execute if items entity @s weapon.offhand *[custom_data~{WNDGBook:true}] run item replace entity @n[type=item,tag=WNDGInscribing] contents from entity @s weapon.offhand
# Add data
execute if items entity @s weapon.* redstone_block run data modify entity @n[type=item,tag=WNDGInscribing] Item.components."minecraft:custom_data".WNDGInscribed append value "red"
execute if items entity @s weapon.* redstone_block run data modify storage windings lore.Addition set value "R"
execute if items entity @s weapon.* lapis_lazuli run data modify entity @n[type=item,tag=WNDGInscribing] Item.components."minecraft:custom_data".WNDGInscribed append value "lap"
execute if items entity @s weapon.* lapis_lazuli run data modify storage windings lore.Addition set value "L"
execute if items entity @s weapon.* emerald run data modify entity @n[type=item,tag=WNDGInscribing] Item.components."minecraft:custom_data".WNDGInscribed append value "eme"
execute if items entity @s weapon.* emerald run data modify storage windings lore.Addition set value "E"
execute if items entity @s weapon.* gold_nugget run data modify storage windings lore.Addition set value ""
execute if items entity @s weapon.* gold_nugget run function windings:erase
data modify storage windings lore.Source set from entity @n[type=item,tag=WNDGInscribing] Item.components."minecraft:custom_data".WNDGGlyphs
execute as @n[type=item,tag=WNDGInscribing] run function windings:lore with storage windings lore
data remove storage windings lore
# Copy back item
execute if items entity @s weapon.mainhand *[custom_data~{WNDGBook:true}] run item replace entity @s weapon.mainhand from entity @n[type=item,tag=WNDGInscribing] contents
execute if items entity @s weapon.offhand *[custom_data~{WNDGBook:true}] run item replace entity @s weapon.offhand from entity @n[type=item,tag=WNDGInscribing] contents
kill @n[type=item,tag=WNDGInscribing]
# Use up item
execute if items entity @s[gamemode=!creative] weapon.mainhand #windings:windable run item modify entity @s weapon.mainhand windings:decrease
execute if items entity @s[gamemode=!creative] weapon.offhand #windings:windable run item modify entity @s weapon.offhand windings:decrease
# Reset spell time
scoreboard players reset _SpellCharge WNDGGlobals
scoreboard players reset @s WNDGSpellTime
# Show finishing
playsound block.enchantment_table.use player @a ~ ~ ~ 1 1.4
execute anchored eyes run particle enchant ^ ^ ^ 0.2 0.2 0.2 1 20