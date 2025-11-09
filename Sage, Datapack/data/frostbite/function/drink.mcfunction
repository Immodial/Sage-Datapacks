## >> From: frostbite:player
## >> At: Player who drank liquid
## >> As: Player who drank liquid
## >> Does: Reduce temperature
## >> Input: None
# Reset drink
scoreboard players reset @s FBDrink
execute if score @s FBTemperature matches 1.. run scoreboard players operation @s FBTemperature /= WaterModifier FBGlobals
scoreboard players set @s FBWetness 80
execute as @a[gamemode=!creative,gamemode=!spectator,level=1..] run function frostbite:tempmeter
execute as @a[gamemode=!creative,gamemode=!spectator,level=0] run function frostbite:tempmeterlow