## >> From: unref:itemeffects
## >> At: None
## >> As: Player with a refined item that has not been refined
## >> Does: Replace item with unrefined version
## >> Input: None
execute if items entity @s contents raw_iron run data modify entity @s Item.components.minecraft:custom_data set value {URUnsmelted:true}
execute if items entity @s contents iron_nugget run data modify entity @s Item.components set value {"minecraft:item_name":"{translate:'item.minecraft.iron_nugget'}","minecraft:custom_data":{URIronNugget:true},"minecraft:item_model":"minecraft:iron_nugget","minecraft:damage_resistant":{"types":"#is_fire"},"!minecraft:food":{},"!minecraft:consumable":{}}
execute if items entity @s contents iron_nugget run data modify entity @s Item.id set value "minecraft:cooked_porkchop"
execute if items entity @s contents iron_ingot run data modify entity @s Item.components set value {"minecraft:item_name":"{translate:'item.minecraft.iron_ingot'}","minecraft:custom_data":{URIronIngot:true},"minecraft:item_model":"minecraft:iron_ingot","minecraft:max_stack_size":16,"minecraft:damage_resistant":{"types":"#is_fire"},"!minecraft:food":{},"!minecraft:consumable":{}}
execute if items entity @s contents iron_ingot run data modify entity @s Item.id set value "minecraft:cooked_porkchop"