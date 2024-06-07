## >> From: iguns:load, iguns:empty
## >> At: Player firing or loading a gun
## >> As: Gun update item
## >> Does: Update lore and description
## >> Input: None
# Store ammo variables
execute store result score AmmoCount IGGlobals run data get entity @s Item.components.minecraft:custom_data.IGAmmo
execute store result score AmmoMax IGGlobals run data get entity @s Item.components.minecraft:custom_data.IGMaxAmmo
scoreboard players add AmmoMax IGGlobals 1
# Replace lore top line
data remove entity @s Item.components.minecraft:lore[0]
item modify entity @s contents iguns:ammo
# Store extra variables for appearance
execute store result score AppearanceID IGGlobals run data get entity @s Item.components.minecraft:custom_data.IGGunID 10000
execute store result score LoadState IGGlobals run data get entity @s Item.components.minecraft:custom_data.IGLoaded 1000
# Calculate appearance index
scoreboard players operation Appearance IGGlobals = AppearanceID IGGlobals
scoreboard players operation Appearance IGGlobals += LoadState IGGlobals
scoreboard players operation Appearance IGGlobals += AmmoCount IGGlobals
# Apply to item
execute store result entity @s Item.components.minecraft:custom_model_data int 1 run scoreboard players get Appearance IGGlobals
# Reset scores
scoreboard players reset AmmoCount IGGlobals
scoreboard players reset AmmoMax IGGlobals
scoreboard players reset AppearanceID IGGlobals
scoreboard players reset LoadState IGGlobals
scoreboard players reset Appearance IGGlobals