## >> From: windings:cast, windings:activate/ameplus
## >> At: Spell containing the Amethyst Alt Glyph
## >> As: Spell containing the Amethyst Alt Glyph
## >> Does: Fire off in random direction
## >> Input: None
# Rotate randomly
rotate @s ~30 ~
execute if predicate {"condition":"random_chance","chance":0.5} rotated as @s run rotate @s ~-60 ~
execute rotated as @s run rotate @s ~15 ~
execute if predicate {"condition":"random_chance","chance":0.5} rotated as @s run rotate @s ~-30 ~
execute rotated as @s run rotate @s ~5 ~
execute if predicate {"condition":"random_chance","chance":0.5} rotated as @s run rotate @s ~-10 ~
# Go forwards and show particles
tp @s ^ ^ ^0.5
particle witch ^ ^ ^ 0.02 0.06 0.02 0 6
particle item{item:{id:"minecraft:amethyst_shard"}} ^ ^ ^0.25 0.05 0.05 0.05 0 4
particle item{item:{id:"minecraft:amethyst_shard"}} ^ ^ ^0.5 0.05 0.05 0.05 0 4
# Recast continuously, minimum of three times
tag @s[tag=WNDGAmeAltThird] add WNDGAmeAltFourth
tag @s[tag=WNDGAmeAltSecond] add WNDGAmeAltThird
tag @s[tag=WNDGAmeAltFirst] add WNDGAmeAltSecond
tag @s add WNDGAmeAltFirst
execute if entity @s[tag=!WNDGAmeAltFourth] at @s run return run function windings:activate/amealt
execute if predicate {"condition":"random_chance","chance":0.85} at @s run function windings:activate/amealt