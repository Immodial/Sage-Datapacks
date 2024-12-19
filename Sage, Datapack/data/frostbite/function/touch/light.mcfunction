## >> From: frostbite:chilling (advancement)
## >> At: Player in light
## >> As: Player in light
## >> Does: Update player temperature
## >> Input: None
execute unless score @s FBWetness matches 1.. run scoreboard players add @s FBTemperature 1
advancement revoke @s only frostbite:touch/lit