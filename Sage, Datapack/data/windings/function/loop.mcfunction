## >> From: windings:init, windings:loop
## >> At: None
## >> As: Server
## >> Does: Update players & spells
## >> Input: None
# Reset spell time of players not using spells
scoreboard players reset @a[tag=!WNDGUsing] WNDGSpellTime
tag @a remove WNDGUsing
# Render spells
execute as @e[type=marker,tag=WNDGSpell] at @s run function windings:spell
# Loop
schedule function windings:loop 2