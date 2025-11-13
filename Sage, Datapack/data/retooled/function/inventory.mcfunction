## >> From: retooled:inventory (advancement)
## >> At: Player who just moved an item
## >> As: Player who just moved an item
## >> Does: Modify relevent items
## >> Input: None
# Make knuckles work
execute if items entity @s weapon.offhand *[custom_data~{RTKnuckles:true},!consumable] run item modify entity @s weapon.offhand retooled:functionality/knuckles_enable
execute if items entity @s weapon.mainhand *[custom_data~{RTKnuckles:true},consumable] run item modify entity @s weapon.mainhand retooled:functionality/knuckles_disable
# Revoke
advancement revoke @s only retooled:inventory