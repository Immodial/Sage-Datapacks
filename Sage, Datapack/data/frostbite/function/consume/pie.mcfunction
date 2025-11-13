## >> From: frostbite:consume/pie (advancement)
## >> At: Player who ate a pie
## >> As: Player who ate a pie
## >> Does: Reduce temperature
## >> Input: None
# Reset drink
advancement revoke @s only frostbite:consume/pie
execute if score @s FBTemperature matches 1.. run scoreboard players add @s FBTemperature 500
execute as @s[gamemode=!creative,gamemode=!spectator,level=1..] run function frostbite:tempmeter
execute as @s[gamemode=!creative,gamemode=!spectator,level=0] run function frostbite:tempmeterlow