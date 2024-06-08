## >> From: frostbite:warming (advancement)
## >> At: Player standing on something slightly hot
## >> As: Player standing on something slightly hot
## >> Does: Update player temperature
## >> Input: None
execute unless score @s FBWetness matches 1.. run scoreboard players add @s FBTemperature 1
advancement revoke @s only frostbite:touch/warming