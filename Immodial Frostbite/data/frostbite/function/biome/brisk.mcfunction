## >> From: frostbite:brisk (advancement)
## >> At: Player in a brisk biome
## >> As: Player in a brisk biome
## >> Does: Update player temperature
## >> Input: None
execute if score @s FBTemperature matches -200.. unless score @s FBWetness matches 1.. run scoreboard players remove @s FBTemperature 1
execute if score @s FBTemperature matches -1200.. unless score @s FBWetness matches 1.. run scoreboard players remove @s FBTemperature 1
execute if score @s FBTemperature matches ..-1800 unless score @s FBWetness matches 1.. run scoreboard players add @s FBTemperature 1
execute if score @s FBTemperature matches ..-2800 unless score @s FBWetness matches 1.. run scoreboard players add @s FBTemperature 1
advancement revoke @s only frostbite:biome/brisk