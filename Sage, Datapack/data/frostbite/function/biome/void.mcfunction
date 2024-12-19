## >> From: frostbite:void (advancement)
## >> At: Player in a void biome
## >> As: Player in a void biome
## >> Does: Remove temperature
## >> Input: None
scoreboard players set @s FBTemperature 0
scoreboard players remove @s FBWetness 2
advancement revoke @s only frostbite:biome/void