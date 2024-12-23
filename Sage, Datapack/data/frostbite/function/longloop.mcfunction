## >> From: frostbite:init, frostbite:longloop
## >> At: None
## >> As: Server
## >> Does: Refresh UI every second
## >> Input: None
execute as @a[gamemode=!creative,gamemode=!spectator] run function frostbite:tempmeter
# Loop
schedule function frostbite:longloop 30