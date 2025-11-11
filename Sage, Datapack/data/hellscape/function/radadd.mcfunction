## >> From: hellscape:radadd
## >> At: Any player, projected and hitting an irradiated block 
## >> As: Any player
## >> Does: Cause effects
## >> Input: None
execute if block ~ ~ ~ #hellscape:netherrack_based unless score _RadMax HSGlobals matches 2.. run scoreboard players set _RadMax HSGlobals 2
execute if block ~ ~ ~ #hellscape:blackstone unless score _RadMax HSGlobals matches 2.. run scoreboard players set _RadMax HSGlobals 2
execute if block ~ ~ ~ basalt unless score _RadMax HSGlobals matches 5.. run scoreboard players set _RadMax HSGlobals 5
execute if block ~ ~ ~ soul_soil unless score _RadMax HSGlobals matches 6.. run scoreboard players set _RadMax HSGlobals 6
execute if block ~ ~ ~ soul_sand unless score _RadMax HSGlobals matches 8.. run scoreboard players set _RadMax HSGlobals 8
execute if block ~ ~ ~ crying_obsidian unless score _RadMax HSGlobals matches 40.. run scoreboard players set _RadMax HSGlobals 40
execute if block ~ ~ ~ nether_portal unless score _RadMax HSGlobals matches 10.. run scoreboard players set _RadMax HSGlobals 10
execute if block ~ ~ ~ nether_portal unless score _RadMax HSGlobals matches 30.. at @s unless entity @n[type=marker,tag=HSPortal,distance=..1] run scoreboard players set _RadMax HSGlobals 30