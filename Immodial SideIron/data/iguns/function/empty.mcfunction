## >> From: iguns:fire/call
## >> At: None
## >> As: Player firing a gun
## >> Does: Remove bullet
## >> Input: None
# Copy item with new ammo inside
summon item ~ ~ ~ {Tags:["IGGunUpdate"],Item:{id:"minecraft:stone",count:1}}
data modify entity @e[tag=IGGunUpdate,limit=1] Item set from entity @s SelectedItem
data remove entity @e[tag=IGGunUpdate,limit=1] Item.components.minecraft:custom_data.IGAmmo[0]
# If empty now, mark as such
execute unless data entity @e[tag=IGGunUpdate,limit=1] Item.components.minecraft:custom_data.IGAmmo[0] run data modify entity @e[tag=IGGunUpdate,limit=1] Item.components.minecraft:custom_data.IGLoaded set value false
# Update lore and appearance
execute as @e[tag=IGGunUpdate] run function iguns:update with entity @s Item.components.minecraft:custom_data
# Apply and remove update item
item replace entity @s weapon.mainhand from entity @e[tag=IGGunUpdate,limit=1] contents
kill @e[tag=IGGunUpdate]