## >> From: frostbite:neutral (advancement)
## >> At: Player in a neutral biome
## >> As: Player in a neutral biome
## >> Does: Update player temperature
## >> Input: None
execute if score @s FBTemperature matches 1500.. run scoreboard players remove @s FBTemperature 1
execute if score @s FBTemperature matches 300.. run scoreboard players remove @s FBTemperature 1
execute if score @s FBTemperature matches ..-300 run scoreboard players add @s FBTemperature 1
execute if score @s FBTemperature matches ..-1500 run scoreboard players add @s FBTemperature 1
advancement revoke @s only frostbite:biome/neutral