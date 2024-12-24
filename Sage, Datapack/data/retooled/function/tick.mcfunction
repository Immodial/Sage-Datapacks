## >> From: retooled:init
## >> At: None
## >> As: Server
## >> Does: Cause weapons effects and 
## >> Input: None
# Affect all players
execute as @a run function retooled:player
# Modify held items
execute as @e if items entity @s weapon.* #retooled:modified[!custom_data] run function retooled:retool
execute as @e if items entity @s armor.* #retooled:modified[!custom_data] run function retooled:reequip
# Give armor stands arms
execute as @e[type=armor_stand,tag=!RTArmorStandUpdated] run data modify entity @s ShowArms set value true
tag @e[type=armor_stand] add RTArmorStandUpdated
# Update projectiles
execute as @e[type=marker,tag=RTProjectile] at @s run function retooled:projectile with entity @s data.Projectile
# Modify items
execute as @e[type=item] if items entity @s contents #retooled:modified[!custom_data] run function retooled:redrop
# Loop
schedule function retooled:tick 1