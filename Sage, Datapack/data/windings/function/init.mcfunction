## >> From: #minecraft:load
## >> At: None
## >> As: Server
## >> Does: Create scoreboards and start loops
## >> Input: None
# Variables
scoreboard objectives add WNDGGlobals dummy "Global Variables"
scoreboard objectives add WNDGSpellTime dummy "Time Casting Spell"
scoreboard objectives add WNDGParseTime dummy "Time between Parsing"
scoreboard objectives add WNDGDictPage dummy "Dictionary Entry Reading"
# Constants
scoreboard players set %SpellCost WNDGGlobals 12
# Loops
schedule clear windings:loop
schedule function windings:loop 1