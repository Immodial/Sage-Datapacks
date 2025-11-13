## >> From: frostbite:consume/melon (advancement)
## >> At: Player who ate a melon slice
## >> As: Player who ate a melon slice
## >> Does: Reduce temperature
## >> Input: None
# Reset drink
advancement revoke @s only frostbite:consume/melon
execute if score @s FBTemperature matches 1.. run scoreboard players remove @s FBTemperature 500
scoreboard players set @s FBWetness 30
execute as @s[gamemode=!creative,gamemode=!spectator,level=1..] run function frostbite:tempmeter
execute as @s[gamemode=!creative,gamemode=!spectator,level=0] run function frostbite:tempmeterlow