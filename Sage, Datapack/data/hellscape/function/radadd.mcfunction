## >> From: hellscape:radadd
## >> At: Any player, projected and hitting an irradiated block 
## >> As: Any player
## >> Does: Cause effects
## >> Input: None
execute if block ~ ~ ~ #hellscape:netherrack_based run scoreboard players add @s HSRadiation 1
execute if block ~ ~ ~ #hellscape:blackstone run scoreboard players add @s HSRadiation 1
execute if block ~ ~ ~ basalt run scoreboard players add @s HSRadiation 2
execute if block ~ ~ ~ soul_soil run scoreboard players add @s HSRadiation 2
execute if block ~ ~ ~ soul_sand run scoreboard players add @s HSRadiation 5
execute if block ~ ~ ~ crying_obsidian run scoreboard players add @s HSRadiation 40
execute if block ~ ~ ~ nether_portal at @s unless entity @n[type=marker,tag=HSPortal,distance=..1] run scoreboard players add @s HSRadiation 20
execute if block ~ ~ ~ nether_portal run scoreboard players add @s HSRadiation 10