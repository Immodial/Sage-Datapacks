## >> From: retooled:init
## >> At: None
## >> As: Server
## >> Does: Cause weapons effects and 
## >> Input: None
# Affect all players
execute as @a run function retooled:player
# Loop
schedule function retooled:tick 1