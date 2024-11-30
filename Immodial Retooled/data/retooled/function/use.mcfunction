## >> From: retooled:use (advancement)
## >> At: Player using an item
## >> As: Player using an item
## >> Does: Apply possible effects
## >> Input: None
execute if items entity @s weapon.offhand *[custom_data~{RTKnuckles:true}] run function retooled:functionality/knuckles/uppercut
# Revoke
tag @s add RTUsing
advancement revoke @s only retooled:use