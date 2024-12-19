## >> From: lorem:use
## >> At: Player using lore tag
## >> As: Player using lore tag
## >> Does: Change lore of item used on
## >> Input: None
execute if entity @n[type=item,distance=..0.5] run tag @s add LMUsed
execute as @n[type=item,distance=..0.5] if items entity @s contents *[custom_data~{LMWaxed:true}] run playsound item.book.page_turn player @a ~ ~ ~ 1 1.2
execute as @n[type=item,distance=..0.5] if items entity @s contents *[custom_data~{LMWaxed:true}] run return run playsound item.honeycomb.wax_on player @a ~ ~ ~ 1 1.6
execute as @n[type=item,distance=..0.5] run data modify entity @s Item.components.minecraft:lore prepend from entity @a[tag=LMLoreAdding,limit=1] SelectedItem.components.minecraft:custom_name
execute if entity @n[type=item,distance=..0.5] run playsound item.book.page_turn player @a ~ ~ ~ 1 0.6
execute if entity @n[type=item,distance=..0.5] run playsound entity.leash_knot.place player @a ~ ~ ~ 1 1.4
execute if entity @n[type=item,distance=..0.5] run return run execute unless entity @s[gamemode=creative] run item modify entity @s weapon.mainhand lorem:decrease
scoreboard players remove @s LMRaycastMax 1
execute positioned ^ ^ ^0.1 unless score @s LMRaycastMax matches ..0 run function lorem:raycast/loretag