## >> From: windings:init, windings:loop
## >> At: None
## >> As: Server
## >> Does: Update players & spells
## >> Input: None
# Reset spell time of players not using spells
scoreboard players reset @a[tag=!WNDGUsing] WNDGSpellTime
tag @a[tag=!WNDGUsing] remove WNDGDicting
tag @a remove WNDGUsing
# Render spells
execute as @e[type=marker,tag=WNDGSpell] at @s run function windings:spell
execute as @e[type=marker,tag=WNDGProjectile] at @s run function windings:corporeal with entity @s data
# Loop
schedule function windings:loop 2