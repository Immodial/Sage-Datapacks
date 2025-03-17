## >> From: manifold:illager
## >> At: Pillager tasked with gathering wood
## >> As: Item being gathered
## >> Does: Be gathered
## >> Input: None
execute as @e[type=bat,tag=MNFTargetedItem,distance=..3] at @s run tp @s ~ -1000 ~
execute store result score @s MNFResources run data get entity @s Item.count 3
scoreboard players operation @n[tag=MNFGoalExecuting] MNFResources += @s MNFResources
function manifold:pickup