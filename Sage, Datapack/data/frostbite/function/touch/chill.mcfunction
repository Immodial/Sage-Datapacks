## >> From: frostbite:chilling (advancement)
## >> At: Player standing on something slightly cold
## >> As: Player standing on something slightly cold
## >> Does: Update player temperature
## >> Input: None
execute if score @s FBWetness matches 1.. run scoreboard players remove @s FBTemperature 1
execute if score @s FBInsulation matches ..5 run scoreboard players remove @s FBTemperature 1
execute if score @s FBInsulation matches ..8 run scoreboard players remove @s FBTemperature 1
advancement revoke @s only frostbite:touch/chilling