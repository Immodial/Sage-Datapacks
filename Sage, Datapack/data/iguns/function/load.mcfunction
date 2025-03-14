## >> From: iguns:use
## >> At: Player loading a gun
## >> As: Player loading a gun
## >> Does: Add ammo to weapon
## >> Input: IGMaxAmmo (int), IGAmmoType (string)
# End if no ammo is in your offhand or the gun is full
$execute unless items entity @s weapon.offhand *[custom_data~{IGGunAmmo:"$(IGAmmoType)"}] run return run playsound entity.iron_golem.attack player @s ~ ~ ~ 0.3 0.2
$execute if data entity @s SelectedItem.components.minecraft:custom_data.IGAmmo[$(IGMaxAmmo)] run return fail
# Copy item with new ammo inside
summon item ~ ~ ~ {Tags:["IGGunUpdate"],Item:{id:"minecraft:stone",count:1}}
data modify entity @e[tag=IGGunUpdate,limit=1] Item set from entity @s SelectedItem
data modify entity @e[tag=IGGunUpdate,limit=1] Item.components.minecraft:custom_data.IGAmmo append from entity @s equipment.offhand.components.minecraft:custom_data
# If fully loaded now, mark as such
$execute if data entity @e[tag=IGGunUpdate,limit=1] Item.components.minecraft:custom_data.IGAmmo[$(IGMaxAmmo)] run data modify entity @e[tag=IGGunUpdate,limit=1] Item.components.minecraft:custom_data.IGLoaded set value true
# Update lore and appearance
execute as @e[tag=IGGunUpdate] run function iguns:update with entity @s Item.components.minecraft:custom_data
# Apply and remove update item
item replace entity @s weapon.mainhand from entity @e[tag=IGGunUpdate,limit=1] contents
kill @e[tag=IGGunUpdate]
# Decrease ammo count
execute run item modify entity @s[gamemode=!creative] weapon.offhand iguns:decrease
# Play sound
playsound block.stone_button.click_on player @a ~ ~ ~ 0.2 0.2
playsound item.crossbow.loading_end player @a ~ ~ ~ 1 0.4
execute if items entity @s weapon.mainhand *[custom_data~{IGLoaded:true}] run playsound block.vault.insert_item_fail player @a ~ ~ ~ 1 0.4
# Reset use time and mark as used if full now
scoreboard players set @s IGUseTime 0
execute if items entity @s weapon.mainhand *[custom_data~{IGLoaded:true}] run tag @s add IGUsed