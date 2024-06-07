## >> From: #minecraft:load
## >> At: None
## >> As: Server
## >> Does: Create scoreboards and start loops
## >> Input: None
# Variables
scoreboard objectives add IGGlobals dummy "Global Variables"
scoreboard objectives add IGUseTime dummy "Gun Use Time"
scoreboard objectives add IGLoadTime dummy "Time to Reload"
scoreboard objectives add IGProjectileTime dummy "Ticks Moving"
# Loops
schedule function iguns:tick 1