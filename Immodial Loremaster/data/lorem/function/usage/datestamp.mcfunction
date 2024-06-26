## >> From: lorem:use
## >> At: Player using lore tag
## >> As: Player using lore tag
## >> Does: Change lore of item used on
## >> Input: None
tag @s add LMLoreAdding
execute store result score @s LMRaycastMax run attribute @s player.entity_interaction_range get 10
execute store result score Time LMGlobals run time query day
execute anchored eyes positioned ^ ^ ^0.1 run function lorem:raycast/datestamp
scoreboard players reset @s LMRaycastMax
scoreboard players reset Time LMGlobals
tag @s remove LMLoreAdding