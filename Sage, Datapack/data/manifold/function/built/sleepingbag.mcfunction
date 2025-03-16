## >> From: manifold:loop
## >> At: Sleeping bag marker
## >> As: Sleeping bag marker
## >> Does: Periodically spawn illagers when players are not nearby
## >> Input: None
particle enchanted_hit ~ ~0.2 ~ 0.25 0 0.9 0 5
execute unless block ~ ~ ~1 #wool_carpets run kill @s
execute unless block ~ ~ ~ #wool_carpets run kill @s
execute unless block ~ ~ ~-1 #wool_carpets run kill @s
execute if entity @a[gamemode=!spectator,distance=..30] run return fail
execute if predicate {"condition":"random_chance","chance":0.0007} run summon pillager
execute if predicate {"condition":"random_chance","chance":0.0007} run summon vindicator