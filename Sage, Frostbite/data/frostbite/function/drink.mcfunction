## >> From: frostbite:player
## >> At: Player who drank liquid
## >> As: Player who drank liquid
## >> Does: Reduce temperature
## >> Input: None
# Reset drink
scoreboard players reset @s FBDrink
execute if score @s FBTemperature matches 1.. run scoreboard players operation @s FBTemperature /= WaterModifier FBGlobals
scoreboard players set @s FBWetness 80