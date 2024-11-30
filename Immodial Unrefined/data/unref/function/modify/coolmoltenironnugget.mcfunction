## >> From: unref:itemeffects
## >> At: Molten iron nugget item being cooled
## >> As: Molten iron nugget item being cooled
## >> Does: Turn into iron nuggets
## >> Input: None
playsound block.fire.extinguish block @a ~ ~ ~ 1 0.2
data modify entity @s Item.id set value "minecraft:cooked_porkchop"
data modify entity @s Item.components set value {"minecraft:item_name":"{translate:'item.minecraft.iron_nugget'}","minecraft:custom_data":{URIronNugget:true},"minecraft:item_model":"minecraft:iron_nugget","minecraft:damage_resistant":{"types":"#is_fire"},"!minecraft:food":{},"!minecraft:consumable":{}}