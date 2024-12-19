## >> From: iguns:use
## >> At: Player readying an un-full gun
## >> As: Player readying an un-full gun
## >> Does: Make gun ready
## >> Input: None
# End if no ammo is loaded
execute unless data entity @s SelectedItem.components.minecraft:custom_data.IGAmmo[0] run return fail
# Copy item which is now readied
summon item ~ ~ ~ {Tags:["IGGunUpdate"],Item:{id:"minecraft:stone",count:1}}
data modify entity @e[tag=IGGunUpdate,limit=1] Item set from entity @s SelectedItem
data modify entity @e[tag=IGGunUpdate,limit=1] Item.components.minecraft:custom_data.IGLoaded set value true
# Update lore and appearance
execute as @e[tag=IGGunUpdate] run function iguns:update with entity @s Item.components.minecraft:custom_data
# Apply and remove update item
item replace entity @s weapon.mainhand from entity @e[tag=IGGunUpdate,limit=1] contents
kill @e[tag=IGGunUpdate]
# Play sound
playsound item.crossbow.loading_end player @a ~ ~ ~ 1 0.4
playsound block.vault.insert_item_fail player @a ~ ~ ~ 1 0.6
# Reset use time and mark as used
scoreboard players set @s IGUseTime 0
tag @s add IGUsed