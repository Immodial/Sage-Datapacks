## >> From: #minecraft:load
## >> At: None
## >> As: Server
## >> Does: Create apocalypse scoreboards
## >> Input: None
# Variables
scoreboard objectives add APOCGlobals dummy "Global Vars"
scoreboard objectives add APOCZombieDensity dummy "Proximity to Other Zombies"
scoreboard objectives add APOCCramming dummy "Proximity to Mobs"
scoreboard objectives add APOCDreams dummy "Dreaming"
scoreboard objectives add APOCBreakTime dummy "Time until Breaking"
scoreboard objectives add APOCChargeX dummy "Fireball X Momentum"
scoreboard objectives add APOCChargeY dummy "Fireball Y Momentum"
scoreboard objectives add APOCChargeZ dummy "Fireball Z Momentum"
scoreboard objectives add APOCChargeTime dummy "Fireball Charge"
scoreboard objectives add APOCParticleTime dummy "Fireball Particles"
# Loops
schedule function apoca:tick 1
schedule clear apoca:states
schedule function apoca:states 20