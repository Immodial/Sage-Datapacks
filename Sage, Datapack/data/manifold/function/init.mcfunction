## >> From: #minecraft:load
## >> At: None
## >> As: Server
## >> Does: Start up pillager and villager sentience
## >> Input: None
# Variables
scoreboard objectives add MNFGlobals dummy "Global Vars"
scoreboard objectives add MNFGoalExpiry dummy "Goal Expiration Time"
scoreboard objectives add MNFGoalProgress dummy "Goal Progress"
scoreboard objectives add MNFTargetExpiry dummy "Target Expiration Time"
scoreboard objectives add MNFTargetIgnored dummy "Target Ignore Time"
scoreboard objectives add MNFIdleTime dummy "Time being Idle"
scoreboard objectives add MNFResources dummy "Resource Points"
# Static variables
scoreboard players set %ResourceMultiplier MNFGlobals 2
# Loops
schedule clear manifold:loop
schedule function manifold:loop 1