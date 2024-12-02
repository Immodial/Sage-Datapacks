## >> From: retooled:init
## >> At: None
## >> As: Server
## >> Does: Cause weapons effects and 
## >> Input: None
# Affect all players
execute as @a run function retooled:player
# Give armor stands arms
execute as @e[type=armor_stand,tag=!RTArmorStandUpdated] run data modify entity @s ShowArms set value true
tag @e[type=armor_stand] add RTArmorStandUpdated
# Update projectiles
execute as @e[type=marker,tag=RTProjectile] at @s run function retooled:projectile with entity @s data.Projectile
# Loop
schedule function retooled:tick 1