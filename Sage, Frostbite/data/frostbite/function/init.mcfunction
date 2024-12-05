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
# Detect item use
scoreboard objectives add FBDrink minecraft.used:minecraft.potion "Liquid Drank"
scoreboard objectives add FBEatMelon minecraft.used:minecraft.melon_slice "Melon Eaten"
scoreboard objectives add FBEatRabStew minecraft.used:minecraft.rabbit_stew "Rabbit Stew Eaten"
scoreboard objectives add FBEatPie minecraft.used:minecraft.pumpkin_pie "Pie Eaten"
scoreboard objectives add FBEatPotato minecraft.used:minecraft.baked_potato "Baked Potato Eaten"
scoreboard objectives add FBEatMushStew minecraft.used:minecraft.mushroom_stew "Mushroom Stew Eaten"
scoreboard objectives add FBEatSusStew minecraft.used:minecraft.suspicious_stew "Sussy Stew Eaten"
# Loops
schedule clear frostbite:loop
schedule function frostbite:loop 1