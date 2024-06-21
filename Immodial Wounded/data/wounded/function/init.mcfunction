## >> From: #minecraft:load
## >> At: None
## >> As: Server
## >> Does: Create scoreboards and start loop
## >> Input: None
scoreboard objectives add WDGlobals dummy
scoreboard objectives add WDInspectTime dummy
scoreboard objectives add WDBleedTime dummy
scoreboard objectives add WDDamage minecraft.custom:minecraft.damage_taken
scoreboard objectives add WDHealth health
scoreboard objectives add WDDeath deathCount
# Loops
schedule function wounded:tick 1