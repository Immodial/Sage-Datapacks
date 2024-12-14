## >> From: iguns:use
## >> At: Player unreadying a full gun
## >> As: Player unreadying a full gun
## >> Does: Make gun ready
## >> Input: IGMaxAmmo (int)
# Copy item which is now readied
summon item ~ ~ ~ {Tags:["IGGunUpdate"],Item:{id:"minecraft:stone",count:1}}
data modify entity @e[tag=IGGunUpdate,limit=1] Item set from entity @s SelectedItem
data modify entity @e[tag=IGGunUpdate,limit=1] Item.components.minecraft:custom_data.IGLoaded set value false
# Update lore and appearance
execute as @e[tag=IGGunUpdate] run function iguns:update with entity @s Item.components.minecraft:custom_data
# Apply and remove update item
item replace entity @s weapon.mainhand from entity @e[tag=IGGunUpdate,limit=1] contents
kill @e[tag=IGGunUpdate]
# Play sound
playsound block.vault.insert_item_fail player @a ~ ~ ~ 1 0.3
playsound block.copper_bulb.place player @a ~ ~ ~ 1.8 0.2
# Reset use time and mark as used
scoreboard players set @s IGUseTime 0
tag @s add IGUsed