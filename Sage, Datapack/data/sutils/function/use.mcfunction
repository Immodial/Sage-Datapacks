## >> From: sutils:use (advancement)
## >> At: Player using an item
## >> As: Player using an item
## >> Does: Use special admin items
## >> Input: None
execute if items entity @s weapon.mainhand *[custom_data~{SURecallBook:true}] run function sutils:recall/access with entity @s SelectedItem.components.minecraft:custom_data
# Revoke
advancement revoke @s only sutils:use