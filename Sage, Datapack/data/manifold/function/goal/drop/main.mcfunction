## >> From: manifold:illager
## >> At: Any illager
## >> As: Pillager emptying their inventory
## >> Does: Drop items for collector to pick up
## >> Input: None
summon item ~ ~ ~ {Item:{id:"cobblestone",count:1},Tags:["MNFDroppedItem","MNFDropping"]}
scoreboard players operation @n[tag=MNFDropping] MNFResources = @s MNFResources
scoreboard players reset @s MNFResources
data modify entity @n[tag=MNFDropping] Item set from entity @s Inventory[0]
tag @e[type=item] remove MNFDropping
data remove entity @s Inventory[0]
execute run item replace entity @s weapon.offhand with air
data remove entity @s drop_chances.offhand
execute unless data entity @s Inventory[0] run tag @s remove MNFCollectedFrom