## >> From: frostbite:init, frostbite:longloop
## >> At: None
## >> As: Server
## >> Does: Refresh UI every second
## >> Input: None
# Loop
schedule function frostbite:longloop 30
# Update players' temperature meters
execute as @a[gamemode=!creative,gamemode=!spectator,level=1..] run function frostbite:tempmeter
execute as @a[gamemode=!creative,gamemode=!spectator,level=0] run function frostbite:tempmeterlow