## >> From: windings:cast, windings:activate/ameplus
## >> At: Spell containing the Amethyst Plus Glyph
## >> As: Spell containing the Amethyst Plus Glyph
## >> Does: Nothing yet
## >> Input: None
particle item{item:{id:"minecraft:amethyst_shard"}} ^ ^ ^ 0.15 0.15 0.15 0 4
execute positioned ^ ^ ^0.3 if entity @s[distance=..10] if block ~ ~ ~ #air run return run function windings:activate/amemaj
tp @s ^ ^ ^