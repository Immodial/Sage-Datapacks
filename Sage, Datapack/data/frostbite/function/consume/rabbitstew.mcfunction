## >> From: frostbite:consume/rabbitstew (advancement)
## >> At: Player who ate a mushroom stew
## >> As: Player who ate a mushroom stew
## >> Does: Reduce temperature
## >> Input: None
# Reset drink
advancement revoke @s only frostbite:consume/rabbitstew
execute if score @s FBTemperature matches 1.. run scoreboard players add @s FBTemperature 800
execute as @s[gamemode=!creative,gamemode=!spectator,level=1..] run function frostbite:tempmeter
execute as @s[gamemode=!creative,gamemode=!spectator,level=0] run function frostbite:tempmeterlow