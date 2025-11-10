## >> From: windings:cast
## >> At: Spell containing the Prismarine Shard Glyph
## >> As: Spell containing the Prismarine Shard Glyph
## >> Does: Pull nearby mobs
## >> Input: None
execute at @n[type=!#windings:nonphysical,distance=..5] facing entity @s feet run tp @n[type=!#windings:nonphysical,distance=..5] ^ ^ ^2
tp @e[type=!#windings:nonphysical,distance=..2] ~ ~ ~