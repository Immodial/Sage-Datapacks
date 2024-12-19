## >> From: lorem:use (advancement)
## >> At: Player using item
## >> As: Player using item
## >> Does: Allow item use to affect lore
## >> Input: None
# Remove advancement
advancement revoke @s only lorem:use
# Mark as using
tag @s add LMUsing
# Use lore tag
execute unless entity @s[tag=LMUsed] if items entity @s weapon.mainhand *[custom_data~{LMLoreTag:true}] if data entity @s SelectedItem.components.minecraft:custom_name run function lorem:usage/loretag
execute unless entity @s[tag=LMUsed] if items entity @s weapon.mainhand *[custom_data~{LMSignQuill:true}] run function lorem:usage/signquill
execute unless entity @s[tag=LMUsed] if items entity @s weapon.mainhand *[custom_data~{LMDateStamp:true}] run function lorem:usage/datestamp
execute unless entity @s[tag=LMUsed] if items entity @s weapon.mainhand *[custom_data~{LMPolish:true}] run function lorem:usage/polish