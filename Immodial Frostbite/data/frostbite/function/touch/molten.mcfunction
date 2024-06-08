## >> From: frostbite:melting (advancement)
## >> At: Player standing on something very hot
## >> As: Player standing on something very hot
## >> Does: Update player temperature
## >> Input: None
execute unless score @s FBWetness matches 1.. run scoreboard players add @s FBTemperature 3
scoreboard players remove @s FBWetness 2
advancement revoke @s only frostbite:touch/melting