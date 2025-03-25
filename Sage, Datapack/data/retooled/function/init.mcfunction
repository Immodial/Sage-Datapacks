## >> From: #minecraft:load
## >> At: None
## >> As: Server
## >> Does: Start tick loop
## >> Input: None
scoreboard objectives add RTProjectileTime dummy "Time Since Projectile Spawn"
scoreboard objectives add RTGauntletTime dummy "Time Using Gauntlet"
# Loops
schedule function retooled:tick 1