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
# Reset
scoreboard players reset * FBEatMelon
scoreboard players reset * FBEatRabStew
scoreboard players reset * FBEatPie
scoreboard players reset * FBEatPotato
scoreboard players reset * FBEatMushStew
scoreboard players reset * FBEatSusStew
# Loop
schedule function frostbite:loop 2