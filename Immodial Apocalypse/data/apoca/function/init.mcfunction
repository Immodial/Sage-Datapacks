## >> From: #minecraft:load
## >> At: None
## >> As: Server
## >> Does: Create apocalypse scoreboards
## >> Input: None
# Variables
scoreboard objectives add APOCGlobals dummy "Global Vars"
scoreboard objectives add APOCZombieDensity dummy "Proximity to Other Zombies"
scoreboard objectives add APOCBreakTime dummy "Time until Breaking"
# Loops
schedule function apoca:tick 1