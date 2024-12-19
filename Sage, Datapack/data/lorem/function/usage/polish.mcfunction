## >> From: lorem:use
## >> At: Player using lore tag
## >> As: Player using lore tag
## >> Does: Change lore of item used on
## >> Input: None
tag @s add LMLoreAdding
execute store result score @s LMRaycastMax run attribute @s entity_interaction_range get 10
execute anchored eyes positioned ^ ^ ^0.1 run function lorem:raycast/polish
scoreboard players reset @s LMRaycastMax
tag @s remove LMLoreAdding