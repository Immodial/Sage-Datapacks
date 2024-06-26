## >> From: #minecraft:load
## >> At: None
## >> As: Server
## >> Does: Start loop
## >> Input: None
# Add item values
scoreboard objectives add LMGlobals dummy "Globals"
scoreboard objectives add LMRaycastMax dummy "Raycast Distance"
# Loops
schedule function lorem:tick 1