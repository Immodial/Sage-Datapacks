## >> From: unref:itemeffects
## >> At: Molten iron nuggets being cooled
## >> As: Molten iron nuggets being cooled
## >> Does: Turn into malleable iron
## >> Input: None
execute if entity @s[tag=URRecentlyHeated] run return fail
execute if score @s URSmokeLoop matches 0 run particle campfire_cosy_smoke ~ ~0.2 ~ 0 0 0 0.02 1
execute unless score @s URCoolTime matches 400.. run return fail
playsound minecraft:block.lava.pop block @a ~ ~ ~ 1 0.4
data modify entity @s Item set value {id:"minecraft:iron_ingot",count:1,components:{"minecraft:item_name":"{translate:'item.unrefined.malleable_iron_ingot'}","minecraft:custom_data":{URMalleable:true},"minecraft:item_model":"unref:malleable_iron_ingot","!minecraft:max_stack_size":{},"minecraft:damage_resistant":{"types":"#is_fire"}}}