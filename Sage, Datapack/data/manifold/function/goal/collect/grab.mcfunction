## >> From: manifold:illager
## >> At: Pillager collecting others' inventories
## >> As: Item being collected
## >> Does: Be collected
## >> Input: None
execute as @e[type=bat,tag=MNFTargetedItem,distance=..3] at @s run tp @s ~ -1000 ~
scoreboard players operation @n[tag=MNFGoalExecuting] MNFResources += @s MNFResources
function manifold:pickup