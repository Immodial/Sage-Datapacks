## >> From: frostbite:chilling (advancement)
## >> At: Player standing on something hot
## >> As: Player standing on something hot
## >> Does: Update player temperature
## >> Input: None
execute unless score @s FBWetness matches 1.. run scoreboard players add @s FBTemperature 2
scoreboard players remove @s FBWetness 1
advancement revoke @s only frostbite:touch/heating