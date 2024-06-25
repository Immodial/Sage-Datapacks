## >> From: unref:itemeffects
## >> At: None
## >> As: Player with a refined item that has not been refined
## >> Does: Replace item with unrefined version
## >> Input: None
execute if items entity @s contents raw_iron run data modify entity @s Item set value {components:{"minecraft:custom_data":{URUnsmelted:true}}}
execute if items entity @s contents iron_ingot run data modify entity @s Item.components set value {"minecraft:item_name":"{translate:'item.minecraft.iron_ingot'}","minecraft:custom_data":{URIronIngot:true},"minecraft:custom_model_data":1,"minecraft:max_stack_size":16,"minecraft:fire_resistant":{},"!minecraft:food":{}}
execute if items entity @s contents iron_ingot run data modify entity @s Item.id set value "minecraft:cooked_porkchop"