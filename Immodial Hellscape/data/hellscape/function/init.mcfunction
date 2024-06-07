## >> From: #minecraft:load
## >> At: None
## >> As: Server
## >> Does: Make the nether evil >:)
## >> Input: None
# Variables
scoreboard objectives add HSGlobals dummy "Global Vars"
scoreboard objectives add HSInstability dummy "Portal Instability"
# Loops
schedule clear hellscape:loop
schedule function hellscape:loop 1