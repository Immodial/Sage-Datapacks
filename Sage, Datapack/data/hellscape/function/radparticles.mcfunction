## >> From: hellscape:radcast
## >> At: Any player, on a path that hit an irradiated block 
## >> As: Any player
## >> Does: Show particles
## >> Input: None
execute if predicate {"condition":"random_chance","chance":0.1} run particle landing_obsidian_tear ~ ~ ~ 0.05 0.05 0.05 0 1 normal @s
execute if score _RadMax HSGlobals matches 1..5 if predicate {"condition":"random_chance","chance":0.4} run particle ash ~ ~ ~ 0.05 0.05 0.05 0 2 normal @s
execute if score _RadMax HSGlobals matches 6..9 if predicate {"condition":"random_chance","chance":0.3} run particle soul ~ ~ ~ 0 0 0 0 1 normal @s
execute if score _RadMax HSGlobals matches 10.. if predicate {"condition":"random_chance","chance":0.6} run particle falling_obsidian_tear ~ ~ ~ 0.03 0.03 0.03 0 1 normal @s