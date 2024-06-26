## >> From: lorem:use
## >> At: Player using lore tag
## >> As: Player using lore tag
## >> Does: Add signature to item used on
## >> Input: None
execute if entity @n[type=item,distance=..0.5] run tag @s add LMUsed
execute as @n[type=item,distance=..0.5] if items entity @s contents *[custom_data~{LMSigned:true}|custom_data~{LMWaxed:true}] run playsound ui.cartography_table.take_result player @a ~ ~ ~ 1 1.6
execute as @n[type=item,distance=..0.5] if items entity @s contents *[custom_data~{LMSigned:true}] run return run playsound entity.player.attack.sweep player @a ~ ~ ~ 1 1.4
execute as @n[type=item,distance=..0.5] if items entity @s contents *[custom_data~{LMWaxed:true}] run return run playsound item.honeycomb.wax_on player @a ~ ~ ~ 1 1.6
execute as @n[type=item,distance=..0.5] run item modify entity @s contents lorem:signature
execute as @n[type=item,distance=..0.5] run data modify entity @s Item.components.minecraft:custom_data.LMSigned set value true
execute if entity @n[type=item,distance=..0.5] run playsound ui.cartography_table.take_result player @a ~ ~ ~ 1 1.4
execute if entity @n[type=item,distance=..0.5] run return run playsound ui.cartography_table.take_result player @a ~ ~ ~ 1 1
scoreboard players remove @s LMRaycastMax 1
execute positioned ^ ^ ^0.1 unless score @s LMRaycastMax matches ..0 run function lorem:raycast/signquill