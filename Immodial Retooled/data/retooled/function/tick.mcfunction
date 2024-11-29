## >> From: retooled:init
## >> At: None
## >> As: Server
## >> Does: Cause weapons effects and 
## >> Input: None
# Decrease base player interaction range
execute as @a run attribute @s entity_interaction_range base set 2
# Update use state
tag @a remove RTUsed
tag @a[tag=RTUsing] add RTUsed
tag @a remove RTUsing
# Replace items
execute as @a if items entity @s weapon.* #retooled:modified[!custom_data] run function retooled:retool
execute as @a if items entity @s weapon.offhand *[custom_data~{RTKnuckles:true},!consumable] run function retooled:functionality/knuckles/activate
execute as @a if items entity @s weapon.mainhand *[custom_data~{RTKnuckles:true},consumable] run function retooled:functionality/knuckles/deactivate
# Loop
schedule function retooled:tick 1