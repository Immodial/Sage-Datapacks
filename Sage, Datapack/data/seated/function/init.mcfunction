## >> From: #minecraft:load
## >> At: None
## >> As: Server
## >> Does: Start loop and make scoreboards
## >> Input: None
scoreboard objectives add STDCrouchPower dummy "Crouch"
scoreboard objectives add STDSleepPosX dummy "Sleeping Position X"
scoreboard objectives add STDSleepPosY dummy "Sleeping Position Y"
scoreboard objectives add STDSleepPosZ dummy "Sleeping Position Z"
# Loop
schedule function seated:loop 1