## >> From: retooled:inventory (advancement)
## >> At: Player who just moved an item
## >> As: Player who just moved an item
## >> Does: Modify relevent items
## >> Input: None
# Make knuckles work
execute if items entity @s weapon.offhand *[custom_data~{RTKnuckles:true},!consumable] run function retooled:functionality/knuckles/activate
# Revoke
advancement revoke @s only retooled:inventory