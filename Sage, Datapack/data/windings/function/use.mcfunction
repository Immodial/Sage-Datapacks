## >> From: windings:use (advancement)
## >> At: Player using item
## >> As: Player using item
## >> Does: Fire or load spell
## >> Input: None
# Revoke
advancement revoke @s only windings:use
# Charge spell
execute store result score _SpellCharge WNDGGlobals run data get entity @s SelectedItem.components."minecraft:custom_data".WNDGInscribed
scoreboard players operation _SpellCharge WNDGGlobals *= %SpellCost WNDGGlobals
scoreboard players add @s WNDGSpellTime 1
tag @s add WNDGUsing
# Inscribe
execute if items entity @s weapon.* #windings:windable run return run function windings:inscribe
# Wait for full charge to cast
execute if score _SpellCharge WNDGGlobals matches 0 run return run scoreboard players reset _SpellCharge WNDGGlobals
execute if predicate {condition:"random_chance",chance:0.1} run playsound item.book.page_turn player @a ~ ~ ~ 0.5 0.6
execute if predicate {condition:"random_chance",chance:0.1} run playsound item.book.page_turn player @a ~ ~ ~ 0.5 0.9
execute if predicate {condition:"random_chance",chance:0.1} run playsound item.book.page_turn player @a ~ ~ ~ 0.5 1.2
execute if predicate {condition:"random_chance",chance:0.05} run playsound entity.breeze.idle_ground player @a ~ ~ ~ 0.2 0.8
execute unless score @s WNDGSpellTime >= _SpellCharge WNDGGlobals run return run scoreboard players reset _SpellCharge WNDGGlobals
# Make spell
summon marker ~ ~ ~ {Tags:["WNDGSpell","WNDGSpelling"],data:{Inscribed:[]}}
execute if data entity @s SelectedItem.components."minecraft:custom_data".WNDGSlowed run tag @n[type=marker,tag=WNDGSpelling] add WNDGSlowSpell
execute anchored eyes run tp @n[type=marker,tag=WNDGSpelling] ^ ^ ^0.6 ~ ~
data modify entity @n[type=marker,tag=WNDGSpelling] data.Inscribed set from entity @s SelectedItem.components."minecraft:custom_data".WNDGInscribed
execute store result entity @n[type=marker,tag=WNDGSpelling] data.SpellWidth double 0.15 run data get entity @n[type=marker,tag=WNDGSpelling] data.Inscribed
tag @e[type=marker] remove WNDGSpelling
scoreboard players reset _SpellCharge WNDGGlobals
scoreboard players reset @s WNDGSpellTime