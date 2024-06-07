## >> From: frostbite:cooling (advancement)
## >> At: Player standing on something cold
## >> As: Player standing on something cold
## >> Does: Update player temperature
## >> Input: None
execute if score @s FBWetness matches 1.. run scoreboard players remove @s FBTemperature 2
execute if score @s FBInsulation matches ..8 run scoreboard players remove @s FBTemperature 1
execute if score @s FBInsulation matches ..10 run scoreboard players remove @s FBTemperature 1
advancement revoke @s only frostbite:touch/cooling