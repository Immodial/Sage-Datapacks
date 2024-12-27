## >> From: #minecraft:load
## >> At: None
## >> As: Server
## >> Does: Start evil devil loops 😈
## >> Input: None
# Variables
scoreboard objectives add HSGlobals dummy "Global Vars"
scoreboard objectives add HSRadiation dummy "Radiation"
scoreboard objectives add HSPrevRadiation dummy "Previous Radiation"
# Storage
data modify storage hellscape Exists set value true
# Loops
schedule clear hellscape:loop
schedule function hellscape:loop 1