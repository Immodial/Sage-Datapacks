## >> From: unref:itemeffects
## >> At: Molten iron item being cooled
## >> As: Molten iron item being cooled
## >> Does: Turn into iron nuggets
## >> Input: None
playsound block.fire.extinguish block @a ~ ~ ~ 1 0.2
data modify entity @s Item set value {id:"minecraft:cooked_porkchop",count:1,components:{"minecraft:item_name":"{translate:'item.minecraft.iron_ingot'}","minecraft:custom_data":{URIronIngot:true},"minecraft:custom_model_data":1,"minecraft:max_stack_size":16,"minecraft:fire_resistant":{},"!minecraft:food":{}}}