## >> From: unref:itemeffects
## >> At: Molten iron item being cooled
## >> As: Molten iron item being cooled
## >> Does: Turn into iron nuggets
## >> Input: None
playsound block.fire.extinguish block @a ~ ~ ~ 1 0.2
data modify entity @s Item set value {id:"minecraft:cooked_porkchop",count:5,components:{"minecraft:item_name":"{translate:'item.minecraft.iron_nugget'}","minecraft:custom_data":{URIronNugget:true},"minecraft:item_model":"minecraft:iron_nugget","minecraft:damage_resistant":{"types":"#is_fire"},"!minecraft:food":{},"!minecraft:consumable":{}}}