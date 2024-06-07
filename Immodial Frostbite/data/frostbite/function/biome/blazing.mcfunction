## >> From: frostbite:blazing (advancement)
## >> At: Player in a blazing biome
## >> As: Player in a blazing biome
## >> Does: Update player temperature
## >> Input: None
execute if score @s FBTemperature matches 3500.. unless score @s FBWetness matches 1.. run scoreboard players remove @s FBTemperature 1
execute if score @s FBTemperature matches 2800.. unless score @s FBWetness matches 1.. run scoreboard players remove @s FBTemperature 1
execute if score @s FBTemperature matches ..2200 unless score @s FBWetness matches 1.. run scoreboard players add @s FBTemperature 1
execute if score @s FBTemperature matches ..1500 unless score @s FBWetness matches 1.. run scoreboard players add @s FBTemperature 1
scoreboard players remove @s FBWetness 1
advancement revoke @s only frostbite:biome/blazing