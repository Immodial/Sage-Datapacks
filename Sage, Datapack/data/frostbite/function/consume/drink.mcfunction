## >> From: frostbite:consume/drink (advancement)
## >> At: Player who drank liquid
## >> As: Player who drank liquid
## >> Does: Reduce temperature
## >> Input: None
advancement revoke @s only frostbite:consume/drink
execute if score @s FBTemperature matches 1.. run scoreboard players operation @s FBTemperature /= WaterModifier FBGlobals
scoreboard players set @s FBWetness 80
execute as @s[gamemode=!creative,gamemode=!spectator,level=1..] run function frostbite:tempmeter
execute as @s[gamemode=!creative,gamemode=!spectator,level=0] run function frostbite:tempmeterlow