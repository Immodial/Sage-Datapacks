## >> From: windings:cast
## >> At: Spell containing the Lapis Super Glyph
## >> As: Spell containing the Lapis Super Glyph
## >> Does: Give nearby things better levitation
## >> Input: None
effect give @e[distance=..7] levitation 1 2
execute as @e[distance=..7] unless data entity @s active_effects[{id:"minecraft:levitation"}] run data modify entity @s Motion[1] set value 1d