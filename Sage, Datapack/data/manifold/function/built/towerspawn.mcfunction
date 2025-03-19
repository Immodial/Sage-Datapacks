## >> From: manifold:loop
## >> At: Sleeping bag marker
## >> As: Sleeping bag marker
## >> Does: Periodically spawn illagers when players are not nearby
## >> Input: None
particle enchanted_hit ~ ~0.7 ~ 0.9 0 0.3 0 8
execute unless block ~-1 ~ ~ #stairs run kill @s
execute unless block ~ ~ ~ #stairs run kill @s
execute unless block ~1 ~ ~ #stairs run kill @s
execute if entity @a[gamemode=!spectator,distance=..30] run return fail
execute as @e[type=pillager,distance=..80] run scoreboard players add _PillagerPopulation MNFGlobals 1
execute if predicate {"condition":"random_chance","chance":0.0012} unless score _VindicatorPopulation MNFGlobals matches 25.. run summon pillager ~ ~ ~
tag @e[type=pillager,distance=..3] add MNFResourcesMultiplied
scoreboard players reset _PillagerPopulation MNFGlobals