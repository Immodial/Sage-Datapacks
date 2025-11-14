## >> From: frostbite:init, frostbite:sourceloop
## >> At: None
## >> As: Server
## >> Does: Do the heavy check for heat sources around a player
## >> Input: None
# Loop
schedule function frostbite:sourceloop 6
# Update players' temperature meters
execute as @a[gamemode=!creative,gamemode=!spectator] at @s run function frostbite:findsources