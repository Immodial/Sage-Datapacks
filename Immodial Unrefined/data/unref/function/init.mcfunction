## >> From: #minecraft:load
## >> At: None
## >> As: Server
## >> Does: Start tick loop and make timers
## >> Input: None
# Timers
scoreboard objectives add URSmokeLoop dummy "Smoke Loop"
scoreboard objectives add URCoolTime dummy "Time Left Out"
# Loops
schedule function unref:tick 1