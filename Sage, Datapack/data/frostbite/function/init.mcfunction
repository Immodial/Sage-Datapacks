## >> From: #minecraft:load
## >> At: None
## >> As: Server
## >> Does: Start temperature loops & stats
## >> Input: None
# Variables
scoreboard objectives add FBGlobals dummy "Global Vars"
scoreboard objectives add FBInsulation dummy "Insulation"
scoreboard objectives add FBTemperature dummy "Temperature"
scoreboard objectives add FBWetness dummy "Wetness Duration"
scoreboard objectives add FBBreath dummy "Breathe Cooldown"
scoreboard objectives add FBDeath deathCount "Death Counter"
# Static variables
scoreboard players set WaterModifier FBGlobals 4
# Loops
schedule clear frostbite:loop
schedule function frostbite:loop 1
schedule clear frostbite:longloop
schedule function frostbite:longloop 1