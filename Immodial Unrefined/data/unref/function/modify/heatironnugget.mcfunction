## >> From: unref:itemeffects
## >> At: Molten iron item being cooled
## >> As: Molten iron item being cooled
## >> Does: Turn into iron nuggets
## >> Input: None
playsound item.bucket.empty_lava player @a ~ ~ ~ 1 2
data modify entity @s Item.components set value {"minecraft:item_name":"{translate:'item.unrefined.molten_iron_nugget'}","minecraft:custom_data":{URMolten:true},"item_model":"unref:molten_iron_nugget","minecraft:max_stack_size":16,"minecraft:damage_resistant":{"types":"#is_fire"}}
data modify entity @s Item.id set value "minecraft:iron_nugget"
tag @s add URRecentlyHeated