## >> From: frostbite:chilling (advancement)
## >> At: Player in light
## >> As: Player in light
## >> Does: Update player temperature
## >> Input: None
execute unless predicate frostbite:raining run scoreboard players add @s FBTemperature 1
advancement revoke @s only frostbite:touch/lit