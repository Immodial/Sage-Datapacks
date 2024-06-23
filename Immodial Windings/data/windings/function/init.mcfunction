## >> From: #minecraft:load
## >> At: None
## >> As: Server
## >> Does: Create scoreboards and start loop
## >> Input: None
# Variables
scoreboard objectives add WNGlobals dummy "Global Variables"
scoreboard objectives add WNManifested dummy "Spell Charge"
scoreboard objectives add WNEther dummy "Ether Possessed"
scoreboard objectives add WNSpellProgress dummy "Ticks since Casting"
# Loops
schedule function windings:tick 1