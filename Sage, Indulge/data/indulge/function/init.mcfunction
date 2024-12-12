## >> From: #minecraft:load
## >> At: None
## >> As: Server
## >> Does: Start loop
## >> Input: None
# Add item values
scoreboard objectives add IDLGGlobals dummy "Globals"
scoreboard objectives add IDLGUseTime dummy "Time Using Item"
# Loops
schedule function indulge:tick 1