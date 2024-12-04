## >> From: retooled:inventory (advancement)
## >> At: Player who just moved an item
## >> As: Player who just moved an item
## >> Does: Modify relevent items
## >> Input: None
# Replace items
execute if items entity @s weapon.* #retooled:modified[!custom_data] run function retooled:retool
execute if items entity @s armor.* #retooled:modified[!custom_data] run function retooled:reequip
execute if items entity @s weapon.offhand *[custom_data~{RTKnuckles:true},!consumable] run function retooled:functionality/knuckles/activate
execute if items entity @s weapon.mainhand *[custom_data~{RTKnuckles:true},consumable] run function retooled:functionality/knuckles/deactivate
# Revoke
advancement revoke @s only retooled:inventory