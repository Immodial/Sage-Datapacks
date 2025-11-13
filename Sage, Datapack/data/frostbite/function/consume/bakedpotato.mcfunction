## >> From: frostbite:consume/bakedpotato (advancement)
## >> At: Player who ate a baked potato
## >> As: Player who ate a baked potato
## >> Does: Reduce temperature
## >> Input: None
# Reset drink
advancement revoke @s only frostbite:consume/bakedpotato
execute if score @s FBTemperature matches 1.. run scoreboard players add @s FBTemperature 200
execute as @s[gamemode=!creative,gamemode=!spectator,level=1..] run function frostbite:tempmeter
execute as @s[gamemode=!creative,gamemode=!spectator,level=0] run function frostbite:tempmeterlow