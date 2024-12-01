## >> From: retooled:init
## >> At: None
## >> As: Server
## >> Does: Cause weapons effects and 
## >> Input: None
# Affect all players
execute as @a run function retooled:player
execute as @e[type=armor_stand,tag=!RTArmorStandUpdated] run data modify entity @s ShowArms set value true
tag @e[type=armor_stand] add RTArmorStandUpdated
# Loop
schedule function retooled:tick 1