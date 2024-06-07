## >> From: frostbite:frigid (advancement)
## >> At: Player in a frigid biome
## >> As: Player in a frigid biome
## >> Does: Update player temperature
## >> Input: None
execute if score @s FBTemperature matches -1500.. run scoreboard players remove @s FBTemperature 1
execute if score @s FBTemperature matches -2200.. run scoreboard players remove @s FBTemperature 1
execute if score @s FBTemperature matches ..-2800 run scoreboard players add @s FBTemperature 1
execute if score @s FBTemperature matches ..-3500 run scoreboard players add @s FBTemperature 1
execute if score @s FBWetness matches 1.. run scoreboard players remove @s FBTemperature 2
advancement revoke @s only frostbite:biome/frigid