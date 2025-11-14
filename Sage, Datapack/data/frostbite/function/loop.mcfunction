## >> From: frostbite:init, frostbite:loop
## >> At: None
## >> As: Server
## >> Does: Update player freezing or burning
## >> Input: None
# Clamp temperatures
scoreboard players set @a[scores={FBTemperature=5000..}] FBTemperature 5000
scoreboard players set @a[scores={FBTemperature=..-5000}] FBTemperature -5000
# Reduce wetness
scoreboard players remove @a FBWetness 1
# Call other player functions
execute as @a[gamemode=!spectator] at @s run function frostbite:player
# Loop
schedule function frostbite:loop 2