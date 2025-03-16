## >> From: manifold:illager
## >> At: Any illager
## >> As: Item being picked up
## >> Does: Pick up item
## >> Input: None
data modify entity @n[type=#illager,tag=MNFGoalExecuting] Inventory append from entity @s Item
playsound entity.item.pickup hostile @a ~ ~ ~ 0.2 1.6
kill @s
execute as @n[type=#illager,tag=MNFGoalExecuting] run item replace entity @s weapon.offhand with bundle[bundle_contents=[{id:"cobblestone",count:1}]]
data modify entity @n[type=#illager,tag=MNFGoalExecuting] equipment.offhand.components."minecraft:bundle_contents" set from entity @n[type=#illager,tag=MNFGoalExecuting] Inventory
data modify entity @s drop_chances.offhand set value 2f