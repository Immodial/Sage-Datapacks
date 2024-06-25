## >> From: unref:itemeffects
## >> At: Molten iron item being cooled
## >> As: Molten iron item being cooled
## >> Does: Turn into iron nuggets
## >> Input: None
playsound item.bucket.empty_lava player @a ~ ~ ~ 1 1.6
summon item ~ ~ ~ {Item:{id:"minecraft:iron_ingot",count:1,components:{"minecraft:item_name":"{translate:'item.unrefined.malleable_iron'}","minecraft:custom_data":{URMalleable:true},"minecraft:custom_model_data":1,"!minecraft:max_stack_size":{},"minecraft:fire_resistant":{}}}}
item modify entity @s contents unref:decrease