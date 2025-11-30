## >> From: study:use (advancement)
## >> At: Player using an item
## >> As: Player using an item
## >> Does: Make sure they're actually using a study and call functions
## >> Input: None
# Mark as having used study
tag @s add SDYUsing
advancement revoke @s only study:use
# Run correct function as long as you're not holding down
execute if entity @s[tag=SDYUsed] run return fail
execute if data entity @s SelectedItem.components."minecraft:custom_data".SDYTopic run function study:read with entity @s SelectedItem.components."minecraft:custom_data"
execute if data entity @s equipment.offhand.components."minecraft:custom_data".SDYTopic run function study:read with entity @s equipment.offhand.components."minecraft:custom_data"