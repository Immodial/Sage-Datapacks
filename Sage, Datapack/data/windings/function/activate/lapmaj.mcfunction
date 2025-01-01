## >> From: windings:cast
## >> At: Spell containing the Lapis Major Glyph
## >> As: Spell containing the Lapis Major Glyph
## >> Does: Give nearby things levitation
## >> Input: None
effect give @e[distance=..5] levitation 1 0
execute as @e[distance=..5] unless data entity @s active_effects[{id:"minecraft:levitation"}] run data modify entity @s Motion[1] set value 0.5d