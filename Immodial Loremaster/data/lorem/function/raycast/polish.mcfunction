## >> From: lorem:use
## >> At: Player using lore tag
## >> As: Player using lore tag
## >> Does: Add signature to item used on
## >> Input: None
execute if entity @n[type=item,distance=..0.5] run tag @s add LMUsed
execute as @n[type=item,distance=..0.5] if items entity @s contents *[custom_data~{LMWaxed:true}] run playsound entity.player.attack.sweep player @a ~ ~ ~ 1 1.4
execute as @n[type=item,distance=..0.5] if items entity @s contents *[custom_data~{LMWaxed:true}] run return run playsound item.honeycomb.wax_on player @a ~ ~ ~ 1 1.6
execute as @n[type=item,distance=..0.5] run item modify entity @s contents lorem:polish
execute as @n[type=item,distance=..0.5] run data modify entity @s Item.components.minecraft:custom_data.LMWaxed set value true
execute if entity @n[type=item,distance=..0.5] run playsound item.honeycomb.wax_on player @a ~ ~ ~ 1 1.6
execute if entity @n[type=item,distance=..0.5] run playsound block.wool.place player @a ~ ~ ~ 1 0.8
execute if entity @n[type=item,distance=..0.5] run return run execute unless entity @s[gamemode=creative] run item modify entity @s weapon.mainhand lorem:decrease
scoreboard players remove @s LMRaycastMax 1
execute positioned ^ ^ ^0.1 unless score @s LMRaycastMax matches ..0 run function lorem:raycast/polish