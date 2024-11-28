## >> From: retooled:init
## >> At: None
## >> As: Server
## >> Does: Cause weapons effects and 
## >> Input: None
# Decrease base player interaction range
execute as @a run attribute @s entity_interaction_range base set 2
# Replace items
execute as @a if items entity @s weapon.* #retooled:modified[!custom_data] run function retooled:retool
# Grab enemies with sicle
execute as @e[nbt={HurtTime:9s}] if function retooled:check/sickle at @s run function retooled:hit/sickle
# Loop
schedule function retooled:tick 1