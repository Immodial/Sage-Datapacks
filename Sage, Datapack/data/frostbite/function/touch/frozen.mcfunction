## >> From: frostbite:freezing (advancement)
## >> At: Player standing on something very cold
## >> As: Player standing on something very cold
## >> Does: Update player temperature
## >> Input: None
execute if score @s FBWetness matches 1.. run scoreboard players remove @s FBTemperature 3
execute if score @s FBInsulation matches ..8 run scoreboard players remove @s FBTemperature 1
execute if score @s FBInsulation matches ..10 run scoreboard players remove @s FBTemperature 1
execute if score @s FBInsulation matches ..12 run scoreboard players remove @s FBTemperature 1
advancement revoke @s only frostbite:touch/freezing