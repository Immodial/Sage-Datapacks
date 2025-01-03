## >> From: frostbite:drinking_horn (advancement)
## >> At: Player filling a drinking horn
## >> As: Player filling a drinking horn
## >> Does: Check for water and fill drinking horn
## >> Input: None
# Revoke
advancement revoke @s only frostbite:drinkhorn
# Fail if not sourcing from water
execute anchored eyes if block ^ ^ ^ water_cauldron[level=3] run tag @s add FBWaterCollected
execute anchored eyes if block ^ ^ ^ water_cauldron[level=3] run setblock ^ ^ ^ cauldron
execute anchored eyes if block ^ ^ ^1 water_cauldron[level=3] run tag @s add FBWaterCollected
execute anchored eyes if block ^ ^ ^1 water_cauldron[level=3] run setblock ^ ^ ^1 cauldron
execute anchored eyes if block ^ ^ ^1.5 water_cauldron[level=3] run tag @s add FBWaterCollected
execute anchored eyes if block ^ ^ ^1.5 water_cauldron[level=3] run setblock ^ ^ ^1.5 cauldron
execute anchored eyes if block ^ ^ ^2 water_cauldron[level=3] run tag @s add FBWaterCollected
execute anchored eyes if block ^ ^ ^2 water_cauldron[level=3] run setblock ^ ^ ^2 cauldron
execute unless entity @s[tag=FBWaterCollected] anchored eyes unless block ^ ^ ^ water unless block ^ ^ ^1 water unless block ^ ^ ^1.5 water unless block ^ ^ ^2 water run return fail
tag @s remove FBWaterCollected
# Particles & sound
execute anchored eyes run particle splash ^ ^ ^0.5 0.1 0.1 0.1 3 20 normal @a
execute anchored eyes run playsound entity.player.splash player @a ^ ^ ^0.5 1 1.4
# Replace
execute if items entity @s weapon.mainhand *[custom_data~{FBDrinkHorn:true}] run item replace entity @s weapon.mainhand with \
potion[item_name="[{translate:'item.frostbite.drinking_horn'}]",item_model="frostbite:drinking_horn",potion_contents={custom_name:"drinking_horn"},custom_model_data={floats:[5]},use_remainder=\
{id:"minecraft:potion",components:{"minecraft:item_name":"[{translate:'item.frostbite.drinking_horn'}]","minecraft:potion_contents":{custom_name:"drinking_horn"},"minecraft:item_model":"frostbite:drinking_horn","minecraft:custom_model_data":{floats:[4]},use_remainder:\
{id:"minecraft:potion",components:{"minecraft:item_name":"[{translate:'item.frostbite.drinking_horn'}]","minecraft:potion_contents":{custom_name:"drinking_horn"},"minecraft:item_model":"frostbite:drinking_horn","minecraft:custom_model_data":{floats:[3]},use_remainder:\
{id:"minecraft:potion",components:{"minecraft:item_name":"[{translate:'item.frostbite.drinking_horn'}]","minecraft:potion_contents":{custom_name:"drinking_horn"},"minecraft:item_model":"frostbite:drinking_horn","minecraft:custom_model_data":{floats:[2]},use_remainder:\
{id:"minecraft:potion",components:{"minecraft:item_name":"[{translate:'item.frostbite.drinking_horn'}]","minecraft:potion_contents":{custom_name:"drinking_horn"},"minecraft:item_model":"frostbite:drinking_horn","minecraft:custom_model_data":{floats:[1]},use_remainder:\
{id:"minecraft:cooked_porkchop",components:{"minecraft:item_name":"[{translate:'item.frostbite.drinking_horn'}]","minecraft:item_model":"frostbite:drinking_horn","minecraft:custom_data":{"FBDrinkHorn":true},"minecraft:custom_model_data":{floats:[0]},"minecraft:consumable":{animation:"block",consume_seconds:100000,has_consume_particles:false},"!food":{},"!max_stack_size":{}}}}}}}}}}}]