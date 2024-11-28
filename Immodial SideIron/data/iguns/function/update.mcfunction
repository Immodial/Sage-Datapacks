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
# Modify display data
execute store result score LoadState IGGlobals run data get entity @s Item.components.minecraft:custom_data.IGLoaded 1000
scoreboard players operation Appearance IGGlobals = AmmoCount IGGlobals
scoreboard players operation Appearance IGGlobals += LoadState IGGlobals
execute store result entity @s Item.components.minecraft:custom_model_data.floats[0] float 1 run scoreboard players get Appearance IGGlobals
# Reset scores
scoreboard players reset AmmoCount IGGlobals
scoreboard players reset AmmoMax IGGlobals
scoreboard players reset LoadState IGGlobals
scoreboard players reset Appearance IGGlobals